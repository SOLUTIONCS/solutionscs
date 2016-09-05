function submitFunction()
{
var x=document.forms["loginform"]["usr"].value;
var y=document.forms["loginform"]["pwd"].value;
if(x==null||x=="")
	{
	alert("USERNAME CANNOT BE BLANK");
		}
else{
	if(y==null||y=="")
		{
		alert("PASSWORD CANNOT BE BLANK");
		}
}
}