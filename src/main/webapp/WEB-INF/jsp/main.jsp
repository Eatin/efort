<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Album example for Bootstrap</title>

    <style>
      /*文本太长就取前面1段*/
      .litt{
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-line-clamp: 1;
        -webkit-box-orient: vertical;
      }
    </style>

    <!-- Bootstrap core CSS -->
    <link href="../../static/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../../static/css/album.css" rel="stylesheet">
  </head>

  <body>

    <header>
      <div class="navbar navbar-dark bg-dark box-shadow">
        <div class="container d-flex justify-content-between">
          <a href="#" class="navbar-brand d-flex align-items-center">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="mr-2"><path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"></path><circle cx="12" cy="13" r="4"></circle></svg>
            <strong>Album</strong>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
        </div>
      </div>
    </header>

    <main role="main">

      <section class="jumbotron text-center">
        <div class="container">
          <h1 class="jumbotron-heading"> GALLERY FOR THE GREAT WORD</h1>
        </div>
      </section>

      <div class="album py-5 bg-light">
        <div class="container">


          <div class="row">
            <c:forEach var="i" begin="1" end="${len-1}">
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <a href="<c:out value="https://www.bilibili.com/video/av${aid[i].aid}" />"> <img class="card-img-top" src= "${pic[i].pic}" alt="Card image cap"></a>
                <div class="card-body">
                  <%--<p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>--%>

                  <p class="card-text litt" size="">${data[i].title}</p>
                    <%--<p class="card-text">${pic[i].pic}</p>--%>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                      <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                      <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                    </div>
                    <small class="text-muted">${author[i].author}</small>
                    <small class="text-muted">${play[i].play}</small>
                  </div>
                </div>
              </div>
            </div>
            </c:forEach>
          </div>
        </div>
      </div>

    </main>

    <footer class="text-muted">
      <div class="container">
        <p class="float-right">
          <a href="#">Back to top</a>
        </p>
        <p>Album example is &copy; Bootstrap, but please download and customize it for yourself!</p>
        <p>New to Bootstrap? <a href="../../">Visit the homepage</a> or read our <a href="../../getting-started/">getting started guide</a>.</p>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../../static/js/jquery-3.3.1.slim.min.js"> </script>
    <script>window.jQuery || document.write('<script src="../../static/js/jquery-slim.min.js"><\/script>')</script>
    <script src="../../static/js/popper.min.js"></script>
    <script src="../../static/js/bootstrap.js"></script>
    <script src="../../static/js/holder.min.js"></script>
  </body>
</html>
