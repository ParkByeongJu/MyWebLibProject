<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div>
	<div id="logo">
		<img alt="" src="/WebMyLibProject/image/logo.png">
	</div>
  <div class="col-3">
    <form method="post" action="/WebMyLibProject/booksearchprocess.do" name="searchform" onsubmit="return checkForm()">
      <div class="container">
        <div class="text-center mt-6">
          <div class="row align-items-center justify-content-center mt-3">
            <div class="col-md-4">
              <select name="searchBy" class="form-select">
                <option value="total" selected>통합검색</option>
                <option value="title">도서명</option>
                <option value="writer">저자</option>
                <option value="publisher">출판사</option>
              </select>
            </div>
            <div class="col-md-8">
              <div class="input-group">
                <input type="search" id="sckeyword" name="sckeyword" class="form-control"
                  placeholder="제목/저자/출판사 검색">
                <button type="submit" id="searchbook" class="btn btn-dark">검색</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </form>
  </div>
</div>
