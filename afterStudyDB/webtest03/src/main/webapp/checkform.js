function chkfrm(formName){
	 var frm = formName;
	 
	 if(frm.names.value == "")
	 {
		 alert("이름이 입력되지 않았습니다.");
		 return;
	 }
	 else if(frm.age.value == "")
	 {
		 alert("나이가 입력되지 않았습니다.");
		 return;
	 }
	 if(frm.address.value == "")
	 {
		 alert("주소가 입력되지 않았습니다.");
		 return;
	 }
	 
	 frm.method = "post";
	 frm.action = "./controller.jsp";
	 frm.submit();
 }