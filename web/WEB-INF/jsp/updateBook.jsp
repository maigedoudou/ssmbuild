<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>update book</title>

    <!-- 引入 Bootstrap -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>update book</small>
                </h1>
            </div>
        </div>
    </div>

<%--    <div class="row">--%>
<%--        <div class="col-md-4 column">--%>
<%--            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">return all books</a>--%>
<%--        </div>--%>
<%--    </div>--%>

    <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
<%--        differ from add books，now we need to transfer book's ID information--%>
<%--        Method 1：set this field read-only--%>
<%--        <div class="form-group">--%>
<%--            <label>Book ID</label>--%>
<%--            <input type="text" name="bookID" class="form-control" value="${QBooks.bookID}" readonly>--%>
<%--        </div>--%>
<%--        Method 2：hidden field--%>
        <input type="hidden" name="bookID" value="${QBook.bookID}">

        <div class="form-group">
            <label>Book Name</label>
            <input type="text" name="bookName" class="form-control" value="${QBook.bookName}" required>
        </div>
        <div class="form-group">
            <label>Book Amount</label>
            <input type="text" name="bookCounts" class="form-control" value="${QBook.bookCounts}" required>
        </div>
        <div class="form-group">
            <label>Book Descripion</label>
            <input type="text" name="detail" class="form-control" value="${QBook.detail}" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control btn btn-primary" value="修改">
        </div>
    </form>

</div>
</body>
</html>
