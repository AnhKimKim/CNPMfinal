<center><h2 style="background-color: #FFCCFF;width: 700px; font-weight: bold;color: #990033;font-size: 30px;font-family: Arial;border-radius: 10px;" ><?php echo $cateName['CategoryName']; ?></h2></center>
<hr>
<div class="main-ver2">
    <div class="fs-ihotslale hsalebotpro">
        <div class="owl-carousel fsihots owl-loaded owl-drag">
            <div class="owl-stage-outer">   
                <div style="margin-left: 80px" class="owl-stage">

<?php
    if(count($result)<1){
        echo "<center><h2>Không có sản phẩm nào</h2></center>";
        return;
    }
    foreach($result as $row){
        // $chuoi = <<<EOD
            echo    "<div class=\"owl-item\" style=\"width: 200px;\">";
            echo    "<div class=\"item center\" style=\"text-align:center\">"   ;
            echo        "<p class=\"fs-icimg\">";
            echo            "<img class=\"lazy\" src=\"Upload/{$row['ImageUrl']}\" title=\"{$row['ProductName']}\">";
            echo        "</p>";
            echo        "<div class=\"fs-hsif\">";
            echo        "<p><b><a href=\"index.php?mod=products&act=detail&id={$row['ProductID']}\">{$row['ProductName']}</a></b></p>";
            echo        "<p class=\"fs-icpri\">Giá: ".number_format($row['Price'],0)."VND</p>";
            echo            "<div class=\"button\">";
            echo                "<a href=\"index.php?mod=products&act=detail&id={$row['ProductID']}\">";
            echo                "<button type=\"button\" class=\"btn btn-info\" id>CHI TIẾT</button>";
            echo                "</a>";
            echo                "<a href=\"Controller/Cart/Add.php?id={$row['ProductID']}\"  onclick=\"return insertCart({$row['ProductID']})\">";
            echo                    "<button type=\"button\" class=\"btn btn-info\">THÊM <i  class=\"fa fa-shopping-cart\"></i></button>";
            echo                "</a>";
            echo            "</div>";
            echo        "</div>";
            echo    "</div>";
            echo"</div>";               

                        // echo $chuoi;
    }
?>
                </div>
            </div>      
        </div>
    </div>
</div>