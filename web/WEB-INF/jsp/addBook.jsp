<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>New Books</title>

    <!-- Bootstrap -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>Add Book</small>
                </h1>
            </div>
        </div>
    </div>

<%--    <div class="row">--%>
<%--        <div class="col-md-4 column">--%>
<%--            <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/allBook">返回全部书籍</a>--%>
<%--        </div>--%>
<%--    </div>--%>

    <form action="${pageContext.request.contextPath}/book/addBook" method="post">
        <div class="form-group">
            <label>book name</label>
            <input type="text" name="bookName" class="form-control" required>
        </div>
        <div class="form-group">
            <label>book amount</label>
            <input type="text" name="bookCounts" class="form-control" required>
        </div>
        <div class="form-group">
            <label>book description</label>
            <input type="text" name="detail" class="form-control" required>
        </div>
        <div class="form-group">
            <input type="submit" class="form-control btn btn-primary" value="添加">
        </div>
    </form>

</div>
</body>
</html>
