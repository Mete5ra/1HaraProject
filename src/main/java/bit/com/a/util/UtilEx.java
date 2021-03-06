package bit.com.a.util;


import java.sql.Date;
import java.util.List;
import bit.com.a.dto.RecruitDto;

public class UtilEx {


	// 날짜를 클릭하면 그날의 일정을 모두 볼 수 있는 callist.jsp로 이동하는 함수
	public static String callist(int year, int month, int day) {
		String str = "";

		str += String.format("&nbsp;<p>",
										"callist.do", year, month, day);
		str += String.format("%2d", day);
		str += "</p>";

		// <a href='callist.jsp?year=2021&month=3&day=19'>19</a>
		return str;
	}

	// 일정을 추가하기 위해서 pen이미지를 클릭하면 calwrite.jsp로 이동하는 함수
	public static String showPen(int year, int month, int day) {
		String str = "";

		String image = "<img src='image/pen.png' width='18px' height='18px'>";

		str = String.format("<a href='%s?year=%d&month=%d&day=%d'>%s</a>",
				"calwrite.do", year, month, day, image);
		/*
		<a href='calwrite.jsp?year=%d&month=%d&day=%d'>
			<img src='image/pen2.png' width='18px' height='18px'>
		</a>
		*/

		return str;
	}

	// 한문자를 두문자로 변경해 주는 함수	2021 03 19	-> 1 ~ 9 -> 01 ~ 09
	public static String two(String msg) {
		return msg.trim().length()<2?"0"+msg.trim():msg.trim();
	}

	// nvl 함수 : 문자열이 비어 있는지 확인 함수
	public static boolean nvl(String msg) {
		return msg == null || msg.trim().equals("")?true:false;
	}

	// 달력의 날짜 별로 설정할 테이블을 작성하는 함수
	public static String makeTable(int year, int month, int day, List<RecruitDto> list) {
		String str = "";

		// 2021 3 19	-> 20210319
		String dates = (year + "")+ "-" + two(month + "")+ "-" + two(day + "");
			str += "<ul>";
			for(RecruitDto dto : list) {
				if(dto.getJobStart().substring(0, 10).equals(dates)) {
					str += "<li>";
					str += "<a href='RecruitDetail.do?jobseq=" + dto.getJobSeq() + "'>";
					str += "<font style='font-size:12px;color:#3399ff'>";
					str += "[시작]";
					str += "</font>";
					str += "<font style='font-size:12px; color:#666'>";
					str += dot3(dto.getJobTitle());
					str += "</font>";
					str += "</a>";
					str += "</li>";
				}
				else if(dto.getJobEnd().substring(0, 10).equals(dates)) {
					str += "<li>";
					str += "<a href='RecruitDetail.do?jobseq=" + dto.getJobSeq() + "'>";
					str += "<font style='font-size:12px; color:#f3406e'>";
					str += "[마감]";
					str += "</font>";
					str += "<font style='font-size:12px; color:#666'>";
					str += dot3(dto.getJobTitle());
					str += "</font>";
					str += "</a>";
					str += "</li>";
				}
			}
			str += "</ul>";

		return str;
	}


	public static String yyyymm(int year, int month) {
		return "" + year + two(month + "");
	}

	public static String yyyymmdd(int year, int month, int day) {
		return "" + year + "/" + two(month + "") + "/" + two(day + "");
	}

	public static String yyyymmddhhmm(int year, int month, int day, int hour, int min) {
		return yyyymmdd(year, month, day) + two(hour + "") + two(min + "");
	}

	// 일정의 제목이 길 때 ...로 처리하는 함수		CGV에서 데이트 약속 -> CGV에서...
	public static String dot3(String msg) {
		String str = "";
		if(msg.length() >= 7) {
			str = msg.substring(0, 7);
			str += "...";
		}else {
			str = msg.trim();
		}
		return str;
	}


	// 2021-04-26 -> java.sql.Date로 변경
	public static Date toDate(int year, int month, int day) {
		String s = year + "-" + two(month + "") + "-" + two(day + "");
		Date d = Date.valueOf(s);
		return d;
	}


	//  제목이 길 때 ...로 처리하는 함수		CGV에서 데이트 약속 -> CGV에서...
		public static String dot03(String msg) {
			String str = "";
			if(msg.length() >= 20) {
				str = msg.substring(0, 20);
				str += "...";
			}else {
				str = msg.trim();
			}
			return str;
		}

}
