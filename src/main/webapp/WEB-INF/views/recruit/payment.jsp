<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="script.jsp" charEncoding="utf-8"/>
<!-- 아임포트 스크립트 -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>


<script type="text/javascript">
IMP.init('imp82184908');

IMP.request_pay({
    pg : 'inicis', // version 1.1.0부터 지원.
    pay_method : 'card',
    merchant_uid : 'merchant_' + new Date().getTime(),
    name : '일하라 프리미엄 회원 결제',
    amount : 100, //판매 가격
    buyer_email : 'iamport@siot.do',
    buyer_name : '${dto.name}',
    buyer_tel : '010-1234-5678',
    buyer_addr : '${dto.comaddress}',
    buyer_postcode : '123-456'
}, function(rsp) {
    if ( rsp.success ) {
        var msg = '결제가 완료되었습니다.';
        msg += '고유ID : ' + rsp.imp_uid;
        msg += '상점 거래ID : ' + rsp.merchant_uid;
        msg += '결제 금액 : ' + rsp.paid_amount;
        msg += '카드 승인번호 : ' + rsp.apply_num;
        console.log(msg);
        alert('결제가 완료되었습니다.')
        location.href = "priMemberAf.do?memberid="+"${dto.memberid}";
    } else {
        var msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
        alert(msg);
        location.href = 'recuruitlist.do';
    }
   
    
   
    
    
});

</script>
</body>
</html>