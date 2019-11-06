<div class="content-wrapper">
	<section class="content-header">
		<h1>
			Tambah Mahasiswa
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li><a href="#">Tables</a></li>
			<li class="active">Data tables</li>
		</ol>
	</section>
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box box-primary">
					<?= form_open(); ?>
					<div class="box-body">
						<?php if (validation_errors()) : ?>
							<div class="alert alert-danger alert-dismissible">
								<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
								<?= validation_errors() ?>
							</div>
						<?php endif; ?>
						<div class="form-group">
							<label for="nim">NIM</label>
							<input type="text" name="nim" class="form-control" id="nim" placeholder="Masukkan NIM">
						</div>
						<div class="form-group">
							<label for="nama">Nama</label>
							<input type="text" name="nama" class="form-control" id="nama" placeholder="Masukkan Nama">
						</div>
						<div class="form-group">
							<label for="jk">Jenis Kelamin</label>
							<div>
								<?= form_radio('jk', 'L', TRUE) ?>Laki- Laki
								<?= form_radio('jk', 'P', FALSE) ?> Perempuan
							</div>
						</div>
						<div class="form-group">
							<label for="alamat">Alamat</label>
							<input type="text" name="alamat" class="form-control" id="alamat" placeholder="Masukkan Alamat">
						</div>
						<div class="form-group">
							<label for="telp">Telepon</label>
							<input type="text" name="telp" class="form-control" id="telp" placeholder="Masukan Nomer Telepon">
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-flat">Simpan</button>
						</div>
					</div>
					<?= form_close(); ?>
				</div>
			</div>
		</div>
	</section>
</div>
