<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	a{text-decoration: none;}
	table{width: 600px; border-collapse: collapse;; text-align: center;}
	table, th, td{border: 1px solid black; padding: 5px; margin: auto;}
	div{ width: 600px; margin: 100px auto; text-align: center;}
	
	.bg{background-color: #99ccff}
	input{ padding : 5px;  }
</style>
</head>
<body>
	<div>
		<h2>방명록 : 작성화면</h2>
		<hr>
		<p>[ <a href="list.do">목록으로</a> ]</p>
		<form method="post" action="write_ok.do" enctype="multipart/form-data">
			<table>
				<tbody>
					<tr><th class="bg">작성자</th> <td><input type="text" name="name" required></td></tr>
					<tr><th class="bg">제목</th> <td><input type="text" name="subject" required ></td></tr>
					<tr><th class="bg">email</th> <td><input type="text" name="email" required ></td></tr>
					<tr><th class="bg">비밀번호</th> <td><input type="password" name="pwd" required ></td></tr>
					<tr><th class="bg">첨부파일</th><td><input type="file" name="f_name"></td></tr>
					<tr>
					   <td colspan="2">
					   		<textarea rows="10" cols="50" name="content"></textarea>
					   </td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2">
							<input type="submit" value="저장">
							<input type="reset"  value="취소"> 
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>











