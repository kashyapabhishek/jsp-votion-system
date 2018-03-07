<%@ page import="com.daw.UserDaw" %> 
<%
	
%>
<div class="jumbotron">
  <h1 class="display-3">Is Modi came back in 2019 !</h1>
  <p class="lead">Narendra Damodardas Modi is an Indian politician who is the 16th and current Prime Minister of India. Is he came back!</p>
  <hr class="my-4">
  <p><div class="card">
  <img class="card-img-top" src="https://thefearlessindian.in/wp-content/uploads/2017/05/Narendra-Modi-HD-Wallpapers-Indian-Pr.jpg" alt="Card image cap">
  <div class="card-block">
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <div class="progress" style="background-color:white;">
    <button type="button" class="btn btn-success">Yes</button>
  		<div class="progress-bar" role="progressbar" style="width: <%= UserDaw.yes %>%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"><%= UserDaw.yes %>%</div>
		</div>
	<div class="progress" style="background-color:white;">
   		 <button type="button" class="btn btn-danger">No</button>
  		<div class="progress-bar" role="progressbar" style="width: <%= UserDaw.no %>%%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"><%= UserDaw.no %>%</div>
		</div>
    	
  </div>
</div>
</div>