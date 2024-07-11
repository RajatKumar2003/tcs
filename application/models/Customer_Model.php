<?php date_default_timezone_set('Asia/Kolkata');
class Customer_Model extends CI_model{
//============================Login===========================//





public function getAllCustomer($id)
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
    return $this->db->get('customer_tbl')->result();
}

public function saveCustomer($data)
{
    $this->db->insert('customer_tbl', $data);

    // Check if the insertion was successful
    return $this->db->affected_rows() > 0;
}

public function findCustomer($id)
{
    $query = $this->db->get_where('customer_tbl', array('CustId' => $id));
    return $query->row();
}

public function updateCustomer($Id, $data)
    {
        $this->db->where('CustId', $Id);
        $this->db->update('customer_tbl', $data);
        return $this->db->affected_rows();
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