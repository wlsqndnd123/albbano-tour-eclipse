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
	.class{align-content: center;}
	
</style>
<script type ="text/javascript">
	$(function(){
	
	});//ready
</script>
</head>
<body>
<div>
<form action ="insertSpot_process.jsp" method="post">
<table class ="table">
<thead>
<tr>
	<th>관광지 추가</th>
</tr>
</thead>
<tbody>
	<tr><td>관광지 코드: <input type="text" name ="spot_code"/></td></tr>
	<tr><td>관광지 이름: <input type="text" name ="spot_name"/></td></tr>
	<tr><td>관광지 설명: <input type="text" name ="spot_desc"/></td></tr>
	<tr><td>관광지 이미지: <input type="text" name ="img_name"/></td></tr>
	<tr><td>관광지 경도: <input type="text" name ="longitude"/></td></tr>
	<tr><td>관광지 위도: <input type="text" name ="latitude"/></td></tr>
	<tr><td>관광지 주소: <input type="text" name ="spt_loc"/></td></tr>
</tbody>
</table>
<input type ="submit" value ="관광지 추가"/>
</form>

</div>
</body>
</html>