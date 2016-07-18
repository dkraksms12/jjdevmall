<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#itemAddBtn').click(function(){
			if($('#itemName').val() == ""){
				$('#nameText').text("상품명을 입력해 주세요");
				$('#itemName').focus();
			}else if($('#itemPrice').val()=="" || isNaN($('#itemPrice').val())){
				$('#nameText').text("");
				$('#priceText').text("가격을 입력해주세요(숫자)");
				$('#itemPrice').focus();
			}else if($('#itemRate').val()==""){
				$('#nameText').text("");
				$('#priceText').text("");
				$('#rateText').text("할인률을 입력해 주세요");
				$('#itemRate').focus();
			}else{
				$('form').submit();
			}
		})
	})

</script>
</head>
<body>
<form action="<%= request.getContextPath() %>/admin/item/itemAddAction.jsp" method="post">
	<div>
		<label for="itemName">이름:</label>
		<input type="text" id="itemName" name="itemName">
		<span id="nameText"></span>
	</div>
	
	<div>
		<label for="itemPrice">가격:</label>
		<input type="text" id="itemPrice" name="itemPrice">
		<span id="priceText"></span>
	</div>
	
	<div>
		<label for="itemRate">할인:</label>
		<input type="text" id="itemRate" name="itemRate">
		<span id="rateText"></span>
	</div>
	
	<div>
		<input type="button" id="itemAddBtn" name="itemAddBtn" value="상품추가">
	</div>
	

</form>
</body>
</html>