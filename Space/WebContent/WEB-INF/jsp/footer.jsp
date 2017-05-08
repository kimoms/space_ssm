<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<footer>
	<p>&copy; Copyright 2017&nbsp; 场地借用管理系统</p>
</footer>
<script>
	$(document).ready(function() {
		minHeight = $(window).height();
		$('#main').css("min-height", (minHeight-70) + "px");
	});
</script>