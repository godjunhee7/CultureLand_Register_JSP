<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
    <title>컬처랜드 회원가입</title>
    
    <style>
    
      #input {
		  font: inherit;
		  border-radius: 10vw;
          width: 70%;
          margin-left: 15px;
          margin-top: 15px;
		}
      
      #PhoneInput {
          font: inherit;
		  border-radius: 10vw;
          width: 100px;
          margin-left: 15px;
          margin-top: 23px;
          margin-right: 15px;
      } 
      
      #EmailInput{
          font: inherit;
		  border-radius: 10vw;
          width: 200px;
          margin-left: 15px;
          margin-top: 15px;
          margin-right: 5px;   
      }
      
      #EmailInput2{
		  border-radius: 10vw;
          width: 200px;
          margin-left: 5px;
          margin-top: 15px;
          margin-right: 15px;   
      }
      
      
      
      #soloinput{
		  font: inherit;
		  border-radius: 10vw;
          width: 80%;
          margin-left: 15px;
       }
      
      #passinput{
          font: inherit;
		  border-radius: 10vw;
          width: 80%;
          margin-left: 15px;
          margin-top: 10px;
      }
      
      #button1 {
		  font: inherit;
		  border-radius: 10vw;
          width: 20%;
          margin-left: 15px;
          margin-right: 15px;
          margin-top: 15px;
          border-style: solid;
          border-color: #aaaaaa;      
		} 
            
       .divspan{
         
       }     
            
       .font{
         margin-left: 154px;
         color: #5a5a5a;
       }
       
       .font2{
         margin-left: 270px;
         color: #5a5a5a;
       }
       
       .font3{
         margin-left: 30px;
         color: #5a5a5a;
       }
       
       .font4{
         margin-left: 368px;
         color: #5a5a5a;
       }
       
       .font5{
         margin-right: 190px;
       }
       
       .lastfont{
          font-weight: bold;
          color: #323232;
          margin-left: 30px;
       }    
       
       .lastfont2{
          margin-top: 7px;
       }
       
       .table-padding{
          margin-left: 20%; 
          margin-right: 20%;
          margin-top: 15px;
       }   
       
       .tr-padding1{
          padding-left: 50px;        
       }
       
      .tr-padding2{
          padding-left: 296px;        
       }
       
       .input-padding{
          padding-left: 15px;
       }
    
       .find-btn{
			text-align: center;
		}
		.find-btn1{
			display :inline-block;
		}
                
       .ButtonWidth {
         width: 200px;
       }
        
        table{
            width: 100%;
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
            background-color:#F5F5F5;
            padding-right: 20px;
            width: 25%;
            font-weight: bold;
        }
        
        .EmailIcon{
          color: #c8c8c8;
          margin-top: 5px;
        }
        
        .slush{
          color: #dcdcdc;
        }
        
        nav{
         background-color: #f1f1f1;
         text-align: center;
         height: 80px;
        }
                
        .navimg{
          width: 350px;
          padding-top: 23px;
        }
        
       .container {
		  display: flex;
		  justify-content: center;
		  align-items: center;
		  margin-top: 30px;
		}

		.image {
		  margin-right: 20px;
		}
				
		.text {
		  text-align: center;
		}
           
    </style>
    
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
</head>
<script type="text/javascript">
    // 유효성 검사 메서드
    function Validation() {        
        var form = document.JoinForm;
        
        // 정규식
        // id
        var regId = /^[a-z0-9]{6,12}$/;
        
        // pw  
        var regPw = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*()_+])[a-zA-Z\d!@#$%^&*()_+]{6,12}$/;    
        
        // 이름
        var regName = /^[가-힣a-zA-Z]{2,15}$/;
        
        //이름 입력 확인 + 입력 조건 확인
        if(form.name.value == ""){
            alert("이름을 입력해주세요.")
            form.name.focus();
            return false;
        }
        else if(!regName.test(form.name.value)){
            alert("이름은 최소 2글자 이상, 한글과 영어만 입력해주세요.")
            form.name.focus();
            return false;
        }
        
        //아이디 입력 확인
        if(form.id.value == ""){
            alert("아이디를 입력해주세요.")
            form.id.focus();
            return false;
        }
        //아이디 입력 조건 확인
        else if(!regId.test(form.id.value)){
            alert("아이디는 영문 또는 영문+ 숫자 조합 6~12자리로 사용하여주시고, 대문자와 특수문자는 사용불가합니다.")
            form.id.focus();
            return false;
        }

        //비밀번호 입력 확인
        if(form.password.value == ""){
            alert("비밀번호를 입력해주세요.")
            form.password.focus();
            return false;
        }
        
        //비밀번호 입력 조건 확인
        else if(!regPw.test(form.password.value)){
            alert("영문 대소문자+숫자+특수문자 조합하여 6~12자리까지 가능하며, 특수문자는 ~, @, $, ^, *, (, ), _, +만 사용가능합니다.")
            form.password.focus();
            return false;
        }
        
        //비밀번호 확인칸 확인
        if(form.password2.value == ""){
            alert("비밀번호를 다시 입력해주세요.")
            form.password2.focus();
            return false;
        }
        

        //비밀번호와 아이디 비교
        else if(form.password.value == form.id.value){
            alert("아이디와 동일한 비밀번호를 사용할 수 없습니다.")
            form.password.focus();
            return false;
        }


        //비밀번호 일치 확인
        if(form.password.value !== form.password2.value){
            alert("비밀번호와 동일하지 않습니다. 다시 입력해주세요.")
            form.password2.focus();
            return false;
        }

        //메일 입력 확인
        if(form.mail1.value.length == 0){
            alert("메일주소를 입력해주세요.")
            form.mail1.focus();
            return false;
        }

        
        // 유효성 문제 없을 시 폼에 submit
        form.submit();
    }

</script>      

<body>

    <nav>
	   <a href="JoinForm.jsp"><img class="navimg" src="./resources/images/cultureland.png"/></a>
	</nav>
	               
		 <div class="container">
		  <div class="image">
		     <img src="./resources/images/note-form.png"/>
		  </div>
		  <div class="text">
		    <h3>회원 기본정보를 정확히 입력해 주세요.</h3>
		    <span>컬쳐랜드에서 이용할 회원님의 소중한 정보를 정확히 입력해주세요.</span>
		    <br><span class="font5">(가입 후 변경이 불가한 정보도 있습니다)</span>
		  </div>
		</div>
                
        <div class="table-padding">
        <form name="JoinForm" method="post" action="JoinPro.jsp" >
            <table width="700" height="600" cellpadding="0" style="border-collapse:collapse; font-size:9pt;">
               
               <tr>
                    <td id="title" align="center">이름</td>
                    <td>
                      
                        <input type="text" name="name" maxlength="20" id="soloinput" class="form-control" placeholder="이름을 입력해주세요.">
                   </td>   
                </tr>       
                <tr>
                    <td id="title" align="center">아이디</td>
                    <td>
                      <div class="input-group mb-3">
                        <input type="text" name="id" minlength="6" maxlength="12" id="input" class="form-control" placeholder="아이디를 입력해주세요.">
                        <input type="button" value="아이디 중복확인" class="form-control-sm" id="button1">
                                  
                       </div>
                       <span class="font">영문 또는 영문+ 숫자 조합 6~12자리로 사용하여주시고, 대문자와 특수문자는 사용불가합니다.</span>
                       <br><br>
                    </td>
                </tr>
                        
                <tr>
                    <td id="title" align="center">비밀번호</td>
                    <td>
                        <input type="password" name="password" minlength="6" maxlength="12" id="passinput" class="form-control" placeholder="비밀번호를 입력해주세요.">
                            <br>
	                        <span class="font3">
	                          · 영문 대소문자+숫자+특수문자 조합하여 6~12자리까지 가능하며, 특수문자는 ~, @, $, ^, *, (, ), _, +만 사용가능합니다.                         
	                        </span><br>
	                        <span class="font4">	     
	                           · 3자리 이상 연속된 영문/숫자는 사용하실 수 없습니다.
	                        </span>
	                        <br><br>
                    </td>
                </tr>
                
                <tr>
                    <td id="title" align="center">비밀번호 확인</td>
                    <td>
                        <input type="password" name="password2" minlength="6" maxlength="12" id="soloinput" class="form-control" placeholder="비밀번호를 입력해주세요.">
                    </td>
                </tr>
                                                         
                <tr>
                    <td id="title" align="center">이메일</td>
                    <td>
                      <div class="input-group mb-3"> 
                        <input type="text" name="mail1" maxlength="30" class="form-control" id="EmailInput" placeholder="이메일을 입력해주세요.">
                        <font size="6px" class="EmailIcon" >@</font>
                        <select name="mail2" class="form-control" id="EmailInput2">
                            <option>naver.com</option>
                            <option>daum.net</option>
                            <option>gmail.com</option>
                            <option>nate.com</option>
                            <option>hansung.ac.kr</option>                        
                        </select>
                       </div> 
                    </td>
                </tr>
                    
                <tr>
                    <td id="title" align="center">휴대폰 번호</td>
                    <td>
                       <div class="input-group mb-3">
                       	  <input type="text" name="phone" maxlength="20" id="PhoneInput" class="form-control"/>
                       	  <font size="7px" class="slush"> - </font>
                       	  <input type="text" name="phone2" maxlength="20" id="PhoneInput" class="form-control"/>
                       	  <font size="7px" class="slush"> - </font>
                       	  <input type="text" name="phone3" maxlength="20" id="PhoneInput" class="form-control"/>
                       </div>
                       <p><font size="2px" class="font2">입력하신 휴대전화 번호로 현금영수증 및 임시비밀번호가 발급됩니다.</font></p>	  
                    </td>
                </tr>
                <tr>
                    <td id="title" align="center">마케팅 수신 동의</td>
                    <td>
                        <p class="lastfont2"><font size="3px" class="lastfont">이메일 / SMS 수신 동의</font></p>
                        <span class="font3">
	                      * 마케팅 수신 약관에 동의하였으므로, 이메일/SMS를 통해 이벤트,프로모션 등 혜택을 받아보실 수 있습니다.
	                    </span><br>
                        <span class="font3">
	                      * 마케팅(이메일/SMS)수신 여부는 회원가입 후 ＂마이페이지 > 이메일/SMS수신관리＂에서 변경하실 수 있습니다.
	                    </span><br><br>                                           
                    </td>
                </tr>
            </table>
            <br>
            <div class="find-btn">
             <input type="button" value="확인" onclick="Validation()" class="ButtonWidth btn btn-danger">
             <input type="reset" onclick="alert('초기화 되었습니다.')" value="처음부터 다시하기" class="ButtonWidth btn btn-secondary">
            </div> 
        </form>
         </div>
</body>
</html>