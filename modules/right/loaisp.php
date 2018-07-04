<?php
	$sql_loaisp="select * from sanpham where sanpham.loaisp='$_GET[id]'";
	$num_loaisp=mysql_query($sql_loaisp);
	$count=mysql_num_rows($num_loaisp);

?>
<?php
	$sql_tenloaisp="select tenloaisp from loaisp where idloaisp='$_GET[id]' ";
	$row=mysql_query($sql_tenloaisp);
	$dong=mysql_fetch_array($row);
?>

	<div class="tieude">
		<h4><?php echo $dong['tenloaisp'] ?></h4>
	</div>
  <ul class="product">
    <?php
			if($count>0)
			{
				while($dong_loaisp=mysql_fetch_array($num_loaisp))
				{
				?>
        	<li>
						<a href="?quanly=chitietsp&idloaisp=<?php echo $dong_loaisp['loaisp'] ?>&id=<?php echo $dong_loaisp['idsanpham'] ?>">
              <img src="admincp/modules/quanlysanpham/uploads/<?php echo $dong_loaisp['hinhanh'] ?>"/>
              <p class="tensp"><?php echo $dong_loaisp['tensp'] ?></p>
              <p class="giadesuat"><?php echo $dong_loaisp['giadexuat'] ?></p>
              <p>Chi tiết</p>
						</a>
					</li>
          <?php
				}}
				else{
					echo 'Hiện chưa có sản phẩm...';
				}
					?>
    </ul>
