<?php  include "header.php";?>
<body>
  <div class="login">
    <h2>LOGIN</h2>

    <form>
      <label for="fname"class="label-login">Email Id</label><br />
      <input type="text"class="input-login" id="fname" name="fname" required><br>
      <label for="lname"class="label-login">Password</label><br />
      <input type="password"class="input-login" id="password" name="password" value="" required><br /><br/>
        <input type="checkbox" class="form-check-input" id="exampleCheck1">    
      <label for="pass" class="label-login">Forget Password?</label><br />
      <button class="submit">Login</button>
    </form>

  </div>

</body>
<?php include "footer.php"; ?>