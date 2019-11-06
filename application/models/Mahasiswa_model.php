<?php
class Mahasiswa_model extends CI_Model
{
	public function getAllMahasiswa()
	{
		// NOTE cara 1 mengambil isi tabel
		/* $query = $this->db->get('tb_mhs');
		return $query->result_array(); */
		// NOTE cara 2 mengambil isi tabel
		return $this->db->get('tb_mhs')->result_array();
		// NOTE cara join isi tabel
		/* $this->db->select('*');
		$this->db->from('tb_mhs');
		$this->db->join('tb_log', 'tb_mhs.id = tb_log.id');
		return $this->db->get()->result_array(); */
	}
	public function tambahDataMahasiswa()
	{
		$data = [
			"nim" => $this->input->post('nim', true), // NOTE true untuk mengamankan data dari sql injection
			"nama" => $this->input->post('nama', true),
			"jk" => $this->input->post('jk', true),
			"alamat" => $this->input->post('alamat', true),
			"telp" => $this->input->post('telp', true)
		];
		$this->db->insert('tb_mhs', $data);
	}
}
