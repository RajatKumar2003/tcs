<?php date_default_timezone_set('Asia/Kolkata');
class Role_Model extends CI_model{
//============================Login===========================//





public function getAllRole($id)
{

    if (strpos($id, '||') !== false) {
        // Multiple values scenario
        $statuses = explode('||', $id);
    } else {
        // Single value scenario
        $statuses = array($id);
        $this->db->where('Title !=', 'admin');
    }

    $this->db->where_in('Status', $statuses);
    // $this->db->where(array('IsDeleted'=>'0'));
    return $this->db->get('role_tbl')->result();
}

public function saveRole($data)
{
    $this->db->insert('role_tbl', $data);

    // Check if the insertion was successful
    return $this->db->affected_rows() > 0;
}

public function findRole($id)
{
    $query = $this->db->get_where('role_tbl', array('RoleId' => $id));
    return $query->row();
}

public function updateRole($Id, $data)
    {
        $this->db->where('RoleId', $Id);
        $this->db->update('role_tbl', $data);
        return $this->db->affected_rows() > 0;
    }




public function deleteRole($id)
{
    $this->db->where('RoleId',$id);
   return $this->db->delete('role_tbl');
    // return $this->db->affected_rows() > 0;
}

//============================Login===========================//

//===========================/Login===========================//

//===========================/Login===========================//
} ?>