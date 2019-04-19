<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">

<body>
    <form method="POST">
        <label><input type="text" name="login"/></label>
        <label><input type="password" name="password"/></label>
        <button type="submit">${login}</button>
    </form>
</body>

</html>