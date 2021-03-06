package bit.com.a.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import bit.com.a.dto.PdsDto;
import bit.com.a.service.PdsService;
import bit.com.a.util.PdsUtil;


@Controller
public class PdsController {

	@Autowired
	PdsService service;
	
	
	@RequestMapping(value="pdslist.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String getPdsList(Model model) {
		
		List<PdsDto>list = service.getPdsList();
		model.addAttribute("pdslist", list);
		
		return "pds/pdslist";
	}
	
	@RequestMapping(value="pdswrite.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String pdswrite(Model model) {
		
		return "pds/pdswrite";
		
	}
	
	
	
	
	@RequestMapping(value = "pdsupload.do", method = {RequestMethod.GET, RequestMethod.POST})
		public String pdsupload(PdsDto pdsdto, 
								@RequestParam(value = "fileload", required = false) MultipartFile fileload,
								HttpServletRequest req) {
			System.out.println("PdsController pdsupload()");
					
			//filename 취득 
			String filename = fileload.getOriginalFilename();
			pdsdto.setFilename(filename);	//원본 파일명을 설정 
			
			//upload 경로 설정 
			//server(tomcat) 
			String fupload = req.getServletContext().getRealPath("/upload");
			
			
			//폴더에 올리는 법 
			//String fupload = "d:\\tmp";
			
			System.out.println("fupload:"+fupload);
			
			String newfilename = PdsUtil.getNewFileName(pdsdto.getFilename());
			
			pdsdto.setNewfilename(newfilename);
			
			File file = new File(fupload + "/" + newfilename);
			
			try {
				//실제로 업로드 되는 부분  (앞에는 바뀐파일명, 뒤에는 가져온 파일을 바이트로 가져와서 저장할수 있도록함)
				FileUtils.writeByteArrayToFile(file, fileload.getBytes());
				
				//db에 저장 
				service.uploadPds(pdsdto);
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "redirect:/pdslist.do";
		}
	
	
	
	
	
	@RequestMapping(value = "pdsdetail.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String pdsdetail(int seq, Model model) {
		
		service.readcount(seq);
		//dto 
		PdsDto pdsdto = service.getPds(seq);
		model.addAttribute("pds" , pdsdto);
		System.out.println("디테일" + pdsdto.toString());
		return "pds/pdsdetail";
	}
	
	
	@RequestMapping(value = "fileDownload.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String fileDownload(String newfilename, String filename, int seq, HttpServletRequest req, Model model) {
		
		//경로
		String fupload = req.getServletContext().getRealPath("/upload");
		
		File downloadFile = new File(fupload + "/" + newfilename);
		
		model.addAttribute("downloadFile", downloadFile);
		model.addAttribute("originalFile", filename);
		model.addAttribute("seq", seq);
		
		return "downloadView";
		
	}
	
	
	@RequestMapping(value = "pdsupdate.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String pdsupdate(int seq, Model model) {
		
		// dto
		PdsDto pdsdto = service.getPds(seq);
		model.addAttribute("pds", pdsdto);
		
		
		return "pds/pdsupdate";
		
		
	}

	@RequestMapping(value = "pdsupdateAf.do", method= {RequestMethod.GET, RequestMethod.POST})
	public String pdsupdateAf(	PdsDto pdsdto, 
								String filename,	// 기존의 파일 명,
								HttpServletRequest req,
								@RequestParam(value = "fileload", required = false)MultipartFile fileload) {
		
		System.out.println("fileload" + fileload);
		System.out.println(pdsdto.toString());
		pdsdto.setFilename(fileload.getOriginalFilename());
		
		// 파일 경로
		String fupload = req.getServletContext().getRealPath("/upload");
		
		// 수정할 파일이 있음
		if(pdsdto.getFilename() != null && !pdsdto.getFilename().equals("")) {
			System.out.println("성");
			String f = pdsdto.getFilename();
			String newfilename = PdsUtil.getNewFileName(f);
			
			pdsdto.setFilename(f);
			pdsdto.setNewfilename(newfilename);
			
			File file = new File(fupload + "/" + newfilename);			
			System.out.println(newfilename);
			try {
				// 실제 업로드
				FileUtils.writeByteArrayToFile(file, fileload.getBytes());
				
				// db 경신
				service.updatePds(pdsdto);		
				
			} catch (IOException e) {				
				e.printStackTrace();
			}			
		}
		else {	// 수정할 파일 없음
			System.out.println("fall");
			// 기존의 파일명으로 설정
			pdsdto.setFilename(filename);
			
			// DB
			service.updatePds(pdsdto);	
		}
		
		return "redirect:/pdslist.do";
	}
	
	
	@RequestMapping(value = "pdsdelete.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String deletePds(int seq, Model model) {		
		service.deletePbs(seq);
		return "redirect:/pdslist.do";		
	}
	
	
	
	
	
	
	
	
	
	
}
	
	
