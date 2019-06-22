<html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<html lang="en">
<head>
<title>Title goes here</title>
</head>
<body>

	<c:set var = "index" value = "${0}"/>
	<h2>Index: ${index}</h2>
  
  	<c:choose>
     	<c:when test = "${fn:contains(fruits[index].name, 'Orange')}">
        	Does Contain
     	</c:when>
     	<c:otherwise>
        	No comment sir...
     	</c:otherwise>
  	</c:choose>
</body>
</html>