<nav class="navbar fixed-bottom navbar-inverse bg-primary">
 <div class=" center_div">
	 	 <form class="form-inline" action="process.jsp" method="post">
			  <label class="sr-only" for="inlineFormInputGroup">Email</label>
			  <div class="input-group mb-2 mr-sm-2 mb-sm-0">
			    <div class="input-group-addon">Email</div>
			    <input type="text" class="form-control" id="inlineFormInputGroup" name="email" placeholder="example@dmoin.com">
			  </div>
			
			    <div class="form-check">
			      <label class="form-check-label">
			        <input type="radio" class="form-check-input" name="vote" id="optionsRadios1" value="yes" checked>
			        Yes
			      </label>
			    </div>
			    <div class="form-check">
			    <label class="form-check-label">
			        <input type="radio" class="form-check-input" name="vote" id="optionsRadios2" value="no">
			        No
			      </label>
			    </div>
			
			  <button type="submit" class="btn btn-success">Submit</button>
		</form>
 </div>
</nav>