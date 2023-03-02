<?php  include "header.php";?>
<body>
  <div class="login">
    <h2>LOGIN</h2>

    <form>
     <div class="labeldiv"> <label for="fname"class="label-login">Email Id</label></div>
     <div class="labeldiv"> <input type="text"class="input-login" id="fname" name="fname" required> </div>
     <div class="labeldiv"><label for="lname"class="label-login">Password</label></div>
     <div class="labeldiv">  <input type="password"class="input-login" id="password" name="password" value="" required></div>
       <div class="labeldiv">    <!--   <input type="checkbox" class="form-check-input" id="exampleCheck1">    
  <label for="pass" class="label-login">Forget Password?</label> -->
      </div>
      <div class="labeldiv">  <button class="submit">Login</button> &nbsp; <a href="register.php">Sign up</a></div>
    </form>

  </div>

</body>
<?php include "footer.php"; ?>