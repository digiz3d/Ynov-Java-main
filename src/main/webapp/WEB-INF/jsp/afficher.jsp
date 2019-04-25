<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
    <body>
        Authenticated. Redirecting in 3sec.
        <script>
            setTimeout(function() {
            window.location = "../details";
            }, 3000);
        </script>
    </body>
</html>