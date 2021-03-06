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
		$data['judul'] = 'Data Mahasiswa';
		$data['mahasiswa'] = $this->Mahasiswa_model->getAllMahasiswa();
		$this->load->view('template/header', $data);
		$this->load->view('template/sidebar');
		$this->load->view('mahasiswa/v_mahasiswa', $data);
		$this->load->view('template/footer');
	}

	public function add()
	{
		$data['judul'] = 'Tambah Data Mahasiswa';
		$this->form_validation->set_rules('nim', 'NIM', 'required|numeric|max_length[12]');
		$this->form_validation->set_rules('nama', 'Nama', 'required|max_length[32]');
		$this->form_validation->set_rules('alamat', 'Alamat', 'required|max_length[32]');
		$this->form_validation->set_rules('telp', 'Telepon', 'required|numeric|max_length[13]');
		if ($this->form_validation->run() == FALSE) {
			$this->load->view('template/header', $data);
			$this->load->view('template/sidebar');
			$this->load->view('mahasiswa/v_tambah', $data);
			$this->load->view('template/footer');
		} else {
			$this->Mahasiswa_model->tambahDataMahasiswa();
			$this->session->set_flashdata('flash', 'Data berhasil ditambahkan!');
			redirect('mahasiswa');
		}
	}

	public function update($id)
	{
		$data['judul'] = 'Ubah Data Mahasiswa';
		$data['mahasiswa'] = $this->Mahasiswa_model->getMahasiswaById($id);
		$this->form_validation->set_rules('nim', 'NIM', 'required|numeric|max_length[12]');
		$this->form_validation->set_rules('nama', 'Nama', 'required|max_length[32]');
		$this->form_validation->set_rules('alamat', 'Alamat', 'required|max_length[32]');
		$this->form_validation->set_rules('telp', 'Telepon', 'required|numeric|max_length[13]');
		if ($this->form_validation->run() == FALSE) {
			$this->load->view('template/header', $data);
			$this->load->view('template/sidebar');
			$this->load->view('mahasiswa/v_ubah', $data);
			$this->load->view('template/footer');
		} else {
			$this->Mahasiswa_model->ubahDataMahasiswa($id);
			$this->session->set_flashdata('flash', 'Data berhasil diubah!');
			redirect('mahasiswa');
		}
	}

	public function delete($id)
	{
		$this->Mahasiswa_model->hapusDataMahasiswa($id);
		$this->session->set_flashdata('flash', 'Data berhasil dihapus!');
		redirect('mahasiswa');
	}

	public function log()
	{
		$data['mahasiswa'] = $this->Mahasiswa_model->getLog();
		$data['judul'] = 'Riwayat Data Telepon Mahasiswa';
		$this->load->view('template/header', $data);
		$this->load->view('template/sidebar');
		$this->load->view('mahasiswa/v_log', $data);
		$this->load->view('template/footer');
	}
}
