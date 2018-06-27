<?php
	$sql_lietkehd="select * from cart order by id desc ";
	$row_lietkehd=mysql_query($sql_lietkehd);

?>
</div>

<table width="100%" border="1">
  <tr>
    <td>ID</td>
    <td>Tên khách hàng</td>
    <td>Ngày đặt</td>
  </tr>
  <?php
  $i=1;
  while($dong=mysql_fetch_array($row_lietkehd))
  {
  ?>
  <tr>
    <td><?php  echo $i;?></td>
    <td><?php echo $dong['fullname'] ?></td>
    <td><?php echo $dong['createdate'] ?></td>
  </tr>
  <?php
  $i++;
  }
  ?>
</table>
