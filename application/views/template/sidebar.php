<aside class="main-sidebar">
	<section class="sidebar">
		<div class="user-panel">
			<div class="pull-left image">
				<img src="<?= base_url() ?>assets/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>Arky Ikfarikza Khoiron</p>
				<p>161240000552</p>
			</div>
		</div>
		<!-- <form action="#" method="get" class="sidebar-form">
			<div class="input-group">
				<input type="text" name="q" class="form-control" placeholder="Search...">
				<span class="input-group-btn">
					<button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
					</button>
				</span>
			</div>
		</form> -->
		<ul class="sidebar-menu" data-widget="tree">
			<!-- <li class="header"><a href="<?= base_url() ?>">Dashboard</a></li> -->
			<!-- <li class="active"><a href="#"><i class="fa fa-link"></i> <span>Link</span></a></li> -->
			<li><a href="<?= base_url(); ?>mahasiswa"><i class="fa fa-database"></i> <span>Data Mahasiswa</span></a></li>
			<li><a href="<?= base_url(); ?>mahasiswa/log"><i class="fa fa-database"></i> <span>Riwayat</span></a></li>
			<!-- <li class="treeview">
				<a href="#"><i class="fa fa-link"></i> <span>Multilevel</span>
					<span class="pull-right-container">
						<i class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
				<ul class="treeview-menu">
					<li><a href="#">Link in level 2</a></li>
					<li><a href="#">Link in level 2</a></li>
				</ul>
			</li> -->
		</ul>
	</section>
</aside>