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
		$data['judul'] = 'Data Mahasiswa';
		$this->load->view('template/header', $data);
		$this->load->view('template/sidebar');
		$this->load->view('mahasiswa/v_mahasiswa', $data);
		$this->load->view('template/footer');
	}
	public function add()
	{
		$data['judul'] = 'Form Tambah Data Mahasiswa';
		$this->form_validation->set_rules('nim', 'NIM', 'required|numeric|max_length[12]'); // NOTE diambil berdasarkan name
		$this->form_validation->set_rules('nama', 'Nama', 'required|max_length[32]'); // NOTE diambil berdasarkan name
		$this->form_validation->set_rules('alamat', 'Alamat', 'required|max_length[32]'); // NOTE diambil berdasarkan name
		$this->form_validation->set_rules('telp', 'Telepon', 'required|numeric|max_length[13]'); // NOTE diambil berdasarkan name
		if ($this->form_validation->run() == FALSE) {
			$this->load->view('template/header', $data);
			$this->load->view('template/sidebar');
			$this->load->view('mahasiswa/v_tambah', $data);
			$this->load->view('template/footer');
		} else {
			$this->Mahasiswa_model->tambahDataMahasiswa();
			$this->session->set_flashdata('flash', 'Data Ditambahkan');
			redirect('mahasiswa');
		}
	}
	public function update()
	{ }
	public function delete()
	{ }
}
