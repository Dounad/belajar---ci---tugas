<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

        <li class="nav-item">
            <a class="nav-link <?php echo (uri_string() == '') ? "" : "collapsed" ?>" href=".">
                <i class="bi bi-grid text-black"></i>
                <span>Home</span>
            </a>
        </li><!-- End Home Nav -->

        <li class="nav-item">
            <a class="nav-link <?php echo (uri_string() == 'keranjang') ? "" : "collapsed" ?>" href="keranjang">
                <i class="bi bi-cart-check text-black"></i>
                <span>Keranjang</span>
            </a>
        </li><!-- End Keranjang Nav -->
        <?php
        if (session()->get('role') == 'admin') {
        ?>
            <li class="nav-item">
                <a class="nav-link <?php echo (uri_string() == 'produk') ? "" : "collapsed" ?>" href="produk">
                    <i class="bi bi-receipt text-black"></i>
                    <span>Produk</span>
                </a>
            </li><!-- End Produk Nav -->

            
            <li class="nav-item">
                <a class="nav-link <?php echo (uri_string() == 'kategoriproduk') ? "" : "collapsed" ?>" href="kategoriproduk">
                    <i class="bi bi-receipt text-black"></i>
                    <span>Kategori Produk</span>
                </a>
            </li><!-- End ProdukKategori Nav -->
        <?php
        }
        ?>
        <li class="nav-item">
        <a class="nav-link collapsed" href="<?= base_url('diskon') ?>">
             <i class="bi bi-percent text-black"></i><span>Diskon</span>
        </a>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php echo (uri_string() == 'profile') ? "" : "collapsed" ?>" href="profile">
                <i class="bi bi-person text-black"></i>
                <span>Profile</span>
            </a>
        </li> <!-- End Profile Nav -->

        <li class="nav-item">
            <a class="nav-link <?php echo (uri_string() == 'faq') ? "" : "collapsed" ?>" href="faq">
                <i class="bi bi-question-circle text-black"></i>
                <span>FAQ</span>
            </a>
        </li><!--End FAQ Nav -->

        <li class="nav-item">
            <a class="nav-link <?php echo (uri_string() == 'contact') ? "" : "collapsed" ?>" href="contact">
                <i class="bi bi-envelope text-black"></i>
                <span>Contact</span>
            </a>
        </li><!-- End Contact Nav -->
    </ul>

</aside><!-- End Sidebar-->