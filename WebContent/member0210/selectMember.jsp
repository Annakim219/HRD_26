<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원목록조회/수정</title>
<style>
th{
	height: 35px;
}
td{
	height: 25px;
	text-align: center;
}
p{
	margin-left: 5px;
	text-align: left;
}
a{
	color: lightgrey;
}
</style>
</head>
<body>
	<%@ include file="/header.jsp"%>
	<%@ include file="/nav.jsp"%>
	<%@ include file="/DBconn.jsp"%>
	<section>
		<br>
		<h2>회원목록조회/수정</h2>
		<table>
			<tr>
				<th width=80>회원번호</th>
				<th width=80>회원성명</th>
				<th width=120>전화번호</th>
				<th width=250>주소</th>
				<th width=120>가입일자</th>
				<th width=80>고객등급</th>
				<th width=80>거주지역</th>
			</tr>
			<%

				try{
					String sql = "select custno, custname, phone, address, to_char(joindate,'yyyy-mm-dd'), grade, city from member0210 order by custno";
					pstmt = conn.prepareStatement(sql);
					rs = pstmt.executeQuery();
					while(rs.next()){
						String custno = rs.getString(1);
						String custname = rs.getString(2);
						String phone = rs.getString(3);
						String address = rs.getString(4);
						String joindate = rs.getString(5);
						String grade = rs.getString(6);
						String city = rs.getString(7);
						
						if(grade.equals("A")){grade="VIP";}
						else if(grade.equals("B")){grade="일반";}
						else if(grade.equals("C")){grade="직원";}
						
						System.out.println("데이터 조회 성공");		
					%>
				<tr>
					<td><a href='/HRD02101/member0210/updateMember.jsp?custno=<%=custno %>'><%=custno %></a></td>
					<td><%=custname %></td>
					<td><%=phone %></td>
					<td><p><%=address %><p></td>
					<td><%=joindate %></td>
					<td><%=grade %></td>
					<td><%=city %></td>
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