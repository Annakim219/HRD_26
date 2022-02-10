<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원매출조회</title>
<style>
th{
	height: 35px;
}
td{
	height: 25px;
	text-align: center;
}
p{
	margin-right: 5px;
	text-align: right;
}
</style>
</head>
<body>
	<%@ include file="/header.jsp"%>
	<%@ include file="/nav.jsp"%>
	<%@ include file="/DBconn.jsp"%>
	<section>
		<br>
		<h2>회원매출조회</h2>
		<table>
			<tr>
				<th width=100>회원번호</th>
				<th width=100>회원성명</th>
				<th width=100>고객등급</th>
				<th width=120>매출</th>
			</tr>
			<%
				DecimalFormat df = new DecimalFormat("###,###");
				
				try{
					String sql = "select a.custno, a.custname, a.grade, sum(b.price) from member0210 a, money0210 b where a.custno=b.custno group by a.custno, a.custname, a.grade order by sum(b.price) desc";
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					while(rs.next()){
						String custno = rs.getString(1);
						String custname = rs.getString(2);
						String grade = rs.getString(3);
						int sum_price = rs.getInt(4);
						
						if(grade.equals("A")){grade="VIP";}
						else if(grade.equals("B")){grade="일반";}
						else if(grade.equals("C")){grade="직원";}
						
						System.out.println("데이터 조회 성공");		
					%>
				<tr>
					<td><%=custno %></td>
					<td><%=custname %></td>
					<td><%=grade %></td>
					<td><p><%=df.format(sum_price) %></p></td>
				</tr>
								<%
					}
					
				}catch(SQLException e){
					System.out.println("데이터 조회 실패");
					e.printStackTrace();
				}				
			%>
		</table>

	</section>
	<%@ include file="/footer.jsp"%>
</body>
</html>