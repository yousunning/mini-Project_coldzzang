<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <title>���� ������Ʈ</title>
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
<h3>����¯</h3>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/food/List/2">����� �����ּ���. >>>>>> Click</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="/food/List/like">���ã��</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/food/List/myRefrigerator">���� �����</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/food/List/myStatistics">���</a>
            </li>
        </ul>
    </div>
</nav>

    <!-- ���� ������ -->
    <div class="container mt-4" style="text-align:center;">
    <!-- ��ũ�� ��ưó�� ��Ÿ�ϸ� -->
    <a href="/food/List/join" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">ȸ������ �Ϸ�</a>
    <a href="/food/List/login" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">�α��� �ϱ�</a>
    <a href="/food/List/homepage" class="btn btn-secondary btn-lg active" role="button" aria-pressed="true">����¯ Ȩ������</a>
</div>
     <!-- jQuery, Popper.js, Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
