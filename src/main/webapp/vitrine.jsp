<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/801aade464.js" crossorigin="anonymous"></script>
<style>
.hre{
color: rgba(88, 67, 6, 0.962); 

}
.hre:hover{
color: rgba(88, 67, 6, 0.962); 
}
.dropbtn {
  background-color: #185310c9;
  color: white;
  padding: 10px;
  font-size: 16px;
  font-family:"Roboto", sans-serif;
  border: none;
  border-radius: 13px;
  cursor: pointer;

}
.dropdown:hover {
  background-color: #9ea9c887;


}

.dropdown {
  position: relative;
  display: inline-block;
  border-radius: 13px;
}

.dropdown-content {
  display: none;
  position: absolute;
  right: 0;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.326);
  z-index: 1;
  font-family:"Roboto", sans-serif;
}



.dropdown-content a:hover {color: black;}

.dropdown:hover .dropdown-content {
  display: block;
}

.dropdown:hover .dropbtn {
   background-color: #428c32d2;
}
.dropdown input{
  min-width: 160px;
  padding-top: 5px;
  padding-bottom: 5px;
background-color: #f9f9f9;
border: none;
color: #051A53;
}
.dropdown input:hover {

  color: #ff006a;

}
.log{
  min-width: 160px;
  padding-top: 5px;
  padding-bottom: 5px;
background-color: #f9f9f9;
border: none;
color: #185310c9;
}

.log:hover{
  /* background-color: #4c7d245c */
  color:rgb(0, 0, 0)
}
#id{
margin-left:6000%;
}

</style>
<link rel="stylesheet" href="css/bootstrap.css"> </link>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#"><i Style="color:white" class="fa-solid fa-b"></i>shop</a>
 
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#"> <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"></a>
      </li>
     
    </ul>
  </div>

  <c:if test="${ !empty sessionScope.prenom && !empty sessionScope.nom }">

 <div  style="float:right;" class="dropdown">
          <button class="btn btn-warning  " class="dropbtn">${sessionScope.nom }  ${sessionScope.prenom }  <i class="fa-solid fa-chevrons-down"></i></button>
          <div class="dropdown-content">

        <button class=" btn btn-light" style=" padding-left:25%;padding-right:19%"> <a class="hre"href="ServletInternaute?action=deconnex" >déconnexion</a></button> 
         

          </div>
        </div>
</c:if>
</nav>





<h1 style="margin-left:10%;margin-top:5%">Liste des categories </h1>

<table style ="width:40% ; margin-left:29%; margin-top:5%" class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Nom de Catégorie</th>
      
    </tr>
  </thead>
  <tbody>
  
 <c:forEach items="${listeC}" var="p">
    <tr>
      <th scope="row"><button class="btn btn-warning"><a class="hre" href="InscriptionServlet?action=consulterC&idc=${p.id_ctg}">${p.id_ctg}</a></button></th>
      <td>${p.nom_ctg}</td>
      
      
    </tr>
   
 </c:forEach>
  </tbody>
</table>


      
</body>
</html>