<?php
class Mahasiswa_model extends CI_Model
{
	public function getAllMahasiswa()
	{
		return $this->db->get('tampil_mhs')->result_array();

		/* $query = $this->db->get('tb_mhs');
		return $query->result_array(); */

		/* return $this->db->get('tb_mhs')->result_array(); */

		/* $this->db->select('*');
		$this->db->from('tb_mhs');
		$this->db->join('tb_log', 'tb_mhs.nim = tb_log.nim');
		return $this->db->get()->result_array(); */
	}

	public function tambahDataMahasiswa()
	{
		$data = [
			"nim" => $this->input->post('nim', true),
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
			"nim" => $this->input->post('nim', true),
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
		return $this->db->get('tampil_semua')->result_array();
	}
}
