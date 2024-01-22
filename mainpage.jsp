<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>나의 웹사이트</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f4f4;
            font-family: 'Arial', sans-serif;
        }
        .custom-btn {
            background-color: #007bff;
            color: white;
            border-radius: 5px;
            padding: 10px 20px;
            text-decoration: none;
            display: inline-block;
        }
        .btn-4 {
            background-color: #28a745; /* Green */
        }
        .mt-4 {
            margin-top: 2em;
        }
        h1 {
            text-align: center;
            margin-top: 20px;
            color: #333;
        }
    </style>
</head>
<body>
    <h1>환영합니다!</h1>
    <!-- 이미지 -->
    <div class="text-center mt-4">
        <a href="/food/List/login" class="custom-btn btn-4">입장하기</a>
    </div>
    <!-- jQuery, Popper.js, Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>