

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<script language="javascript">

</script>
		<script type="text/javascript" src="scripts/general.js">
</script>
		<script type="text/javascript" src="scripts/ts_picker.js">
</script>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />

		<meta http-equiv="Last-Modified"
			content="Thu, 02 Aug 2007 10:30:00 GMT" />


		<title>e-Banking</title>

		<link rel="icon" href="http://www.bis.org/favicon.ico"
			type="image/x-icon" />
		<link rel="shortcut icon" href="http://www.bis.org/favicon.ico"
			type="image/x-icon" />

		<link href="cbanks_files/standard.css" type="text/css"
			rel="stylesheet" />

		<!-- JavaScript variable to set the active Menu -->
		<script type="text/javascript" src="cbanks_files/standard.js">
</script>
		<script type="text/javascript">
<!--
		var primaryMenu = "Central bank hub";
		var secondaryMenu = "Central bank websites";
	// -->
	</script>
		<style type="text/css">
<!--
.style1 {
	font-size: 50px
}
-->
</style>
	</head>
	<body background="./images/gb2.jpg">


		<jsp:include page="header.jsp" /><center>
			<h2>
				<font color=gree> <%
 	int i = 0, fileid = 0;
 	String username = null;
 	if ((String) request.getAttribute("status") != null) {
 %> <%=request.getAttribute("status")%> <%
 	}

 	username = (String) session.getAttribute("username");
 %> </b> </font>
				<BR />
				<BR />
			</h2>
		</center>
		<div class="hr">
		</div>
		<p></p>

		<form name="f" method="get" action="./InsertIntoCLDAction">

			<table width="637" border="1" align="center" bordercolor="#8692E3">



				<tr bgcolor="#50cccc">


					<td width="233" height="16">
						<div align="center" class="style8">
							Attachment
						</div>
					</td>

					<td width="233" height="16">
						<div align="center" class="style8">
							Download
						</div>
					</td>

					<c:if test="${not empty vcb}">
						<c:forEach var="vcb" items="${vcb}">
							<%
								i++;
							%>
							<tr bgcolor="#CcC9cA">
								</td>
								<td bgcolor="#C3D7BA">
									<div align="center">
										<span class="style7">${vcb.fpath}</span>
									</div>
								</td>
								<td bgcolor="#C3D7BA">
									<div align="center">
										<span class="style7"><a href="${vcb.fpath}">show file</a>
										</span>
									</div>
								</td>
						</c:forEach>
					</c:if>
			</table>

			<br />
			<CENTER>

			</center>

			<br />
			<br />

		</form>
	</body>
</html>

