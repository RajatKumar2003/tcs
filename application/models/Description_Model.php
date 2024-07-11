<?php date_default_timezone_set('Asia/Kolkata');
class Description_Model extends CI_model{
//============================Login===========================//





public function getAllCategory($id)
{

    if (strpos($id, '||') !== false) {
        // Multiple values scenario
        $statuses = explode('||', $id);
    } else {
        // Single value scenario
        $statuses = array($id);
    }

    $this->db->where_in('Status', $statuses);

    return $this->db->get('description_category_tbl')->result();
}

public function saveCategory($data)
{
    $this->db->insert('description_category_tbl', $data);

    // Check if the insertion was successful
    return $this->db->affected_rows() > 0;
}

public function findCategory($catId)
{
    $query = $this->db->get_where('description_category_tbl', array('CatId' => $catId));
    return $query->row();
}



public function updateCategory($Id, $data)
    {
        $this->db->where('CatId', $Id);
        $this->db->update('description_category_tbl', $data);
        return $this->db->affected_rows();
    }



public function deleteCategory($id)
{
    $this->db->where('CatId',$id);
   return $this->db->delete('description_category_tbl');
    // return $this->db->affected_rows() > 0;
}


public function getAllDescription($id)
{

    if (strpos($id, '||') !== false) {
        // Multiple values scenario
        $statuses = explode('||', $id);
    } else {
        // Single value scenario
        $statuses = array($id);
    }

    $this->db->where_in('Status', $statuses);

    return $this->db->get('description_tbl')->result();
}

public function savedescription($data)
{
    $this->db->insert('description_tbl', $data);

    // Check if the insertion was successful
    return $this->db->affected_rows() > 0;
}

public function findDescription($catId)
{
    $query = $this->db->get_where('description_tbl', array('DescId' => $catId));
    return $query->row();
}

public function updateDescription($Id,$data)
{
    $this->db->where('DescId', $Id);
    $this->db->update('description_tbl', $data);
    return $this->db->affected_rows();
}

public function deleteDescription($id)
{
    $this->db->where('DescId',$id);
   return $this->db->delete('description_tbl');
    // return $this->db->affected_rows() > 0;
}
//============================Login===========================//

//===========================/Login===========================//

//===========================/Login===========================//
} ?>