<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Invoice_Controller extends CI_Controller
{

    private $userName;
    private $userId;

    public function __construct()
    {
        parent::__construct();

        $this->userId = $this->session->userdata('user_id');
        $this->userName = $this->session->userdata('username');

        if (!isset($this->userId)) {
            redirect('login');
        }

        $this->load->model('Login_model');
        // $this->load->model('Inquiry_Model');
        $this->load->model('Qrcode_Model');
        $this->load->model('Seo_Model');
        $this->load->model('Invoice_Model');
        $this->load->model('Customer_Model');
        $this->load->model('Year_Model');
        $this->load->model('Month_Model');
        $this->load->model('State_Model');
        $this->load->model('Description_Model');
        

        // Fetch data and store in $this->data
        $this->loadDashboardData();
    }

    private function loadDashboardData()
    {
        $this->data['editseo'] = $this->Seo_Model->findSeo('1');
        // $this->data['contactnotify'] = $this->Inquiry_Model->TotalContactInquiry();
    }




    public function index()
    {
        $this->data['pagename'] = "Invoices";
        $this->data['editUser'] = "";
        $this->data['customerlist'] = $this->Customer_Model->getAllCustomer('1');
        $this->data['yearlist'] = $this->Year_Model->getAllYear('1');
        $this->data['monthlist'] = $this->Month_Model->getAllMonth('1');
        $this->data['statelist'] = $this->State_Model->getAllState('1');
        $this->data['descriptionlist'] = $this->Description_Model->getAllDescription('1');
        $this->data['invoicelist'] = $this->Invoice_Model->getAllInvoice();
        // $this->data['monthlist'] = $this->Month_Model->getAllMonth();
        // $this->data['totalqr'] = $this->db->count_all('qr_tbl');
        $this->load->view('invoice/index', $this->data);
    }

    public function saveinvoice()
    {

        $itemName = $this->input->post('ItemName'); // Assuming 'ItemName' is an array from POST

        if (!empty($itemName)) {
            $category = ''; // Initialize category variable outside the loop
        
            foreach ($itemName as $name) {
                if ($name == "Security Guard" || $name == "Security Supervisor") {
                    // Append "Guarding Service" to the category if it's not already included
                    if (strpos($category, "Guarding Service") === false) {
                        $category .= "Guarding Service, ";
                    }
                } elseif ($name == "House Keeping Staff") {
                    // Append "House Keeping Service" to the category if it's not already included
                    if (strpos($category, "House Keeping Service") === false) {
                        $category .= "House Keeping Service, ";
                    }
                } else {
                    // Handle other cases here, if needed
                }
            }
        
            // Remove trailing comma and space, if any
            $category = rtrim($category, ', ');
        
            // Output the category determined
           
        }
        

        $invoiceData = array(
            'InvoiceNo'=>'14335454',
            'InvoiceYear'=> empty($this->input->post('InvoiceYear'))?'not available': $this->input->post('InvoiceYear'),
            'InvoiceMonth'=> empty($this->input->post('InvoiceMonth'))?'not available': $this->input->post('InvoiceMonth'),
            'PlaceToSupply'=> empty($this->input->post('PlaceToSupply'))?'not available': $this->input->post('PlaceToSupply'),
            'CustomerName'=> empty($this->input->post('CustomerName'))?'not available': $this->input->post('CustomerName'),
            'Cgst'=> empty($this->input->post('Cgst'))?'not available': $this->input->post('Cgst'),
            'Sgst'=> empty($this->input->post('Sgst'))?'not available': $this->input->post('Sgst'),
            'Igst'=> empty($this->input->post('Igst'))?'not available': $this->input->post('Igst'),
            'TexableAmount'=> empty($this->input->post('TexableAmount'))?'not available': $this->input->post('TexableAmount'),
            'TotalAmount'=> empty($this->input->post('TotalAmount'))?'not available': $this->input->post('TotalAmount'),
            'ItemCategory'=>$category,
            'HsnCode'=> 'hsni9999',
            'CreatedBy'=> empty($this->session->userdata('userName'))?'not available':$this->session->userdata('userName'),
        );

        $result = $this->Invoice_Model->saveInvoice($invoiceData);
        if ($result) {
            $response = array("res" => true, 'message' => 'Blog added successfully.');
        } else {
            $response = array('res' => false, 'message' => 'An unexpected error occurred');
        }

        echo json_encode($result);


    }

    public function editinvoice($id)
    {
        if ($id != "") {
            $catData = $this->Invoice_Model->findInvoice($id);

            if($catData == "")
            {
                return redirect('Invoice');
            }

            else{

                $this->data['pagename'] = "Edit Invoice";
                $this->data['editInvoice'] = $catData;
                $this->data['customerlist'] = $this->Customer_Model->getAllCustomer('1');
                $this->data['yearlist'] = $this->Year_Model->getAllYear('1');
                $this->data['monthlist'] = $this->Month_Model->getAllMonth('1');
                $this->data['statelist'] = $this->State_Model->getAllState('1');
                $this->data['descriptionlist'] = $this->Description_Model->getAllDescription('1');
                $this->data['invoicelist'] = $this->Invoice_Model->getAllInvoice();
                $this->data['itemlist'] = $this->Invoice_Model->findInvoiceItem($id);
                // $this->data['totalqr'] = $this->db->count_all('qr_tbl');
                $this->load->view('invoice/edit', $this->data);
            }

           
        } else {
            return redirect('Invoice');
        }

       
    }

    public function updateinvoice()
    {
        $id = $this->input->post('Id');

        $itemName = $this->input->post('ItemName'); // Assuming 'ItemName' is an array from POST

        if (!empty($itemName)) {
            $category = ''; // Initialize category variable outside the loop
        
            foreach ($itemName as $name) {
                if ($name == "Security Guard" || $name == "Security Supervisor") {
                    // Append "Guarding Service" to the category if it's not already included
                    if (strpos($category, "Guarding Service") === false) {
                        $category .= "Guarding Service, ";
                    }
                } elseif ($name == "House Keeping Staff") {
                    // Append "House Keeping Service" to the category if it's not already included
                    if (strpos($category, "House Keeping Service") === false) {
                        $category .= "House Keeping Service, ";
                    }
                } else {
                    // Handle other cases here, if needed
                }
            }
        
            // Remove trailing comma and space, if any
            $category = rtrim($category, ', ');
        
            // Output the category determined
           
        }
        

        $invoiceData = array(
            'InvoiceNo'=>'14335454',
            'InvoiceYear'=> empty($this->input->post('InvoiceYear'))?'not available': $this->input->post('InvoiceYear'),
            'InvoiceMonth'=> empty($this->input->post('InvoiceMonth'))?'not available': $this->input->post('InvoiceMonth'),
            'PlaceToSupply'=> empty($this->input->post('PlaceToSupply'))?'not available': $this->input->post('PlaceToSupply'),
            'CustomerName'=> empty($this->input->post('CustomerName'))?'not available': $this->input->post('CustomerName'),
            'Cgst'=> empty($this->input->post('Cgst'))?'not available': $this->input->post('Cgst'),
            'Sgst'=> empty($this->input->post('Sgst'))?'not available': $this->input->post('Sgst'),
            'Igst'=> empty($this->input->post('Igst'))?'not available': $this->input->post('Igst'),
            'TexableAmount'=> empty($this->input->post('TexableAmount'))?'not available': $this->input->post('TexableAmount'),
            'TotalAmount'=> empty($this->input->post('TotalAmount'))?'not available': $this->input->post('TotalAmount'),
            'ItemCategory'=>$category,
            'HsnCode'=> 'hsni9999',
        );

        $result = $this->Invoice_Model->updateInvoice($id,$invoiceData);
        if ($result) {
            $response = array("res" => true, 'message' => 'Blog added successfully.');
        } else {
            $response = array('res' => false, 'message' => 'An unexpected error occurred');
        }

        echo json_encode($result);
    }

    public function deleteinvoice()
    {
        $Id = $_POST['id'];
        if ($Id != "") {
            $result = $this->Invoice_Model->deleteInvoice($Id);
            if ($result) {
                $response = array("res" => true, 'message' => 'Role deleted successfully.');
            } else {
                $response = array('res' => false, 'message' => 'Unable to delete blog.');
            }
        } else {
            $response = array('res' => false, 'message' => 'An unexpected error occurred.');
        }

        echo json_encode($response);
    }


    public function printinvoice($id)
    {
        // $this->load->view('matrimonial_print');

//    $profile_id = $this->input->get('profile_id');
//    //  $data['profile'] = $this->Main_model->profile_view($profile_id);
 
//        $this->load->library('pdf');
     
//    $html = $this->Main_model->profile_view($profile_id);
//    $this->dompdf->set_option('isRemoteEnabled',TRUE);
  
//   $this->dompdf->loadHtml($html);
         
//    // (Optional) Setup the paper size and orientation
//    $this->dompdf->setPaper('A4', 'portrait');
   
//    // Render the HTML as PDF
//    $this->dompdf->render();
   
//    // Output the generated PDF (1 = download and 0 = preview)
//    $this->dompdf->stream("profile_".$profile_id.".pdf", array("Attachment"=>0));
$printinvoice =  $this->Invoice_Model->findInvoice($id);
$this->data['printinvoice'] = $printinvoice;
$this->data['customer'] = $this->Customer_Model->findCustomerByName($printinvoice->CustomerName);
$this->data['state'] = $this->State_Model->findStateByName($printinvoice->PlaceToSupply);
$this->data['itemlist'] = $this->Invoice_Model->findInvoiceItem($id);


// $profile_id = $this->input->get('profile_id');
// //  $data['profile'] = $this->Main_model->profile_view($profile_id);

//     $this->load->library('pdf');
  
// $html = ;
// $this->dompdf->set_option('isRemoteEnabled',TRUE);

// $this->dompdf->loadHtml($html);
      
// // (Optional) Setup the paper size and orientation
// $this->dompdf->setPaper('A4', 'portrait');

// // Render the HTML as PDF
// $this->dompdf->render();

// // Output the generated PDF (1 = download and 0 = preview)
// $this->dompdf->stream("profile_".$profile_id.".pdf", array("Attachment"=>0));


$this->load->view('invoice/print', $this->data);
    }

   }
