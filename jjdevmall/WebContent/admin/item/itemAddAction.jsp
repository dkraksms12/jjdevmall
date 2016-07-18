<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	request.setCharacterEncoding("UTF-8");
	
	String itemName = request.getParameter("itemName");
	int itemPrice = Integer.parseInt(request.getParameter("itemPrice"));
	double itemRate = Double.parseDouble(request.getParameter("itemRate"));
	
	System.out.print(itemName+"<--itemName");
	System.out.print(itemPrice+"<--itemPrice");
	System.out.print(itemRate+"<--itemRate");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String itemSql = null;
	
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/jjdevmall?"+"useUnicode=true&characterEncoding=euckr";
	String dbUser = "root";
	String dbPw = "java0000";
	
		try{
			Class.forName(driver);
			conn = DriverManager.getConnection(url, dbUser, dbPw);
			conn.setAutoCommit(false);
			
			itemSql="insert into item(item_name, item_price, item_rate) values(?,?,?)";
			pstmt = conn.prepareStatement(itemSql);
			pstmt.setString(1, itemName);
			pstmt.setInt(2, itemPrice);
			pstmt.setDouble(3, itemRate);
			
			pstmt.executeUpdate();
			
			conn.commit();
			
			
		}catch(Exception e){
			
			conn.rollback();
			e.printStackTrace();
		
		}finally{
			
		}
	%>
</body>
</html>