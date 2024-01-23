<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <title>나의 냉장고</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
  <style>
        body {
            background-color: #f4f4f4;
            font-family: 'Arial', sans-serif;
        }
  </style>
</head>
<body>
    <h3>나의 냉장고</h3>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="/food/List/login">목록을 열어주세요. >>>>>> Click</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/food/List/myRefrigerator">나의 냉장고</a>
                </li>
            </ul>
        </div>
 </nav>

        
    <!-- 메인 컨텐츠 -->
    <div class="container mt-4" style="text-align:center;">
    <!-- 링크를 버튼처럼 스타일링 -->
    <a href="/food/List/bread" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">🍞식빵🍞</a>
    <a href="/food/List/dobo" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">🍚두부🍚</a>
    <a href="/food/List/potato" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">🍟감자🍟</a>
    <a href="/food/List/gogi" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">🍖고기🍖</a>
    <a href="/food/List/strawberry" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">🍓딸기🍓</a>
</div>
    <!-- jQuery, Popper.js, Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
