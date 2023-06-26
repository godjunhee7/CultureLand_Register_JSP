<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>        
<%@ page import="com.model.MemberBean" %>  
 
<html>
<head>
    <title>회원가입 완료</title>
    <style>
        #wrap{
            margin-left:auto; 
            margin-right:auto;
            text-align:center;
        }
        
       .ButtonWidth {
         width: 200px;
       }
       
       .navimg{
          width: 350px;
          padding-top: 23px;
        }
        
       nav{
         background-color: #f1f1f1;
         text-align: center;
         height: 80px;
        }
        
        table{
            width: 70%;
            height: 50%;
            margin-left:auto; 
            margin-right:auto;
            border-top:3px solid red;
            border-bottom:3px solid red;
        }
        
        td{
            border:1px solid gray;
        }
        
        tr{
          height: 10%;
        }
        
        #title{
            background-color:#F5F5F5
        }
    </style>
    <link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
</head>
<body>
    <%-- JoinForm.jsp에서 입력한 정보를 넘겨 받아 처리한다. --%>
    <% 
        // 한글 깨짐을 방지하기 위한 인코딩 처리
        request.setCharacterEncoding("utf-8"); 
    %>
    
    <%-- 자바빈 관련 액션태그 사용 --%>
    <jsp:useBean id="memberBean" class="com.model.MemberBean" />
    <jsp:setProperty property="*" name="memberBean"/>
        
    <nav>
	   <a href="JoinForm.jsp"><img class="navimg" src="./resources/images/cultureland.png"/></a>
	</nav>
	
    <form action="JoinForm.jsp">
    <div id="wrap">
        <br><br>
        <b><font size="5" color="red">컬처랜드 회원</font></b><b>이 되신 걸 환영합니다!</b>
        <br><br>
        <b><font color="orange"><%=memberBean.getName() %></font></b><b>님 가입을 축하드립니다.</b>
        <br><br>
        
        <%-- 자바빈에서 입력된 값을 추출한다. --%>
        <table>
           
            <tr>
                <td id="title" align="center">이름</td>
                <td align="center"><%=memberBean.getName() %></td>
            </tr>
        
            <tr>
                <td id="title" align="center">아이디</td>
                <td align="center"><%=memberBean.getId() %></td>
            </tr>
                        
            <tr>
                <td id="title" align="center">비밀번호</td>
                <td align="center"><%=memberBean.getPassword() %></td>
            </tr>
                                                         
            <tr>
                <td id="title" align="center">이메일</td>
                <td align="center">
                    <%=memberBean.getMail1() %>@<%=memberBean.getMail2() %>
                </td>
            </tr>
                    
            <tr>
                <td id="title" align="center">휴대폰 번호</td>
                <td align="center">
                   <%=memberBean.getPhone() %> - <%=memberBean.getPhone2() %> - <%=memberBean.getPhone3() %>
                </td>
            </tr>

        </table>
        
        <br>
        <input type="submit" value="돌아가기" class="ButtonWidth btn btn-danger">
    </div>
    </form>
</body>
</html>