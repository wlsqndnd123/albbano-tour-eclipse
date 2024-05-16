<%@page import="vo.SpotListVO"%>
<%@page import="dao.SpotManagementDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="http://192.168.10.221/jsp_prj/common/favicon.ico" type="image/x-icon">
<!--부트스트랩 시작-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!--부트스트랩 끝-->
<link rel="stylesheet" href="https://192.168.10.221/jsp_prj/common/css/main.css" type="text/css" media="all" />
<link rel="stylesheet" href="https://192.168.10.221/jsp_prj/common/css/board.css" type="text/css" media="all" />
<!--jQuery CDN 시작-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<!--jQuery CDN 끝-->
<style type="text/css">
	textarea{width: 600px; height: 300px; }
	
</style>
<script type ="text/javascript">
function submitModify(spot_code) {
	var form = document.createElement('form');
	form.method = 'POST';
	form.action = 'modify_spot.jsp';

	var input = document.createElement('input');
	input.type = 'hidden';
	input.name = 'spot_code';
	input.value = spot_code;

	form.appendChild(input);
	document.body.appendChild(form);
	form.submit();
	}
function submitDelete(spot_code) {
	var form = document.createElement('form');
	form.method = 'POST';
	form.action = 'delete_spot.jsp';

	var input = document.createElement('input');
	input.type = 'hidden';
	input.name = 'spot_code';
	input.value = spot_code;

	form.appendChild(input);
	document.body.appendChild(form);
	form.submit();
	}
</script>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String spotcode = request.getParameter("spot_code");
SpotManagementDAO sDAO = SpotManagementDAO.getInstance();
SpotListVO sVO = sDAO.selectSpot(spotcode);
pageContext.setAttribute("sVO", sVO);
%>
<form >
<div id="wrap">
<div id ="left" style="float: left">
<jsp:include page ="design1.jsp"/>
</div>
<div class="_payment-table-container_2hrxu_23"data-testid="paymnet-history-table-container">
	<table style="table-layout: fixed ;width: 100%" data-testid="table"class="_table_2bzgi_1 _fullWidth_2bzgi_5 _payment-table_8ouzs_4"
								aria-live="polite" aria-busy="false">
<thead data-testid="tableHead"class=" _payment-table-head_8ouzs_8">
<tr data-testid="payment-info-row-header"class="_tableRow_1tqkb_4 _table-direction--vertical_1tqkb_10   _payment-info-row-header_8ouzs_29 _payment-table-header-row_2hrxu_38">
<th style="width: 99%;" data-testid="payment-status-column-header"class="_tableCell_1fpie_7 _align--center_1fpie_217 _variant--head--vertical--normal_1fpie_19 _font--pretendard_1fpie_24 _column-status_1lui6_10 _column_1lui6_4"><span
		class="_typography_1uzvq_4 _font--pretendard_1uzvq_9 _type--b3_1uzvq_40 _weight--bold_1uzvq_84 "
		data-testid="typography">관광지 상세
		</span></th>
</tr>
</thead>
<tbody>
<tr data-testid="payment-info-row" class="_tableRow_1tqkb_4 _table-direction--vertical_1tqkb_10   _payment-table-row_8ouzs_17 ">
<td style="text-align: left" data-testid="iamport-merchant-id-column"class="_tableCell_1fpie_7 _align--center_1fpie_217 _variant--body--vertical--normal_1fpie_104 _font--pretendard_1fpie_24 _column-iamport-merchant-id_1lui6_19 _column_1lui6_4"><div class="_container_1aijn_7">
	<span>관광지 코드 :${ sVO.spot_code }</span></div></td></tr>
<tr data-testid="payment-info-row" class="_tableRow_1tqkb_4 _table-direction--vertical_1tqkb_10   _payment-table-row_8ouzs_17 ">
<td  style="text-align: left"  data-testid="iamport-merchant-id-column"class="_tableCell_1fpie_7 _align--center_1fpie_217 _variant--body--vertical--normal_1fpie_104 _font--pretendard_1fpie_24 _column-iamport-merchant-id_1lui6_19 _column_1lui6_4"><div class="_container_1aijn_7">
	<span>관광지 이름 :${ sVO.spot_name }</span></div></td></tr>
<tr data-testid="payment-info-row" class="_tableRow_1tqkb_4 _table-direction--vertical_1tqkb_10   _payment-table-row_8ouzs_17 ">
<td style="text-align: left"  data-testid="iamport-merchant-id-column"class="_tableCell_1fpie_7 _align--center_1fpie_217 _variant--body--vertical--normal_1fpie_104 _font--pretendard_1fpie_24 _column-iamport-merchant-id_1lui6_19 _column_1lui6_4"><div class="_container_1aijn_7">
	<span>관광지 설명: ${ sVO.spot_desc }</span></div></td></tr>
	<td></td>
	<td></td>
	<td>관광지 이미지 :${ sVO.img_name }</td>
	<td>관광지 경도 : ${ sVO.longitude }</td>
	<td>관광지 위도 : ${ sVO.latitude }</td>
	<td>관광지 위치 : ${ sVO.spt_loc }</td>
</tr>
</table>
</div>
</form>
<input type ="button" value ="관광지 수정" onclick="submitModify('${sVO.spot_code}')"/>
<input type ="button" value ="삭제" onclick="submitDelete('${sVO.spot_code}')"/>
</body>
</html>