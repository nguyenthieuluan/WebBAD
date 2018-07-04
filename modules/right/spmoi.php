<?php
	$sql_moinhat="select * from sanpham order by idsanpham desc limit 0,6";
	$row_moinhat=mysql_query($sql_moinhat);
?>
	<div class="tieude"><h4>Sản phẩm mới nhất</h4></div>
  	<ul class="product">
        	<?php
					while($dong_moinhat=mysql_fetch_array($row_moinhat)){
					?>
                    	<li><a href="?quanly=chitietsp&idloaisp=<?php echo $dong_moinhat['loaisp'] ?>&id=<?php echo $dong_moinhat['idsanpham'] ?>">
                        	<img src="admincp/modules/quanlysanpham/uploads/<?php echo $dong_moinhat['hinhanh'] ?>"/>
                            <p class="tensp"><?php echo $dong_moinhat['tensp'] ?></p>
                            <p class="giadesuat"><?php echo number_format($dong_moinhat['giadexuat']).' '.'VNĐ'?></p>
                        </a></li>
                      <?php
					}
					?>
      </ul>
  <div class="clear"></div>
 <?php
 	$sql_loai=mysql_query("select * from loaisp ");
	while($dong_loai=mysql_fetch_array($sql_loai)){
	echo '<div class="tieude"><h4>'.$dong_loai['tenloaisp'].'</h4></div>';
 	$sql_loaisp="select * from loaisp inner join sanpham on sanpham.loaisp=loaisp.idloaisp where sanpham.loaisp='".$dong_loai['idloaisp']."'";
	$row=mysql_query($sql_loaisp);
	$count=mysql_num_rows($row);
	if($count>0){
	?>
  <ul class="product">
  <?php
		while($dong=mysql_fetch_array($row))
		{
 	?>
  	<li><a href="?quanly=chitietsp&idloaisp=<?php echo $dong['loaisp'] ?>&id=<?php echo $dong['idsanpham'] ?>">
      	<img src="admincp/modules/quanlysanpham/uploads/<?php echo $dong['hinhanh'] ?>"/>
        <p class="tensp"><?php echo $dong['tensp']?></p>
        <p class="giadesuat"><?php echo number_format($dong['giadexuat']).' '.'VNĐ' ?></p></a>
		</li>
	<?php
		}}
		else{
		echo '<p style="margin:5px;font-style:italic;color:#000">Hiện chưa có sản phẩm...</p>';
	}
		?>
    </ul>
    <div class="clear"></div>
    <?php
	}
	?>
