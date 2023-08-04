
<!doctype html>
<html>
    <head>
        <title>Table</title>
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
                            <td>Pak_id</td>
                            <td>pak_name</td>
                            <td>Pak_amount</td>
                            <td>pak_type</td>
                            



                        </tr>
                    </thead>

                    <tbody>

                    <?php

                            include 'connection.php';

                            $selectquery = "select * from packages";

                            $query = mysqli_query($con,$selectquery);

                            $num = mysqli_num_rows($query);

                            // $res = mysqli_fetch_array($query);

                            while($res = mysqli_fetch_array($query))
                            {
                            ?>

                                <tr>
                                <td><?php echo $res['pak_id'];?></td>
                                <td><?php echo $res['pak_name'];?></td>
                                <td><?php echo $res['pak_amount'];?></td>
                                <td><?php echo $res['pak_type'];?></td>
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