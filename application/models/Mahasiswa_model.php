<?php
class Mahasiswa_model extends CI_Model
{
	public function getAllMahasiswa()
	{
		/* $query = $this->db->get('tb_mhs'); // NOTE cara 1 mengambil isi tabel
		return $query->result_array(); */
		/* return $this->db->get('tb_mhs')->result_array(); */ // NOTE cara 2 mengambil isi tabel
		return $this->db->get('tampil_mhs')->result_array(); // NOTE cara mengambil data view database
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
	public function hapusDataMahasiswa($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('tb_mhs');
	}
	public function getMahasiswaById($id)
	{
		return $this->db->get_where('tb_mhs', ['id' => $id])->row_array();
	}
	public function ubahDataMahasiswa()
	{
		$data = [
			"nim" => $this->input->post('nim', true), // NOTE true untuk mengamankan data dari sql injection
			"nama" => $this->input->post('nama', true),
			"jk" => $this->input->post('jk', true),
			"alamat" => $this->input->post('alamat', true),
			"telp" => $this->input->post('telp', true)
		];
		$this->db->where('id', $this->input->post('id'));
		$this->db->update('tb_mhs', $data);
	}
	public function getLog()
	{
		return $this->db->get('tampil_log')->result_array();
	}
}
