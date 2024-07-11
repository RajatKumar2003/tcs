<?php date_default_timezone_set('Asia/Kolkata');
class State_Model extends CI_model{
//============================Login===========================//





public function getAllState()
{

    // $this->db->where(array('IsDeleted'=>'0'));
    return $this->db->get('state_tbl')->result();
}

public function saveState($data)
{
    $this->db->insert('state_tbl', $data);

    // Check if the insertion was successful
    return $this->db->affected_rows() > 0;
}

public function findState($id)
{
    $query = $this->db->get_where('state_tbl', array('StateId' => $id));
    return $query->row();
}

public function updateState($Id, $data)
    {
        $this->db->where('StateId', $Id);
        $this->db->update('state_tbl', $data);
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

public function deleteState($id)
{
    $this->db->where('StateId',$id);
   return $this->db->delete('state_tbl');
    // return $this->db->affected_rows() > 0;
}

//============================Login===========================//

//===========================/Login===========================//

//===========================/Login===========================//
} ?>