/**
 * 
 */

 function dataUpdate(formName, code)
 {
	var frm = formName;
	var code = code;
	
	frm.method = "post";
	frm.action = "./update.jsp?code="+code;
	
	frm.submit();
 }