<%@page import="bit.com.a.dto.BusinessDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>Checkout</title>
<!-- CK-editor -->
<link rel="stylesheet" href="ckeditor5/sample/styles.css">
<script src="ckeditor5/build/ckeditor.js"></script>
<!-- PAGE settings 페이지네이션-->
<link rel="icon" href="https://templates.pingendo.com/assets/Pingendo_favicon.ico">
<!-- CSS dependencies -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
<!-- 외부css파일과 연결 -->
<link rel="stylesheet" href="./css/wireframe.css">

<script src="assets/js/validation.js" style=""></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!-- 전체 공통 스크립트 임포트 -->
 <c:import url="script.jsp" charEncoding="utf-8"/>

<style type="text/css">
/* buscode selected 된거 쌓는곳 */
#selectResult{
	color: red;
}
</style>
</head>


<c:import url="../header2.jsp" charEncoding="utf-8"/> 


<body class="bg">
  <div class="py-2">
    <div class="container">
      <div class="row">
        <div class="text-center col-md-7 mx-auto"> 
          
        </div>
      </div>
    </div>
  </div>
 
 
  <div class="py-1" >
    <div class="container" style="margin-left: auto;margin-right: auto;">
      <div class="row">
        <div class="col-md-12" style="margin-bottom: 20px; border-style: outset;">
        <br>
        <p>프리미엄 회원으로 등록을 원하시면 프리미엄 회원결제를 해주세요. <br>프리미엄 회원이 되시면 우선순위로 공고 최상단에 검색됩니다. <br>회원등록은 마이페이지 좌측 메뉴에서 프리미엄회원 [가입하기] 버튼을 누르시면 됩니다</p>
          <a href="buspage.do?memberid=${login.memberid}" style="color: blue;">마이페이지로 이동(프리미엄 회원 등록하러가기)🏅</a><br><br><br>
          
        </div>
      </div>
    </div>
    <div class="">
      
      
      <div class="container" style="border-style: outset;margin-left: auto;margin-right: auto;padding-bottom: 10px;padding-top: 10px;">
        
          <div class="col-md-12 order-md-1">
            <form class="needs-validation" id="_recruitcrefrm"  method="post">
              <h1 class="" id="_writeFrm1">기본입력사항</h1><br>
              <div class="row">
                <div class="col-md-6 mb-3"> 
                <label for="firstName">회사이름<font style="color: red;">*</font></label>
                  <input type="text" class="form-control" id="" placeholder="회사이름" value="${login.companyname }" required="" readonly="readonly">
                  <div class="invalid-feedback"> Valid first name is required. </div>
                </div>
                <div class="col-md-6 mb-3"> 
                <label for="lastName">회사ID<font style="color: red;">*</font></label>
                  <input type="text" name="companyId" class="form-control" id="_companyId" placeholder="회사ID *" value="${login.memberid }" readonly="readonly" required="">
                  <div class="invalid-feedback"> Valid last name is required. </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-4 mb-3"> 
                <label for="country">고용형태<font style="color: red;">*</font></label> 
          			<select class="custom-select d-block w-100" name="emp_Type">
                    	 <option class="hidden"  selected disabled>고용타입</option>
                    	<option value=1 <c:if test='${dto.education == 1}'>selected="selected" </c:if>> 아르바이트 </option>
                    	<option value=2 <c:if test='${dto.education == 2}'>selected="selected" </c:if>> 계약직 </option>
                    	<option value=3 <c:if test='${dto.education == 3}'>selected="selected" </c:if>> 정규직 </option>
                	</select>
                  <div class="invalid-feedback"> Please select a valid country. </div>
                </div>
                <div class="col-md-4 mb-3"> <label for="state">학력사항<font style="color: red;">*</font></label> 
                	<select class="custom-select d-block w-100" name="education">
                    	<option class="hidden"  selected disabled>학력구분 *</option>
                        <option value="0"
                         <c:if test='${dto.education == 0}'>
                         selected="selected" 
                         </c:if>
                         > 무관 </option>
                        <option value="1"
                        <c:if test='${dto.education == 1}'>
                        selected="selected"
                        </c:if> 
                        > 고졸 </option>
                        <option value="2"
                        <c:if test='${dto.education == 2}'>
                        selected="selected"
                        </c:if> 
                        > 전문대졸 </option>
                        <option value="3"
                        <c:if test='${dto.education == 3}'>
                        selected="selected"
                        </c:if> 
                        > 대졸 </option>
                        <option value="4"
                        <c:if test='${dto.education == 4}'>
                        selected="selected"
                        </c:if> 
                        > 석사 </option>
                        <option value="5"
                        <c:if test='${dto.education == 5}'>
                        selected="selected"
                        </c:if> 
                        > 박사 </option>
                  	</select>
                  <div class="invalid-feedback"> Please provide a valid state. </div>
                </div>
                <div class="col-md-4 mb-3"> <label for="state">경력사항<font style="color: red;">*</font></label> 
                	<select class="custom-select d-block w-100" name="career_Type">
                    	<option class="hidden"  selected disabled>경력구분</option>
                        <option value="100"
                        <c:if test="${dto.career_Type == 100}">selected</c:if>>무관</option>
                        <option value="1"
                        <c:if test="${dto.career_Type == 1}">selected</c:if>>신입</option>
                        <option value="2"
                        <c:if test="${dto.career_Type == 2}">selected</c:if>>1년이하</option>
                        <option value="3"
                        <c:if test="${dto.career_Type == 3}">selected</c:if>>2년이하</option>
                        <option value="4"
                        <c:if test="${dto.career_Type == 4}">selected</c:if>>3년이하</option>
                        <option value="5"
                        <c:if test="${dto.career_Type == 5}">selected</c:if>>4년이하</option>
                        <option value="6"
                        <c:if test="${dto.career_Type == 6}">selected</c:if>>5년이하</option>
                        <option value="6"
                        <c:if test="${dto.career_Type == 7}">selected</c:if>>6년이하</option>
                        <option value="6"
                        <c:if test="${dto.career_Type == 8}">selected</c:if>>7년이하</option>
                        <option value="6"
                        <c:if test="${dto.career_Type == 9}">selected</c:if>>8년이하</option>
                        <option value="6"
                        <c:if test="${dto.career_Type == 10}">selected</c:if>>9년이하</option>
                        <option value="6"
                        <c:if test="${dto.career_Type == 11}">selected</c:if>>10년이하</option>
                      
                  	</select>
                  <div class="invalid-feedback"> Please provide a valid state. </div>
                </div>
              </div>
              <!-- <div class="mb-3"> <label for="address">경력상세</label>
                <input type="text" name="career_Desc" class="form-control"placeholder="경력추가설명 *" >
                <div class="invalid-feedback"> Please enter your shipping address. </div>
              </div> -->
              <div class="row">
                <div class="col-md-6 mb-3"> <label for="country">채용인원<font style="color: red;">*</font></label>
                <input type="number" name="jobVolumn" value="${dto.jobVolumn }" id="_jobVolumn" placeholder="채용인원(숫자로 입력) *" min="0" max="99" class="form-control">
                  <div class="invalid-feedback"> Please select a valid country. </div>
                </div>
                <div class="col-md-6 mb-3"> <label for="zip">급여<font style="color: red;">*</font></label>
                  <input type="number" min="0" max="9999999" value="${dto.salary }" name="salary" class="form-control" id="_jobVolumn" placeholder="급여입력(0은 회사내규, 1은 면접후결정)" required="">
                  <div class="invalid-feedback"> Zip code required. </div>
                </div>
               
               <br><br>
              
              <div class="col-md-6 mb-3"> <label for="address">공고제목<font style="color: red;">*</font></label>
                <input type="text" name="jobTitle" value="${dto.jobTitle }" class="form-control" id="_jobTitle" placeholder="공고제목입력" required="">
                <div class="invalid-feedback"> Please enter your shipping address. </div>
              </div>
              
             
              
              </div>
               <div class="row">
              <div class="col-md-12 mb-12">
	               <p><label for="address">공고상세내역</label></p>
	                   
	                   <c:choose> 
			               <c:when test="${dto.certifyUpdate == 'YES'}">
			                  <div class="editor">${dto.jobContent}</div>                
			               </c:when> 
			              <c:otherwise>
			                 <div class="editor"></div>
			               </c:otherwise> 
			            </c:choose> 
	              	
	              	
	              	<input type="hidden" name="jobContent" id="_jobContent">
	              	<a type="button" href="#_writeFrm2" class="btn btn-primary" style="float: right; color: white;">다음입력</a>              	 
	              
              </div>
              </div>
              <hr class="mb-4">
              
        
        
        
        
        <!-- <div class="container"> -->
        <div class="py-5">
         <div class="container">
			 <h1 class="" id="_writeFrm2">직무분류 및 근무지<font style="color: red;">*</font></h1>
            <div class="row">
               <div class="col-md-12">
				  
				  <c:if test="${dto.certifyUpdate == 'YES'}">
                     <font style="color: red;">직무분류는 꼭 다시 선택해 주세요</font>
                     </c:if>
                     
                        <div class="py-5">
                           <div class="container">
                              <div class="row">
							
                                 <div class="col-md-4">
                                    <div class="form-group wrapper">
                                       <label>대분류</label> <select class="form-control"
                                          id="_buscodeList1" size="5" onfocus='this.size=5;'
                                          onblur='this.size=5;' onchange='this.size=5; this.blur();'>


                                       </select>
                                    </div>

                                 </div>

                                 <div class="col-md-4">
                                    <div class="form-group wrapper">
                                       <label>중분류</label> <select class="form-control"
                                          id="_buscodeList2" size="5" onfocus='this.size=5;'
                                          onblur='this.size=5;' onchange='this.size=5; this.blur();'>


                                       </select>
                                    </div>

                                 </div>

                                 <div class="col-md-4">
                                    <p>소분류</p>
                                    <div id="_buscodeList3"
                                       style="overflow: auto; width: 350px; height: 150px;">

                                    </div>

                                 </div>




                              </div>
                           </div>
                        </div>
                     

							<div class="col-md-12">
								<p id="selectResult">
								  <c:if test="${dto.certifyUpdate == 'YES'}">
								  	기존선택했던 직무분류 : ${dto.busname}<br>
								  </c:if>
								  
									
								</p>
							</div>

							<p>
								<button type="button" class="btn btn-info" id="deleteResult">삭제하기</button>
							</p>

                  
               </div>
            </div>
         </div>
      </div>
			
			<%-- <c:choose> 
          		<c:when test="${dto.certifyUpdate == 'YES'}">
          			<p id="selectResult">
          				<c:forEach var="name" items="${dto.}" varStatus="status">

    						<p>${status.count} : <c:out value="${name}" /></p>

						</c:forEach>

          			</p>       		
          		</c:when> 
        	    <c:otherwise>
          			<p id="selectResult"></p>
          		</c:otherwise> 
          	</c:choose>  --%>
			
			
			
			
			
			
     
        
        <div class="row">
          <div class="col-md-12">
            
              <div class="form-group">
                  	<input type="text" id="sample6_postcode" placeholder="우편번호">
					<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
					<input type="text" name="area1Name" id="sample6_address" placeholder="주소" value="${dto.area1Name } ${dto.area2Name} ${dto.detailAdress1 }"><br>
					<input type="text" name="area2Name" id="sample6_detailAddress" placeholder="상세주소" value="${dto.detailAdress2 }">
					<input type="text" id="sample6_extraAddress" placeholder="참고항목">
			</div>
         	<br>
          	<a type="button" href="#_writeFrm3" class="btn btn-primary" style="float: right; color: white;">다음입력</a>
          </div>
        </div>
        
        <hr class="mb-4">
        
        
        <div class="container">
        <h1 class="mb-3" id="_writeFrm3">담당자정보</h1><br>
    
       
        <div class="row">
          <div class="col-md-6 mb-3"> <label for="cc-name">담당자명<font style="color: red;">*</font></label>
            <input type="text" class="form-control" name="mgName" value="${dto.mgName }" id="_manager" placeholder="담당자명" > <small class="text-muted">Full name as displayed on card</small>
            <div class="invalid-feedback"> Name on card is required </div>
          </div>
          <div class="col-md-6 mb-3"> <label for="cc-number">전화번호<font style="color: red;">*</font></label>
            <input type="text" class="form-control" name="mgPhone" value="${dto.mgPhone }" id="_managerPhone" placeholder="담당자연락처" >
            <div class="invalid-feedback"> Credit card number is required </div>
          </div>
        </div>
        
        <div class="row">
          <div class="col-md-12">
            <div class="mb-3"> <label for="email">이메일<font style="color: red;">*</font>&nbsp;<span class="text-muted">(Optional)</span></label>
              <input type="email" class="form-control" name="mgEmail" value="${dto.mgEmail }" id="_managerEmail" placeholder="you@example.com">
              <div class="invalid-feedback"> Please enter a valid email address for shipping updates. </div>
            </div>
          </div>
        </div>
        
        <div class="row">
          <div class="col-md-3 mb-3"> <label for="cc-expiration">공고시작일<font style="color: red;">*</font></label>
            <input type="datetime-local" value="${dto.jobStart }" name="jobStart" class="form-control" id="_jobStart" placeholder="공고시작일" required="">
            <div class="invalid-feedback"> Expiration date required </div>
          </div>
          <div class="col-md-3 mb-3"> <label for="cc-expiration">공고종료일<font style="color: red;">*</font></label>
            <input type="datetime-local" value="${dto.jobEnd }" name="jobEnd" class="form-control" id="_jobEnd" placeholder="공고종료일" required="">
            <div class="invalid-feedback"> Security code required </div>
          </div>
        </div>
        
        
        
        
        
        <!-- 채용공고 수정일경우 : 수정일경우엔 jobSeq가 히든 태그로 존재함 and 버튼이 수정하기 버튼  --> 
        <!-- 작성하기 일경우 : jobSeq 존재안함  -->
        <div class="row">
         	<c:choose> 
          		<c:when test="${dto.certifyUpdate == 'YES'}">
          			<br>
          			<div class="col-md-12"><a class="btn btn-primary" id="submit" href="javascript:jobUpdate();">수정하기</a></div>
          			<input type="hidden" value="${dto.jobSeq }" id="_jobSeq" name="jobSeq">          		
          		</c:when> 
        	    <c:otherwise>
        	    	<br>
          			<div class="col-md-12"><a class="btn btn-primary" id="submit" href="javascript:jobRegi();" style="color: white">작성하기</a></div>
          		</c:otherwise> 
          	</c:choose> 
          	
        </div>
      </form>
       
       
        <hr class="mb-4">
      
      </div>
    </div>
        
      
    
    <div class="py-5 text-muted text-center">
      
        <div class="row">
          <div class="col-md-12 my-4">
            <div class="col-md-12 text-center d-md-flex align-items-center"> 
            <img class="d-block fa fa-stop-circle fa-2x text-primary" src="./image/logo3.png"></img>
              <ul class="nav mx-md-auto d-flex justify-content-center">
                <li class="nav-item"> <a class="nav-link active" href="#">Home</a> </li>
                <li class="nav-item"> <a class="nav-link" href="#">Features</a> </li>
                <li class="nav-item"> <a class="nav-link" href="#">Pricing</a> </li>
                <li class="nav-item"> <a class="nav-link" href="#">About</a> </li>
              </ul>
              <div class="row">
                <div class="col-md-12 d-flex align-items-center justify-content-md-between justify-content-center my-2"> <a href="#">
                    <i class="d-block fa fa-facebook-official text-muted fa-lg mx-2"></i>
                  </a> <a href="#">
                    <i class="d-block fa fa-instagram text-muted fa-lg mx-2"></i>
                  </a> <a href="#">
                    <i class="d-block fa fa-twitter text-muted fa-lg ml-2"></i>
                  </a> </div>
              </div>
            </div>
            <p class="mb-1" contenteditable="true">© 2021 1hara Corp.</p>
            <ul class="list-inline">
              <li class="list-inline-item">
                <a href="#">Privacy</a>
              </li>
              <li class="list-inline-item">
                <a href="#">Terms</a>
              </li>
              <li class="list-inline-item">
                <a href="#">Support</a>
              </li>
            </ul>
          </div>
        </div>
    
    
    </div>

  </div>
  <!-- <pingendo onclick="window.open('https://pingendo.com/', '_blank')" style="cursor:pointer;position: fixed;bottom: 20px;right:20px;padding:4px;background-color: #00b0eb;border-radius: 8px; width:220px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white">Made with Pingendo Free&nbsp;&nbsp;<img src="https://pingendo.com/site-assets/Pingendo_logo_big.png" class="d-block" alt="Pingendo logo" height="16"></pingendo> -->

<script type="text/javascript">




function jobRegi() {
	 
    var busValue = $("input[name='buscode']").length;
    var busData = new Array(busValue);
    
    for(var i=0; i<busValue; i++){                          
       busData[i] = $("input[name='buscode']")[i].value;
    }
    
 
    if($("input[name = companyId]").val()== ""){
        alert('회사ID 입력창이 비어있습니다');
        $("input[name = companyId]").focus();
        return false;
     }else if($("input[name = emp_Type]").val()== ""){
  	   alert('고용타입을 선택해주세요');
        $("input[name = emp_Type]").focus();
        return false;
     }else if($("input[name = education]").val()== ""){
  	   alert('학력사항을 선택해주세요');
  	      $("input[name = education]").focus();
  	      return false;
     }else if($("input[name = career_Type]").val()== ""){
  	   alert('경력사항을 선택해주세요');
  	      $("input[name = career_Type]").focus();
  	      return false;
     }else if($("input[name = jobVolumn]").val()== ""){
  	   alert('채용인원수를 입력해주세요');
  	      $("input[name = jobVolumn]").focus();
  	      return false;
     }else if($("input[name = salary]").val()== ""){
  	   alert('급여를 입력해주세요');
  	      $("input[name = salary]").focus();
  	      return false;
     }else if($("input[name = jobTitle]").val()== ""){
  	   alert('공고제목을 입력해주세요');
  	      $("input[name = jobTitle]").focus();
  	      return false;
     }else if($("input[name = buscode]").val()== ""){
  	   alert('직무를 선택해주세요');
  	      $("#_buscodeList1").focus();
  	      return false;
     }else if($("input[name = area1Name]").val()== ""){
  	   alert('주소를 입력해주세요');
  	      $("input[name = area1Name]").focus();
  	      return false;
     }else if($("input[name = area2Name]").val()== ""){
  	   alert('상세주소를 입력해주세요');
  	      $("input[name = area2Name]").focus();
  	      return false;
     }else if($("input[name = mgName]").val()== ""){
  	   alert('담당자명을 입력해주세요');
  	      $("input[name = mgName]").focus();
  	      return false;
     }else if($("input[name = mgPhone]").val()== ""){
  	   alert('담당자연락처를 입력해주세요');
  	      $("input[name = mgPhone]").focus();
  	      return false;
     }else if($("input[name = mgEmail]").val()== ""){
  	   alert('담당자 이메일을 입력해주세요');
  	      $("input[name = mgEmail]").focus();
  	      return false;
     }else if($("input[name = jobStart]").val()== ""){
  	   alert('공고 시작일을 입력해주세요');
  	      $("input[name = jobStart]").focus();
  	      return false;
     }else if($("input[name = jobEnd]").val()== ""){
  	   alert('공고 종료일을 입력해주세요');
  	      $("input[name = jobEnd]").focus();
  	      return false;
     }else{
    	 $("#_recruitcrefrm").attr("action", "recuruitcreateAf.do").submit();
     }
   
    
    

    
}

function jobUpdate() {
   //alert($("#_jobSeq").val());
   
   //alert("변경시작");
   var areaname = $("#sample6_address").val();
   
   areaname = areaname.split(" ");
   
   //alert(areaname);
   //Area1Name쪽 변경된 데이터 변경 (자바쪽에서 nbsp split이 어려워서 nbsp를 ,로 변경)
   $("#sample6_address").val(areaname);
   
   //alert($("#_areaName").val());
   
   if($("input[name = companyId]").val()== ""){
	      alert('회사ID 입력창이 비어있습니다');
	      $("input[name = companyId]").focus();
	      return false;
	   }else if($("input[name = emp_Type]").val()== ""){
		   alert('고용타입을 선택해주세요');
	      $("input[name = emp_Type]").focus();
	      return false;
	   }else if($("input[name = education]").val()== ""){
		   alert('학력사항을 선택해주세요');
		      $("input[name = education]").focus();
		      return false;
	   }else if($("input[name = career_Type]").val()== ""){
		   alert('경력사항을 선택해주세요');
		      $("input[name = career_Type]").focus();
		      return false;
	   }else if($("input[name = jobVolumn]").val()== ""){
		   alert('채용인원수를 입력해주세요');
		      $("input[name = jobVolumn]").focus();
		      return false;
	   }else if($("input[name = salary]").val()== ""){
		   alert('급여를 입력해주세요');
		      $("input[name = salary]").focus();
		      return false;
	   }else if($("input[name = jobTitle]").val()== ""){
		   alert('공고제목을 입력해주세요');
		      $("input[name = jobTitle]").focus();
		      return false;
	   }else if($("input[name = buscode]").val()== ""){
		   alert('직무를 선택해주세요');
		      $("#_buscodeList1").focus();
		      return false;
	   }else if($("input[name = area1Name]").val()== ""){
		   alert('주소를 입력해주세요');
		      $("input[name = area1Name]").focus();
		      return false;
	   }else if($("input[name = area2Name]").val()== ""){
		   alert('상세주소를 입력해주세요');
		      $("input[name = area2Name]").focus();
		      return false;
	   }else if($("input[name = mgName]").val()== ""){
		   alert('담당자명을 입력해주세요');
		      $("input[name = mgName]").focus();
		      return false;
	   }else if($("input[name = mgPhone]").val()== ""){
		   alert('담당자연락처를 입력해주세요');
		      $("input[name = mgPhone]").focus();
		      return false;
	   }else if($("input[name = mgEmail]").val()== ""){
		   alert('담당자 이메일을 입력해주세요');
		      $("input[name = mgEmail]").focus();
		      return false;
	   }else if($("input[name = jobStart]").val()== ""){
		   alert('공고 시작일을 입력해주세요');
		      $("input[name = jobStart]").focus();
		      return false;
	   }else if($("input[name = jobEnd]").val()== ""){
		   alert('공고 종료일을 입력해주세요');
		      $("input[name = jobEnd]").focus();
		      return false;
	   }else{
		   $("#_recruitcrefrm").attr("action", "recuruitupdateAf.do").submit();
	   }

   
}
 
 


$(".btnRegister").click(function(){


});


/* 유효성검사 */
function formChk(select) {
   
   var check = document.frm;
   //alert(select);

   
   if($("input[name = companyId]").val()== ""){
      alert('회사ID 입력창이 비어있습니다');
      $("input[name = companyId]").focus();
      return false;
   }else if($("input[name = emp_Type]").val()== ""){
	   alert('고용타입을 선택해주세요');
      $("input[name = emp_Type]").focus();
      return false;
   }else if($("input[name = education]").val()== ""){
	   alert('학력사항을 선택해주세요');
	      $("input[name = education]").focus();
	      return false;
   }else if($("input[name = career_Type]").val()== ""){
	   alert('경력사항을 선택해주세요');
	      $("input[name = career_Type]").focus();
	      return false;
   }else if($("input[name = jobVolumn]").val()== ""){
	   alert('채용인원수를 입력해주세요');
	      $("input[name = jobVolumn]").focus();
	      return false;
   }else if($("input[name = salary]").val()== ""){
	   alert('급여를 입력해주세요');
	      $("input[name = salary]").focus();
	      return false;
   }else if($("input[name = jobTitle]").val()== ""){
	   alert('공고제목을 입력해주세요');
	      $("input[name = jobTitle]").focus();
	      return false;
   }else if($("input[name = buscode]").val()== ""){
	   alert('직무를 선택해주세요');
	      $("#_buscodeList1").focus();
	      return false;
   }else if($("input[name = area1Name]").val()== ""){
	   alert('주소를 입력해주세요');
	      $("input[name = area1Name]").focus();
	      return false;
   }else if($("input[name = area2Name]").val()== ""){
	   alert('상세주소를 입력해주세요');
	      $("input[name = area2Name]").focus();
	      return false;
   }else if($("input[name = mgName]").val()== ""){
	   alert('담당자명을 입력해주세요');
	      $("input[name = mgName]").focus();
	      return false;
   }else if($("input[name = mgPhone]").val()== ""){
	   alert('담당자연락처를 입력해주세요');
	      $("input[name = mgPhone]").focus();
	      return false;
   }else if($("input[name = mgEmail]").val()== ""){
	   alert('담당자 이메일을 입력해주세요');
	      $("input[name = mgEmail]").focus();
	      return false;
   }else if($("input[name = jobStart]").val()== ""){
	   alert('공고 시작일을 입력해주세요');
	      $("input[name = jobStart]").focus();
	      return false;
   }else if($("input[name = jobEnd]").val()== ""){
	   alert('공고 종료일을 입력해주세요');
	      $("input[name = jobEnd]").focus();
	      return false;
   }else{
	   
	/* 유효성검사 모두 확인후 서브및 실행 */
	/* if(select == 'create'){
		$("#_recruitcrefrm").attr("action", "recuruitcreateAf.do").submit();
	}
	else if(select == 'update'){
		$("#_recruitcrefrm").attr("action", "recuruitupdateAf.do").submit();
		
	}

 */	
	   
   }
   
}






function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}


</script>








<script type="text/javascript">


//첫번째 BUSCODE1 DATA를 받아서 체크박스로 뿌려주는 코드
$(document).ready(function() {


$.ajax({
   url : "./buscodeListData.do",
   type : "get",
   success:function(list){
      //alert('success');
      //alert(list);

      //JSTL로 받아온 지역 정보의 대분류 네임이 서울이면 (일단 자바스크립트 변수로 변경) selected 조건을 줌
      var area1Name = '<c:out value="${dto.area1Name}"/>';

      $(".list_col1").remove();

      $.each(list, function(i, val){

         //alert(val.jobSeq);

         //let app = "<input type='checkbox' class='list_col' name='buscode' value='"+val.buscode1+"' class='form-control'>"+val.buscodename1
         let app = "<option value='"+val.buscode1+"'class='list_col1' name='buscode1' id='buscode1'>"+
                 val.buscodename1+
                 "</option>";

         $("#_buscodeList1").append(app);
      });
   },
   error:function(){
      alert('error');
   }

 }); // ajax

}); // document ready


//두번째 BUSCODE2 DATA를 받아서 체크박스로 뿌려주는 코드
$(document).on("change","#_buscodeList1", function(){

   //alert('변경');
   //alert( $(this).prop("selected"));

    let buscode = $(this).find(":selected").val();
     //alert(buscode);


        //alert("체크");
        //alert($(this).val());


        $.ajax({
           url : "./buscode2ListData.do",
           type : "get",
           data: {"buscode":buscode},
           success:function(list){
              //alert('success');
              //alert(list);

              $(".list_col2").remove();



              $.each(list, function(i, val){
                     let app = "<option class='list_col2' id='buscode2' name='buscode2' value='"+val.buscode2+"'>"+
                              val.buscodename2+
                                "</option>";

                  $("#_buscodeList2").append(app);
              });
           },
           error:function(){
              alert('error');
           }

         });



    });
    /* else if($(this).is(":checked")==false){
        alert("체크 해제");
    } */




let count = 1;
//마지막 BUSCODE3 DATA를 받아서 체크박스로 뿌려주는 코드
$(document).on("change","#_buscodeList2", function(){


      //alert("체크");
        //alert($(this).val());

        let buscode = $(this).find(":selected").val();
        //alert(buscode);

        $.ajax({
           url : "./buscode2ListData.do",
           type : "get",
           data: {"buscode":buscode},
           success:function(list){
              //alert('success');
              //alert(list);


              //$("_buscodeList3 *").remove(); //내부 요소만 삭제

              $(".list_col3").remove();

              var parent = document.getElementById('_buscodeList3');
              var var1   = parent.getElementsByTagName('br');

              for(var i = var1.length; i--;) {
                  var1[i].parentNode.removeChild(var1[i]);
              }



              //기존에 체크 되어있던 값은 체크가 되어있도록 속성 설정해주는 코드 초기셋팅
              var stackValue = $("input[name='buscode']").length;
             var stackData = new Array(stackValue);
              //alert(stackValue);

              for(var i=0; i<stackValue; i++){
                 stackData[i] = $("input[name='buscode']")[i].value;
              }
              //alert("길이"+stackData.length);


              $.each(list, function(i, val){
                 let app = "";

                 //stackname = 밑에태그 아이디.val (elements) 배열로 해야될듯

                    app +=    "<div class='form-check mt-2 form-check-inline list_col3' id='buscodeList3'>"+
                     "<input class='form-check-input list_col3' name="+count+" id='buscode3data"+count+"' value='"+val.buscode+"' data-value='"+val.busname+"' type='checkbox'>"+
                     "<label class='form-check-label' for='exampleCheck1'>"+val.busname+
                     "</label></div>";

                     if((i+1)%2==0){
                       app += "</br>";
                    }

            $("#_buscodeList3").append(app);


            //기존에 체크 되어있던 값은 체크가 되어있도록 속성 설정해주는 코드 최종진행
            var buscodeTag ="buscode3data"+count;

            for(var i=0; i<stackValue; i++){
                if(stackData[i] == val.buscode){
                   document.getElementById(buscodeTag).checked = true;
                }
              }



            count+=1;

              });



           },
           error:function(){
              alert('error');
           }

         });

    /* else if($(this).is(":checked")==false){
        alert("체크 해제");
    } */

});





//span Tag에 동적 id를 주기 위한 인덱스용 넘버
let cnt = 1;

var selectedBuscode = "";

//소분류 체크박스가 변경될때 실행
$(document).on("change", ".list_col3" , function(){
   //$(".list_col3").change(function(){


   let app ="";



      //if($("input:checkbox['.list_col3']").is(":checked") == true){
      //if($(this).is(":checked") == true){
      if($(this).is(":checked") == true){

      let buscode = $(this).val();
      var count = $(this).attr('name');

      //데이터 밸류 값으로 busname값을 받아옴
      let busname = $(this).data("value");
      //alert("버스네임(데이터밸류네임):"+busname);
      //alert(buscode);

      app = "<span class=arrBusdata id=selectedBuscode"+cnt+">"+busname+
           "<input name='buscode' type='hidden' value='"+buscode+"'>"+
           "<a onclick='delSelBuscode("+cnt+","+count+")'>"+
           "<img alt='왜안뜨지' src='ma.jpg' style='width:30px; height:30px;'>"+
           "</a>"+"</span>"+"&nbsp;&nbsp;";


        var id = $(this).attr("id");
      //alert(id);
      let input = document.getElementById(id);

      $(this).removeData('code');

       //HTML data 속성 사용
      input.dataset.code = 'selectedBuscode'+cnt;

      //alert('datacode 생성: '+'selectedBuscode'+cnt);

      //alert('datacode 리얼: ' + $(this).data("code"));

      $("#selectResult").append(app);
      cnt += 1;

   }


   //체크박스에서 체크 해제 했을때
   //체크박스 해제가 될때 밑에 부분에 적재되있는 같은 데이터의 span태그도 삭제
   //else{
   else if($(this).is(":checked") == false){
      //alert("위에 셀렉코드 : "+$(this).data("code"));
      //data 속성 가져오기 (data-code)
      selectedBuscode = $(this).data("code");
      //alert('위에 셀렉코드 :'+ selectedBuscode);

      document.getElementById(selectedBuscode).remove();
   }


});


//밑에 쌓여있는 span태그에서 X버튼을 눌렀을때 위에 체크박스도 같이 체크 해제가 되도록 해주는 코드
function delSelBuscode(cnt, count) {
   //alert(count);

   var spanid = "selectedBuscode"+cnt;
   //alert('밑에셀렉코드 :'+spanid);

   var buscodeTag ="buscode3data"+count;
   //alert(buscodeTag);

   const spantag = document.getElementById(spanid);
   //alert(spantag);

   //스판태그 삭제
   document.getElementById(spanid).remove();

   //체크박스 체크해제
   document.getElementById(buscodeTag).checked = false;


}



$("#deleteResult").click(function() {
	//alert('선택함');
	$(".arrBusdata").remove();
	$( ".list_col3" ).prop("checked", false);
	
});




	var busname = '${dto.busname}';
	var busnameArr = busname.split(',');
	
	//alert(busnameArr[0]);
	cnt = 1; 
	count = 1; 
	
	
	for(var i=0; i<busnameArr; i++){
		let app = "<span class=arrBusdata id=selectedBuscode"+cnt+">"+busnameArr[i]+
        "<input name='buscode' type='hidden' value='"+buscode+"'>"+
        "<a onclick='delSelBuscode("+cnt+","+count+")'>"+
        "<img alt='왜안뜨지' src='ma.jpg' style='width:30px; height:30px;'>"+
        "</a>"+"</span>"+"&nbsp;&nbsp;";
        
        $("#selectResult").append(app);
        cnt += 1 ;
        count += 1;
	}




var busValue = $("input[name='buscode']").length;
var busData = new Array(busValue);

for(var i=0; i<busValue; i++){                          
	busData[i] = $("input[name='buscode']")[i].value;
}








</script>
  
  
  <script>BalloonEditor
	.create( document.querySelector( '.editor' ), {
		
		toolbar: {
			items: [
				'heading',
				'|',
				'bold',
				'italic',
				'link',
				'bulletedList',
				'numberedList',
				'|',
				'outdent',
				'indent',
				'|',
				'imageUpload',
				'blockQuote',
				'insertTable',
				'fontColor',
				'fontSize',
				'fontBackgroundColor',
				'fontFamily',
				'highlight',
				'imageInsert',
				'mediaEmbed',
				'undo',
				'redo'
			]
		},
		language: 'ko',
		image: {
			toolbar: [
				'imageTextAlternative',
				'imageStyle:full',
				'imageStyle:side',
				'linkImage'
			]
		},
		table: {
			contentToolbar: [
				'tableColumn',
				'tableRow',
				'mergeTableCells'
			]
		},
		licenseKey: '',
		
		
	} )
	.then( editor => {
		window.editor = editor;
		
		//읽기전용으로 셋팅 (디테일페이지에서 사용)
		//editor.isReadOnly = true;
		
		var readyForm = "";
		
		if(${dto.jobContent == null}){
			readyForm += "<div class='ck-blurred editor ck ck-content ck-editor__editable ck-rounded-corners ck-editor__editable_inline ck-read-only' lang='ko' dir='ltr' role='textbox' aria-label='리치 텍스트 편집기, main' contenteditable='false'><p>여기를 클릭하셔서 내부에 내용을 입력해주세요<li>모집부문</li>"+ 
			"</p><figure class='table ck-widget ck-widget_with-selection-handle' contenteditable='false'><div class='ck ck-widget__selection-handle'><svg class='ck ck-icon' viewBox='0 0 16 16'><path d='M4 0v1H1v3H0V.5A.5.5 0 0 1 .5 0H4zm8 0h3.5a.5.5 0 0 1 .5.5V4h-1V1h-3V0zM4 16H.5a.5.5 0 0 1-.5-.5V12h1v3h3v1zm8 0v-1h3v-3h1v3.5a.5.5 0 0 1-.5.5H12z'></path><path fill-opacity='.256' d='M1 1h14v14H1z'></path><g class='ck-icon__selected-indicator'><path d='M7 0h2v1H7V0zM0 7h1v2H0V7zm15 0h1v2h-1V7zm-8 8h2v1H7v-1z'></path><path fill-opacity='.254' d='M1 1h14v14H1z'></path></g></svg></div><table><tbody><tr><td class='ck-editor__editable ck-editor__nested-editable' contenteditable='false'><span style='display:inline-block;'><strong>모집부문</strong></span></td><td class='ck-editor__editable ck-editor__nested-editable' contenteditable='false'><span style='display:inline-block;'><strong>담당업무</strong></span></td><td class='ck-editor__editable ck-editor__nested-editable' contenteditable='false'><span style='display:inline-block;'><strong>자격요건</strong></span></td><td class='ck-editor__editable ck-editor__nested-editable' contenteditable='false'><span style='display:inline-block;'><strong>인원</strong></span></td></tr><tr><td class='ck-editor__editable ck-editor__nested-editable' contenteditable='false'><span style='display:inline-block;'><strong>업무</strong></span></td><td class='ck-editor__editable ck-editor__nested-editable' contenteditable='false'><ul><li><span style='background-color:rgb(255,255,255);color:rgb(34,34,34);'></span></li><li><span style='background-color:rgb(255,255,255);color:rgb(34,34,34);'></span></li></ul></td><td class='ck-editor__editable ck-editor__nested-editable' contenteditable='false'><ul><li><span style='background-color:rgb(255,255,255);color:rgb(34,34,34);'>학력 : </span></li><li><span style='background-color:rgb(255,255,255);color:rgb(34,34,34);'>나이/성별 : </span></li><li><span style='background-color:rgb(255,255,255);color:rgb(34,34,34);'>경력 : </span></li></ul></td><td class='ck-editor__editable ck-editor__nested-editable' contenteditable='false'><p><br data-cke-filler='true'></p><p><span style='background-color:rgb(255,255,255);color:rgb(34,34,34);'>0명</span></p></td></tr></tbody></table><div class='ck ck-reset_all ck-widget__type-around'><div class='ck ck-widget__type-around__button ck-widget__type-around__button_before' title='Insert paragraph before block'><svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 10 8'><path d='M9.055.263v3.972h-6.77M1 4.216l2-2.038m-2 2 2 2.038'></path></svg></div><div class='ck ck-widget__type-around__button ck-widget__type-around__button_after' title='Insert paragraph after block'><svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 10 8'><path d='M9.055.263v3.972h-6.77M1 4.216l2-2.038m-2 2 2 2.038'></path></svg></div><div class='ck ck-widget__type-around__fake-caret'></div></div></figure><ul><li>근무조건<br>ㆍ근무형태 : <br>ㆍ근무일시 : <br>ㆍ급여 : <br>ㆍ근무지역 : <br>ㆍ인근전철 : <br><br data-cke-filler='true'></li><li>복리후생&nbsp;<br>ㆍ급여제도 : <br>ㆍ선물 : <br>ㆍ교육/생활 : <br><br data-cke-filler='true'></li><li>전형절차<br><br data-cke-filler='true'></li></ul><figure class='image ck-widget ck-widget_with-resizer' contenteditable='false'><img src='https://www.saraminimage.co.kr/recruit/bbs_recruit4/d8_s_210512_03.png' alt='전형절차'><div class='ck ck-reset_all ck-widget__type-around'><div class='ck ck-widget__type-around__button ck-widget__type-around__button_before' title='Insert paragraph before block'><svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 10 8'><path d='M9.055.263v3.972h-6.77M1 4.216l2-2.038m-2 2 2 2.038'></path></svg></div><div class='ck ck-widget__type-around__button ck-widget__type-around__button_after' title='Insert paragraph after block'><svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 10 8'><path d='M9.055.263v3.972h-6.77M1 4.216l2-2.038m-2 2 2 2.038'></path></svg></div><div class='ck ck-widget__type-around__fake-caret'></div></div><figcaption class='ck-editor__editable ck-editor__nested-editable ck-hidden ck-placeholder' data-placeholder='사진 설명을 입력하세요' contenteditable='false'><br data-cke-filler='true'></figcaption><div class='ck ck-reset_all ck-widget__resizer' style='display: none;'><div class='ck-widget__resizer__handle ck-widget__resizer__handle-top-left'></div><div class='ck-widget__resizer__handle ck-widget__resizer__handle-top-right'></div><div class='ck-widget__resizer__handle ck-widget__resizer__handle-bottom-right'></div><div class='ck-widget__resizer__handle ck-widget__resizer__handle-bottom-left'></div><div class='ck ck-size-view' style='display: none;'></div></div></figure><ul><li>제출서류<br>ㆍ자기소개서<br><br data-cke-filler='true'></li><li>지원서 접수<br>ㆍ접수기간 : <strong> 년 월 일 시 마감</strong><br>ㆍ접수방법 : <strong>일하라 입사지원</strong><br><br data-cke-filler='true'></li><li>문의사항<br>ㆍ담당자 : <br>ㆍ연락처 : <br><br data-cke-filler='true'></li><li>기타사항<br>ㆍ입사지원 서류에 허위사실이 발견될 경우, 채용확정 이후라도 채용이 취소될 수 있습니다.</li></ul></div>";
			
			editor.setData(readyForm);
		}
	
		
	
		
		
		
		
		
		
	} )
	.catch( error => {
		console.error( 'Oops, something went wrong!' );
		console.error( 'Please, report the following error on https://github.com/ckeditor/ckeditor5/issues with the build id and the error stack trace:' );
		console.warn( 'Build id: x1h6xk4rd95i-65gjhojljtvk' );
		console.error( error );
	} );
  
  
//내부 데이터를 겟하는 코드 
  //Assuming there is a <button id="submit">Submit</button> in your application.
    document.querySelector( '#submit' ).addEventListener( 'click', () => {
    	const editorData = editor.getData();
  		//alert("이게 에디터 데이터 : "+editorData);
	    $("#_jobContent").val(editorData);
    } );
  
  
	</script>
  

  
  
  
</body>

</html>