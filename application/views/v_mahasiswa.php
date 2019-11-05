<!-- <?php var_dump($mahasiswa); ?> -->
<div class="content-wrapper">
	<section class="content-header">
		<h1>
			Data Tables
			<small>advanced tables</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li><a href="#">Tables</a></li>
			<li class="active">Data tables</li>
		</ol>
	</section>
	<section class="content">
		<div class="row">
			<div class="col-xs-12">
				<div class="box">
					<div class="box-header">
						<!-- <h3 class="box-title">Data Table With Full Features</h3> -->
						<a href="" class="btn bg-olive btn-flat margin">Tambah Data</a>
					</div>
					<div class="box-body">
						<table id="example1" class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>No</th>
									<th>NIM</th>
									<th>Nama</th>
									<th>Jenis Kelamin</th>
									<th>Alamat</th>
									<th>Telepon</th>
									<th>Aksi</th>
								</tr>
							</thead>
							<tbody>
								<?php
								$i = 1;
								foreach ($mahasiswa as $mhs) : ?>
									<tr>
										<td><?= $i++; ?></td>
										<td><?= $mhs['nim']; ?></td>
										<td><?= $mhs['nama']; ?></td>
										<td><?= $mhs['jk']; ?></td>
										<td><?= $mhs['alamat']; ?></td>
										<td><?= $mhs['telp']; ?></td>
										<td>
											<a class="btn btn-default btn-flat" title="Ubah"><i class="fa fa-edit"></i></a>
											<a class="btn btn-default btn-flat" title="Hapus"><i class="fa fa-trash"></i></a>
										</td>
									</tr>
								<?php endforeach; ?>
							</tbody>
							<tfoot>
								<tr>
									<th>No</th>
									<th>NIM</th>
									<th>Nama</th>
									<th>Jenis Kelamin</th>
									<th>Alamat</th>
									<th>Telepon</th>
									<th>Aksi</th>
								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
