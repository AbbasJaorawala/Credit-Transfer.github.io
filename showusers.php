<?php
include 'db.php';

$query = "SELECT * FROM users ORDER BY u_id";
$run = $con->query($query);
if($run){
    // success!
}else{
    // error
}

?>

<div id="content" style="text-align: center;">
 <p>Click on a particular <b>name</b> to know their respective credits</p>

<div align="center" style="display: inline-block;">

  <table style="width: 200px; padding-left: 20px; padding-right: 20px;">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Credits</th>
        </tr>

    <?php
        while($row = $run->fetch_array()):
    ?>
    <tr>
        <td><?php echo $row['u_id']; ?></td>
        <td><?php

echo '<a href= "#" onclick= \'viewParticularPerson("' . $row['name']. '"' . ', '. $row['credits'] . ', ' . $row['u_id'] .')\' style="text-decoration: none; color: white; ">'. $row['name'] .'</a> ';

?>
        </td>
        <td><?php echo $row['email']; ?></td>
        <td><?php echo $row['credits'] ?></td>
    </tr>

    <?php
        endwhile;
    ?>
    </table>
</div>


</div>
