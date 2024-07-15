<?php date_default_timezone_set('Asia/Kolkata');
class Month_Model extends CI_model{
//============================Login===========================//





public function getAllMonth($id)
{

    if (strpos($id, '||') !== false) {
        // Multiple values scenario
        $statuses = explode('||', $id);
    } else {
        // Single value scenario
        $statuses = array($id);
    }

    $this->db->where_in('Status', $statuses);
    // $this->db->where(array('IsDeleted'=>'0'));
    return $this->db->get('month_tbl')->result();
}

public function savemonth($data)
{
    $this->db->insert('month_tbl', $data);

    // Check if the insertion was successful
    return $this->db->affected_rows() > 0;
}

public function findMonth($id)
{
    $query = $this->db->get_where('month_tbl', array('MonthId' => $id));
    return $query->row();
}

public function updateMonth($Id, $data)
    {
        $this->db->where('MonthId', $Id);
        $this->db->update('month_tbl', $data);
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

public function deleteMonth($id)
{
    $this->db->where('MonthId',$id);
   return $this->db->delete('month_tbl');
    // return $this->db->affected_rows() > 0;
}

//============================Login===========================//

//===========================/Login===========================//

//===========================/Login===========================//
} ?>