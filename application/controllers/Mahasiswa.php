<?php
class Mahasiswa extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('Mahasiswa_model');
	}
	public function index()
	{
		$this->load->model('Mahasiswa_model');
		$data['mahasiswa'] = $this->Mahasiswa_model->getAllMahasiswa();
		$data['judul'] = 'Daftar Mahasiswa';
		$this->load->view('template/header');
		$this->load->view('template/sidebar');
		$this->load->view('v_mahasiswa', $data);
		$this->load->view('template/footer');
	}
	public function add()
	{ }
	public function update()
	{ }
	public function delete()
	{ }
}
