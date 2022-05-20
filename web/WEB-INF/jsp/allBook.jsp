<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Book Exhibition</title>
<%--    BootStrap--%>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>List of books ---- show all books</small>
                </h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 column">
                <%--toAddPager--%>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/toAddBook">AddBook</a>

            </div>
                         <%--Query books--%>
                <form action="${pageContext.request.contextPath}/book/queryBook" method="post" style="float: right">
                    <span style="color:red;font-weight: bold">${error}</span>
                    <input type="text" name="queryBookName" class="form-inline" placeholder="Please enter the name of the book you want to query" required>
                    <input type="submit" value="查询" class="btn btn-primary">
                </form>

        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>book number</th>
                    <th>book name</th>
                    <th>book amount</th>
                    <th>book detail</th>
                    <th>operation</th>
                </tr>
                </thead>

                <%--Query books from database, traverse this list：foreach>--%>
                <tbody>
                <c:forEach var="book" items="${list}">
                    <tr>
                        <td>${book.bookID}</td>
                        <td>${book.bookName}</td>
                        <td>${book.bookCounts}</td>
                        <td>${book.detail}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/book/toUpdate?id=${book.bookID}">update</a>
                            &nbsp; | &nbsp;
                                <%--restful style--%>
                            <a href="${pageContext.request.contextPath}/book/deleteBook/${book.bookID}">delete</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>


</body>
</html>
