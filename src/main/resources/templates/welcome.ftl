<!DOCTYPE html>
<html lang="en">
<head>
<title>Spring Boot FreeMarker</title>

<link href="/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.container {
	margin-top: 80px;
}

.bg-dark {
	background-color: #3b8dbd !important;
}
</style>
</head>
<body>

	<div class="container">
       <h3>Fill the form and click submit...</h3>
       <#if person?? >
        First name: ${person.firstName}<br>
        Last name: ${person.lastName}<br>
        <#else>
        <form action="/welcome" method="post">
            First name:<br>
            <input type="text" name="firstName">
            <br><br>
            Last name:<br>
            <input type="text" name="lastName">
            <br><br>
            <input type="submit" value="Submit">
        </form>
        </#if>
		<br/>

	</div>

</body>
</html>

