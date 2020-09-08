<%! 
 public String generateWishMsg(String user)
{
	//get system date and time
	java.util.Calendar cal=java.util.Calendar.getInstance();

	//get current hours of the day
	int hour= cal.get(java.util.Calendar.HOUR_OF_DAY);

	//generate wish message
	if(hour<12)
		return "GOOD MORNING :: "+user;
	else if(hour<16)
		return "GOOD AFTERNOON :: "+user;
	else if(hour<20)
		return "GOOD EVENING :: "+user;
	else
		return "GOOD NIGHT :: "+user;
}

%>

<h1>Welcome to jsp page</h1>

<h2> date and time is::<%=new java.util.Date()%></h2>

<%String uname=request.getParameter("uname");%><br>
<b>wish Message is ::</b><%= generateWishMsg(uname)%>
