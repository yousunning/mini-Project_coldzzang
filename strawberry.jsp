<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <title>차갑짱 레시피</title>
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
    <h3>차갑짱</h3>
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
   
    </div>
    <br>
   <table>
  <!-- Meat Dishes Section -->
  <tr>
  <th>🍓딸기🍓</th>
  </tr>
  <tr>
  <td><a href ="https://www.10000recipe.com/recipe/7018069" role="button" aria-pressed="ture">딸기청&딸기라떼</a></td>
  </tr>
  <tr>
  <td><a href ="https://www.10000recipe.com/recipe/6928434" role="button" aria-pressed="ture">딸기 탕후루</a></td>
  </tr>
  <tr>
  <td><a href ="https://www.10000recipe.com/recipe/6957054" role="button" aria-pressed="ture">간단 딸기케이크</a></td>
  </tr>
</table>

    <!-- 메인 컨텐츠 -->
    <div class="container mt-4" style="text-align:right;">
    <!-- 링크를 버튼처럼 스타일링 -->
    <a href="/food/List/homepage" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">차갑짱 홈페이지</a>
    <a href="/food/List/recipe" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">레시피 찾기</a>
    <a href="/food/List/login" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">로그아웃</a>
</div>
    <!-- jQuery, Popper.js, Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
