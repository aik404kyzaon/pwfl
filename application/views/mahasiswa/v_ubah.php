<div class="content-wrapper">
	<section class="content-header">
		<h1>
			Ubah Mahasiswa
		</h1>
	</section>
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box box-primary">
					<?= form_open(); ?>
					<input type="hidden" name="id" value="<?= $mahasiswa['id']; ?>">
					<div class="box-body">
						<!-- <?php if (validation_errors()) : ?>
							<div class="alert alert-danger alert-dismissible">
								<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
								<?= validation_errors() ?>
							</div>
						<?php endif; ?> -->
						<div class="form-group">
							<label for="nim">NIM</label>
							<input type="text" name="nim" class="form-control" id="nim" value="<?= $mahasiswa['nim']; ?>" placeholder=" Masukkan NIM">
							<small class="text-form text-danger"><?= form_error('nim'); ?></small>
						</div>
						<div class="form-group">
							<label for="nama">Nama</label>
							<input type="text" name="nama" class="form-control" id="nama" value="<?= $mahasiswa['nama']; ?>" placeholder="Masukkan Nama">
							<small class="text-form text-danger"><?= form_error('nama'); ?></small>
						</div>
						<div class="form-group">
							<label for="jk">Jenis Kelamin</label>
							<div>
								<?= form_radio('jk', 'L', $mahasiswa['jk'] == 'L' ? 'checked' : '', TRUE) ?>Laki- Laki
								<?= form_radio('jk', 'P', $mahasiswa['jk'] == 'P' ? 'checked' : '', TRUE) ?> Perempuan
								<!-- <input type="radio" name="jk" id="jk" value="L" <?= $mahasiswa['jk'] == 'L' ? 'checked' : '' ?>>Laki-Laki
								<input type="radio" name="jk" id="jk" value="P" <?= $mahasiswa['jk'] == 'P' ? 'checked' : '' ?>>Perempuan -->
							</div>
						</div>
						<div class="form-group">
							<label for="alamat">Alamat</label>
							<input type="text" name="alamat" class="form-control" id="alamat" value="<?= $mahasiswa['alamat']; ?>" placeholder="Masukkan Alamat">
							<small class="text-form text-danger"><?= form_error('alamat'); ?></small>
						</div>
						<div class="form-group">
							<label for="telp">Telepon</label>
							<input type="text" name="telp" class="form-control" id="telp" value="<?= $mahasiswa['telp']; ?>" placeholder="Masukan Nomer Telepon">
							<small class="text-form text-danger"><?= form_error('telp'); ?></small>
						</div>
						<div class="form-group">
							<button type="submit" name="ubah" class="btn btn-primary btn-flat">Ubah</button>
						</div>
					</div>
					<?= form_close(); ?>
				</div>
			</div>
		</div>
	</section>
</div>