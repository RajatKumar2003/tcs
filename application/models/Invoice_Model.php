<?php date_default_timezone_set('Asia/Kolkata');
class Invoice_Model extends CI_model{


public function getAllInvoice()
{

    // $this->db->where(array('IsDeleted'=>'0'));
    if($this->session->userdata('userType')!='admin')
    {
        $this->db->where('CreatedBy',$this->session->userdata('userName'));
    }
    return $this->db->get('invoice_tbl')->result();
}

public function saveitemData($inserted_id)
{
    $itemname = $this->input->post('ItemName');
    $itemqty = $this->input->post('Qty');
    $itemrate = $this->input->post('Rate');
    $itemamount = $this->input->post('Amount');
    $mandays = $this->input->post('ManDays');

    // if (empty($itemname) || empty($itemqty) || empty($itemrate) || empty($itemamount) || count($itemname) || count($itemqty) || count($itemrate) != count($itemamount)) {
    //     return false; // Titles and values should be non-empty and of equal length
    // }

    $data = [];
    foreach ($itemname as $key => $name) {
        $specificData = [
            "itemname" => $name,
            "itemqty" => $itemqty[$key],
            "itemrate" => $itemrate[$key],
            "itemamount" => $itemamount[$key],
            "mandays" => $mandays[$key],
            "invoiceid" => $inserted_id,
        ];
        $data[] = $specificData;
    }

    foreach ($data as $specific) {
        $insertData = [
            'InvoiceId' => $specific['invoiceid'],
            'ItemName' => $specific['itemname'],
            'Qty' => $specific['itemqty'],
            'Rate' => $specific['itemrate'],
            'Amount' => $specific['itemamount'],
            'ManDays' => $specific['mandays'],
           
        ];
        if (!$this->db->insert('invoice_item_tbl', $insertData)) {
            return false; // Return false on first insertion failure
        }
    }

    return true;
}


public function updateitemData($id)
{
    $itemname = $this->input->post('ItemName');
    $itemqty = $this->input->post('Qty');
    $itemrate = $this->input->post('Rate');
    $itemamount = $this->input->post('Amount');
    $mandays = $this->input->post('ManDays');

    // if (empty($itemname) || empty($itemqty) || empty($itemrate) || empty($itemamount) || count($itemname) || count($itemqty) || count($itemrate) != count($itemamount)) {
    //     return false; // Titles and values should be non-empty and of equal length
    // }

    $this->db->where('InvoiceId',$id);
    $this->db->delete('invoice_item_tbl');

    

    $data = [];
    foreach ($itemname as $key => $name) {
        $specificData = [
            "itemname" => $name,
            "itemqty" => $itemqty[$key],
            "itemrate" => $itemrate[$key],
            "itemamount" => $itemamount[$key],
            "mandays" => $mandays[$key],
            "invoiceid" => $id,
        ];
        $data[] = $specificData;
    }

    foreach ($data as $specific) {
        $insertData = [
            'InvoiceId' => $specific['invoiceid'],
            'ItemName' => $specific['itemname'],
            'Qty' => $specific['itemqty'],
            'Rate' => $specific['itemrate'],
            'Amount' => $specific['itemamount'],
            'ManDays' => $specific['mandays'],
           
        ];
        if (!$this->db->insert('invoice_item_tbl', $insertData)) {
            return false; // Return false on first insertion failure
        }
    }

    return true;
}


public function saveInvoice($data)
{
   $savedinvoice =   $this->db->insert('invoice_tbl', $data);

   if($savedinvoice)
   {
    $inserted_id = $this->db->insert_id();
    $saveditemData = $this->saveitemData($inserted_id);
   }

   else {
    $saveditemData = '';
   }

   return $saveditemData;

    // Check if the insertion was successful
    // return $this->db->affected_rows() > 0;
}

public function findInvoice($id)
{
    $query = $this->db->get_where('invoice_tbl', array('InvoiceId' => $id));
    return $query->row();
}

public function findInvoiceItem($id)
{
    $query = $this->db->get_where('invoice_item_tbl', array('InvoiceId' => $id));
    return $query->result();
}

public function updateInvoice($Id, $data)
    {
        $this->db->where('InvoiceId', $Id);
      $updateinvoice =  $this->db->update('invoice_tbl', $data);

      if($updateinvoice)
      {
        $updateditemData = $this->updateitemData($Id);
      }

      else{
        $updateditemData = "";
      }

      return $updateditemData;
       
    }

// public function totalqr()
// {

// }

public function findGallery($blogId)
{
    $query = $this->db->get_where('qr_tbl', array('QrId' => $blogId));
    return $query->row();
}

public function deleteInvoice($id)
{
    $this->db->where('InvoiceId',$id);
    $this->db->delete('invoice_tbl');

   $this->db->where('InvoiceId',$id);
   return  $this->db->delete('invoice_item_tbl');
    // return $this->db->affected_rows() > 0;
}

//============================Login===========================//

//===========================/Login===========================//

//===========================/Login===========================//
} ?>