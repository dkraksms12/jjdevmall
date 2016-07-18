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
				
				$('#idHelper').text('���̵� �Է����ּ���');
				
			}else if($('#memberPw').val() == ''){
				
				$('#idHelper').text('');
				$('#pwHelper').text('��й�ȣ�� �Է����ּ���');
				
			}else if($('#memberName').val() == ''){
				
				$('#idHelper').text('');
				$('#pwHelper').text('');
				$('#nameHelper').text('�̸��� �Է����ּ���.');
				
				
			}else if($('#memberGender:checked').length == 0){
				
				$('#idHelper').text('');
				$('#pwHelper').text('');
				$('#nameHelper').text('');
				$('#genderHelper').text('������ üũ���ּ���.');
				
			}else if($('#memberAge').val() == '' ||isNaN($('#memberAge').val())){
				
				$('#idHelper').text('');
				$('#pwHelper').text('');
				$('#nameHelper').text('');
				$('#genderHelper').text('');
				$('#ageHelper').text('���̸� �Է����ּ��� ���ڸ� �����մϴ�.');
				
			}else if($('#memberAddr').val() == ''){
				
				$('#idHelper').text('');
				$('#pwHelper').text('');
				$('#nameHelper').text('');
				$('#genderHelper').text('');
				$('#ageHelper').text('');
				$('#addrHelper').text('�ּҸ� �Է����ּ���.');
				
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
		<label>���̵� : </label>
		<input type="text" name="memberId" id="memberId"/>
		<span id="idHelper"></span>
	</div>
	<div>
		<label>��й�ȣ : </label>
		<input type="password" name="memberPw" id="memberPw"/>
		<span id="pwHelper"></span>
	</div>
	<div>
		<label>�̸� : </label>
		<input type="text" name="memberName" id="memberName"/>
		<span id="nameHelper"></span>
	</div>
	<div>
		<label>���� : </label>
		<input type="radio" name="memberGender" id="memberGender" value="��" />��
		<input type="radio" name="memberGender" id="memberGender" value="��" />��
		<span id="genderHelper"></span>
	</div>
	<div>
		<label>���� : </label>
		<input type="text" name="memberAge" id="memberAge"/>��
		<span id="ageHelper"></span>
	</div>
	<div>
		<label>�ּ� : </label>
		<input type="text" name="memberAddr" id="memberAddr"/>
		<span id="addrHelper"></span>
	</div>
	<div>
		<input type="button" value="����" id="joinBtn"/>
	</div>
</form>
</body>
</html>