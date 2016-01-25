<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<div class="nav-search" id="nav-search">
	<form class="form-search">
		<span class="input-icon"> <input type="text"
			placeholder="Search ..." class="nav-search-input"
			id="nav-search-input" autocomplete="off" /> <i
			class="icon-search nav-search-icon"></i> </span>
	</form>
</div>