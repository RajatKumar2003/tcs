<?php date_default_timezone_set('Asia/Kolkata');
class Year_Model extends CI_model{
//============================Login===========================//





public function getAllYear()
{

    // $this->db->where(array('IsDeleted'=>'0'));
    return $this->db->get('year_tbl')->result();
}

public function saveYear($data)
{
    $this->db->insert('year_tbl', $data);

    // Check if the insertion was successful
    return $this->db->affected_rows() > 0;
}

public function findYear($id)
{
    $query = $this->db->get_where('year_tbl', array('YearId' => $id));
    return $query->row();
}

public function updateYear($Id, $data)
    {
        $this->db->where('YearId', $Id);
        $this->db->update('year_tbl', $data);
        return $this->db->affected_rows() > 0;
    }

// public function totalqr()
// {

// }

public function findGallery($blogId)
{
    $query = $this->db->get_where('qr_tbl', array('QrId' => $blogId));
    return $query->row();
}

public function deleteYear($id)
{
    $this->db->where('YearId',$id);
   return $this->db->delete('year_tbl');
    // return $this->db->affected_rows() > 0;
}

//============================Login===========================//

//===========================/Login===========================//

//===========================/Login===========================//
} ?>