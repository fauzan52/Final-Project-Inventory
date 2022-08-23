<?php
require 'conn.php';
$conn = mysqli_connect("localhost", "root", "", "warehouse");
if (isset($_POST['search'])) {
    $date1 = date("Y-m-d", strtotime($_POST['date1']));
    $date2 = date("Y-m-d", strtotime($_POST['date2']));
    $query = mysqli_query($conn, "SELECT * FROM `stock` WHERE date(`tanggalbarang`) BETWEEN '$date1' AND '$date2'") or die(mysqli_error());
    $row = mysqli_num_rows($query);
    $a = 1;
    if ($row > 0) {
        while ($fetch = mysqli_fetch_array($query)) {
            $gambar = $fetch['image']; //ambil gambar
            if ($gambar == null) {
                //jika tidak ada gambar
                $img = 'No Photo';
            } else {
                //jika ada gambar
                $img = '<img src="images/' . $gambar . '" class="zoomable">';
            }
            ?>
            <tr>
                <td><?php echo $a++ ?></td>
                <td><?php echo $img; ?></td>
                <td><?php echo $fetch['tanggalbarang'] ?></td>
                <td><strong><a href="detail.php?id=<?= $fetch['idbarang']; ?>"><?= $fetch['namabarang']; ?>
                    </strong></a></td>
                <td><?php echo $fetch['deskripsi'] ?></td>
                <td><?php echo $fetch['stock'] ?></td>
                <td>
                    <button type="button" class="btn btn-warning"
                            data-toggle="modal"
                            data-target="#edit<?php echo $fetch['idbarang']?>">
                        Edit
                    </button>

                    <button type="button" class="btn btn-danger"
                            data-toggle="modal"
                            data-target="#delete<?= $fetch['idbarang'] ?>">
                        Delete
                    </button>

                </td>
            </tr>
            <?php
        }
    } else {
        echo '
			<tr>
				<td colspan = "4"><center>Record Not Found</center></td>
			</tr>';
    }
} else {
    $query = mysqli_query($conn, "SELECT * FROM `stock`") or die(mysqli_error());
    $b = 1;


    while ($fetch = mysqli_fetch_array($query)) {
        $gambar = $fetch['image']; //ambil gambar
        if ($gambar == null) {
            //jika tidak ada gambar
            $img = 'No Photo';
        } else {
            //jika ada gambar
            $img = '<img src="images/' . $gambar . '" class="zoomable">';
        }
        ?>
        <tr>
            <td><?php echo $b++ ?></td>
            <td><?php echo $img; ?></td>
            <td><?php echo $fetch['tanggalbarang'] ?></td>
            <td><strong><a href="detail.php?id=<?= $fetch['idbarang']; ?>"><?= $fetch['namabarang']; ?>
                </strong></a></td>
            <td><?php echo $fetch['deskripsi'] ?></td>
            <td><?php echo $fetch['stock'] ?></td>
            <td>
                <button type="button" class="btn btn-warning"
                        data-toggle="modal"
                        data-target="#edit<?php echo $fetch['idbarang'] ?>">
                    Edit
                </button>

                <button type="button" class="btn btn-danger"
                        data-toggle="modal"
                        data-target="#delete<?= $fetch['idbarang'] ?>">
                    Delete
                </button>
            </td>
        </tr>
        <?php
    }
}
?>