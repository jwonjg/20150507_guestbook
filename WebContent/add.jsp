<%@page import="com.sds.icto.guestbook.vo.GuestBookVo"%>
<%@page import="com.sds.icto.guestbook.dao.GuestBookDao"%>
<%
	request.setCharacterEncoding("utf-8");
	try{
		GuestBookDao dao = new GuestBookDao();
		dao.insert(new GuestBookVo(request.getParameter("name"), request.getParameter("pass"), request.getParameter("content")));
	}catch(Exception e){
		e.printStackTrace();
	}

	response.sendRedirect("/20150507_guestBook");
%>

