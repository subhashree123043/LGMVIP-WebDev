<?php include "include/header.php" ?>
<?php include "include/sidebar.php" ?>

<section class="home-section">
  <div class="text">
    <a href="addres.php" class="btn btn-primary">Add Result</a>
  </div>
  <div class="container">
    <table class="table table-striped " style="margin-top: 3rem;" id="tab">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Regd no</th>
          <th scope="col">Operating System</th>
          <th scope="col">Computer Organization</th>
          <th scope="col">DBMS</th>
          <th scope="col">java</th>
          <th scope="col">data science</th>
          <th scope="col">ai</th>
          <th scope="col">total</th>
          <th scope="col">percentage</th>
          <th scope="col">grade</th>
          <th scope="col">result</th>
          <th scope="col">Action</th>

        </tr>
      </thead>
      <tbody>
        <?php
        include "include/connection.php";
        $sq = "SELECT res_id,res_reg,os,co,java,dbms,ds,ai,(os+co+java+dbms+ds+ai)as total,((os+co+java+dbms+ds+ai)/(70*6) * 100) as per FROM result";
        $res = mysqli_query($con, $sq) or die("query failed");
        if (mysqli_num_rows($res) > 0) {
          $i = 1;
          while ($row = mysqli_fetch_assoc($res)) {
        ?>
            <tr>
              <th scope="row"><?php echo $i++ ?></th>
              <td><?php echo $row['res_reg'] ?></td>
              <td><?php echo $row['os'] ?></td>
              <td><?php echo $row['co'] ?></td>
              <td><?php echo $row['java'] ?></td>
              <td><?php echo $row['dbms'] ?></td>
              <td><?php echo $row['ds'] ?></td>
              <td><?php echo $row['ai'] ?></td>
              <td><?php echo $row['total'] ?></td>
              <td><?php echo $row['per'] ?></td>
              <td><?php
                  $grade = '';
                  if ($row['per'] > 90)
                    $grade = 'o';
                  if ($row['per'] > 80 and $row['per'] < 90)
                    $grade = 'e';
                  if ($row['per'] > 70 and $row['per'] < 80)
                    $grade = 'b+';
                  if ($row['per'] > 60 and $row['per'] < 70)
                    $grade = 'b';
                  if ($row['per'] > 50 and $row['per'] < 60)
                    $grade = 'c';
                  if ($row['per'] > 35 and $row['per'] < 50)
                    $grade = 'd';
                  if ($row['per'] < 35)
                    $grade = 'f';
                  echo $grade;
                  ?>
              </td>
              <td>
                <?php
                $result='';
                if ($row['per'] > 35){
                  $result='pass';}
                else {
                  $result='fail';}
                echo $result;
                ?></td>
              <td>
                <a href="resupdate.php?sid=<?php echo $row['res_id'] ?>" class="btn btn-success">Update</a>
                <a href="resdlt.php?sid=<?php echo $row['res_id'] ?>" class="btn btn-danger">Delete</a>

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

<script src="javascript/main.js"> </script>

</body>

</html>