<?php

class Mahasiswa_model extends CI_Model
{
	public function getAllMahasiswa()
	{
		// $query = $this->db->get('tb_mhs');
		// return $query->result_array();
		return $this->db->get('tb_mhs')->result_array();
		/* join tb_mhs dan tb_log
		$this->db->select('*');
		$this->db->from('tb_mhs');
		$this->db->join('tb_log', 'tb_mhs.id = tb_log.id');
		return $this->db->get()->result_array(); */
	}
}
