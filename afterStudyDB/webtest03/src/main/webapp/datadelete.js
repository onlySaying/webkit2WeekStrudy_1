function dataRemove(formName,code)
{
	var frm = formName;
	var code = code;
	
	frm.method = "post";
	frm.action = "./controller.jsp?code="+code;
	
	frm.submit();
}