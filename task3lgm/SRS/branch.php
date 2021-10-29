<?php include "include/header.php" ?>
<?php include "include/sidebar.php" ?>
<section class="home-section">

  <div class="container">
    <div class="text">
      <a href="addbranch.php" class="btn btn-primary">Add Branch</a>
    </div>
    <table class="table table-striped " style="margin-top: 3rem;" id="tab">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Branch</th>
          <th scope="col">Action</th>


        </tr>
      </thead>
      <tbody>
        <?php
        include "include/connection.php";
        $sq = "SELECT * FROM branch";
        $res = mysqli_query($con, $sq) or die("query failed");
        if (mysqli_num_rows($res) > 0) {
          $i=1;
          while ($row = mysqli_fetch_assoc($res)) {
        ?>
            <tr>
              <th scope="row"><?php echo $i++ ?></th>
              <td><?php echo $row['class'] ?></td>
              <td>
                <a href="update_branch.php?uid=<?php echo $row['id'] ?>" class="btn btn-success" style="margin-right: 10px;">Update</a>
                <a href="delete_branch.php?uid=<?php echo $row['id'] ?>" class="btn btn-danger">Delete</a>
                <!-- Trigger/Open The Modal -->
                
              </td>
            </tr>
        <?php }
        } ?>
      </tbody>
    </table>
  </div>
</section>
<script src="javascript/jquery.min.js"> </script>
<script src="javascript/bootstrap.min.js"></script>
<script src="javascript/modal.js"></script>
<script src="javascript/main.js"> </script>

</body>

</html>