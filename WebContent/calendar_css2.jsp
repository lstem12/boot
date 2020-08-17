
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
table,td {
	border: 1px solid black;
}

table {
	border-collapse: collapse;
	width: 610px;
	font-size: 12px;
	margin-top: 15px;
}

tr{
	height: 60px;
	vertical-align: top;
}

td{
	width: 76px;
	padding: 5px;
}

h3{
	border-left: 8px solid blue;
	padding: 10px;
	
}

#day{
	height: 20px;
	background-color: #f8f9f2;
	text-align: center;
	font-weight: bold;
}

.red{
	color: red;
}

</style>
</head>
<body>
<%
	int []lastDay = {31,28,31,30,31,30,31,31,30,31,30,31};

	Date today = new Date();
	int year = today.getYear();
	int month = today.getMonth();
	
	Date startDay = new Date(year, month, 1);
	int yoil= startDay.getDay();
	
%>

<h3>나의 일정</h3>

<table>
	<tr>
		<td colspan="7" align="right">
			◀<%=year+1900 %>년 <%= month+1 %>월▶
		</td>
	</tr>
	<tr id="day">
		<td class="red">일</td>
		<td>월</td>
		<td>화</td>
		<td>수</td>
		<td>목</td>
		<td>금</td>
		<td>토</td>
	</tr>
	<tr>
		<%
			//날짜를 출력하기 전에 그달의 1일의 요일의 숫자 만큼 빈칸을 출력
			//만약 8월 1일이 토요일이면 6만큼 빈칸(아무글자가 
			//		없는  <td></td>)을 출력해야 합니다!
			for(int j=1; j<=yoil; j++){
				%>
				<td>&nbsp;</td>
				<%
			}
		
			for(int i=1;i<=lastDay[month];i++){
				if( (i+yoil) % 7 != 1  )
				{
				%>
					<td><%=i %></td>
				<%
				}else{
				%>
					<td class='red'><%=i %></td>
				<%	
				}
				
				if( (i+yoil) % 7 ==0){
					%>
					</tr><tr>
					<%
					
				}
				
			}
		%>
	</tr>
</table>
</body>
</html>








