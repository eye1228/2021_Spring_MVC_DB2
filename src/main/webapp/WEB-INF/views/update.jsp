<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
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
<script type="text/javascript">
	function update_ok(f) {
		// 비밀번호체크
		if(f.pwd.value == "${vo.pwd}"){
			alert("수정하기");
			f.submit();
		}else{
			alert("비밀번호틀림");
			f.pwd.value="";
			f.pwd.focus();
			return;
		}
	}
</script>
</head>
<body>
	<div>
		<h2>방명록 : 수정화면</h2>
		<hr>
		<p>[ <a href="list.do">목록으로</a> ]</p>
		<form method="post" action="update_ok.do" enctype="multipart/form-data">
			<table>
				<tbody>
					<tr><th class="bg">작성자</th> <td><input type="text" name="name" value="${vo.name }"></td></tr>
					<tr><th class="bg">제목</th> <td><input type="text" name="subject" value="${vo.subject }"></td></tr>
					<tr><th class="bg">email</th> <td><input type="text" name="email" value="${vo.email }"></td></tr>
					<tr><th class="bg">첨부파일</th> 
						<td>
							<c:choose>
								<c:when test="${empty vo.file_name}">
									<input type="file" name="f_name">이전파일없음
									<input type="hidden" name="old_file_name" >
								</c:when>
								<c:otherwise>
								    <input type="file" name="f_name">
									<input type="hidden" name="old_file_name" value="${vo.file_name}">이전파일(${vo.file_name})
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
					<tr><th class="bg">비밀번호</th> <td><input type="password" name="pwd" ></td></tr>
					<tr>
					   <td colspan="2">
					   		<textarea rows="10" cols="50" name="content">${vo.content }</textarea>
					   </td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2">
							<input type="button" value="수정" onclick="update_ok(this.form)"> 
							<%-- DB 수정을 위해서 idx를 넘기자 --%>
							<input type="hidden" name="idx" value="${vo.idx }">
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>