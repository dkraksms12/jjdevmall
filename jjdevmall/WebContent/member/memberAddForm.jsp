<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		
		$('#joinBtn').click(function(){
			
			if($('#memberId').val() == ''){
				
				$('#idHelper').text('아이디를 입력해주세요');
				
			}else if($('#memberPw').val() == ''){
				
				$('#idHelper').text('');
				$('#pwHelper').text('비밀번호를 입력해주세요');
				
			}else if($('#memberName').val() == ''){
				
				$('#idHelper').text('');
				$('#pwHelper').text('');
				$('#nameHelper').text('이름을 입력해주세요.');
				
				
			}else if($('#memberGender:checked').length == 0){
				
				$('#idHelper').text('');
				$('#pwHelper').text('');
				$('#nameHelper').text('');
				$('#genderHelper').text('성별을 체크해주세요.');
				
			}else if($('#memberAge').val() == '' ||isNaN($('#memberAge').val())){
				
				$('#idHelper').text('');
				$('#pwHelper').text('');
				$('#nameHelper').text('');
				$('#genderHelper').text('');
				$('#ageHelper').text('나이를 입력해주세요 숫자만 가능합니다.');
				
			}else if($('#memberAddr').val() == ''){
				
				$('#idHelper').text('');
				$('#pwHelper').text('');
				$('#nameHelper').text('');
				$('#genderHelper').text('');
				$('#ageHelper').text('');
				$('#addrHelper').text('주소를 입력해주세요.');
				
			}else{
				
				$('#idHelper').text('');
				$('#pwHelper').text('');
				$('#nameHelper').text('');
				$('#genderHelper').text('');
				$('#ageHelper').text('');
				$('form').submit();
			}	
			
		});
		
	});
</script>
</head>
<body>
<form action="./memberAction.jsp" method="post">
	<div>
		<label>아이디 : </label>
		<input type="text" name="memberId" id="memberId"/>
		<span id="idHelper"></span>
	</div>
	<div>
		<label>비밀번호 : </label>
		<input type="password" name="memberPw" id="memberPw"/>
		<span id="pwHelper"></span>
	</div>
	<div>
		<label>이름 : </label>
		<input type="text" name="memberName" id="memberName"/>
		<span id="nameHelper"></span>
	</div>
	<div>
		<label>성별 : </label>
		<input type="radio" name="memberGender" id="memberGender" value="남" />남
		<input type="radio" name="memberGender" id="memberGender" value="여" />여
		<span id="genderHelper"></span>
	</div>
	<div>
		<label>나이 : </label>
		<input type="text" name="memberAge" id="memberAge"/>세
		<span id="ageHelper"></span>
	</div>
	<div>
		<label>주소 : </label>
		<input type="text" name="memberAddr" id="memberAddr"/>
		<span id="addrHelper"></span>
	</div>
	<div>
		<input type="button" value="가입" id="joinBtn"/>
	</div>
</form>
</body>
</html>