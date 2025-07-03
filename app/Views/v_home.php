<?= $this->extend('layout') ?>
<?= $this->section('content') ?>
<?php
if (session()->getFlashData('success')) {
?>
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        <?= session()->getFlashData('success') ?>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
<?php
}
?>
<div class="row">
    <?php foreach ($product as $key => $item) : ?>
        <div class="col-lg-6 col-md-6 col-sm-12 mb-4"> <?= form_open('keranjang') ?>
            <?php
            echo form_hidden('id', $item['id']);
            echo form_hidden('nama', $item['nama']);
            echo form_hidden('harga', $item['harga']);
            echo form_hidden('foto', $item['foto']);
            ?>
            <div class="card h-100 d-flex flex-column"> <div class="card-body d-flex flex-column align-items-center justify-content-between"> <div style="height: 200px; display: flex; align-items: center; justify-content: center; overflow: hidden; width: 100%;">
                        <img src="<?php echo base_url() . "img/" . $item['foto'] ?>" 
                             class="img-fluid" 
                             alt="..." 
                             style="max-height: 100%; width: auto; object-fit: contain;">
                        </div>
                    <h5 class="card-title text-center mt-3 mb-2 flex-grow-1"> <?php echo $item['nama'] ?><br>
                        <?php echo number_to_currency($item['harga'], 'IDR') ?>
                    </h5>
                    <button type="submit" class="btn btn-danger rounded-pill mt-auto">Beli</button> </div>
            </div>
            <?= form_close() ?>
        </div>
    <?php endforeach ?>
</div>
<?= $this->endSection() ?>