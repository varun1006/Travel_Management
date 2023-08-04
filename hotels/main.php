
<!doctype html>
<html>
    <head>
        <title>HOTELS</title>
        <?php
        include 'link.php';
        ?>
         <?php
        include 'style.php';
        ?>
    </head>

    <body>
        <div class="main-div">
            <h1>List of all the packages</h1>
            <div class="">
                <div>
                    <table>
                    <thead>
                        <tr class="table-active">
                            <td>Ho_id</td>
                            <td>HO_name</td>
                            <td>HO_amount</td>
                            <td>HO_Address</td>
                            <td>HO_checkin</td>
                            <td>HO_checkout</td>
                            <td>HO_type</td>
                            



                        </tr>
                    </thead>

                    <tbody>

                    <?php

                            include 'connection.php';

                            $selectquery = "select * from hotel";

                            $query = mysqli_query($con,$selectquery);

                            $num = mysqli_num_rows($query);

                            // $res = mysqli_fetch_array($query);

                            while($res = mysqli_fetch_array($query))
                            {
                            ?>

                                <tr>
                                <td><?php echo $res['ho_id'];?></td>
                                <td><?php echo $res['ho_name'];?></td>
                                <td><?php echo $res['ho_amount'];?></td>
                                <td><?php echo $res['ho_address'];?></td>
                                <td><?php echo $res['ho_checkin'];?></td>
                                <td><?php echo $res['ho_checkout'];?></td>
                                <td><?php echo $res['ho_type'];?></td>
                                <td><a href="../book.php" class="btn">Book</a></td>
                            </tr>




                        <?php       




                            }

                            ?>
                       
                    </tbody>
                    </table>
                </div>
            </div>
        </div>

    </body>
</html>