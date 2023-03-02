<?php include "header.php"; ?>
<body>
    <div class="card signup">
    <h2>Sign Up</h2>

    <form name="student" method="post" action="save_edit_del.php">
  <label for="fullname" class="label-singup">Full Name</label><br/>
  <input type="text" class= "input-sinup"name="fullname" id="fullname" required><br/>
  <label for="email"class="label-singup">Email Address</label><br/>
  <input type="text" class= "input-sinup"  name="email" id="email" required><br/>
  <label for="mobilenumber"class="label-singup">Mobile Number</label><br/>
  <input type="text" class= "input-sinup" name="phno" id="phno" required><br/><br/>
  <input type="hidden" class= "input-sinup" name="savestudent" id="savestudent" /><br/><br/>
  <!-- <label for="Photo"class="label-singup"style="text-align:center">Photo</label><br/>
  <input type="file" class= "input-sinup" name="photo" id="photo"style="text-align:center"><br/><br/>
  <label for="Identity Proof"class="label-singup"style="text-align:center">Identity Proof</label><br/>
  <input type="file" class= "input-sinup" name="identity proof" id="identity proof"style="text-align:center"><br/><br/>   -->

  <button type="submit" class="btn ">Submit</button>
</form>
  </div>

</body>
<?php include "footer.php"; ?>