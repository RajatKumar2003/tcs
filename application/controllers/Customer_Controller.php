<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Customer_Controller extends CI_Controller
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
        $this->load->model('Customer_Model');

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
        $this->data['pagename'] = "Customers";
        $this->data['editCustomer'] = "";
        $this->data['customerlist'] = $this->Customer_Model->getAllCustomer('1||0');
        // $this->data['totalqr'] = $this->db->count_all('qr_tbl');
        $this->load->view('customer/index', $this->data);
    }

    public function savecustomer()
    {
        $customerData = array(
            'Name'=> empty($this->input->post('name'))?'not available': $this->input->post('name'),
            'ContactPerson'=> empty($this->input->post('contactperson'))?'not available': $this->input->post('contactperson'),
            'ContactNumber'=> empty($this->input->post('contactnumber'))?'not available': $this->input->post('contactnumber'),
            'Email'=> empty($this->input->post('email'))?'not available': $this->input->post('email'),
            'GstNo'=> empty($this->input->post('gstno'))?'not available': $this->input->post('gstno'),
            'CinNo'=> empty($this->input->post('cinno'))?'not available': $this->input->post('cinno'),
            'PanNo'=> empty($this->input->post('panno'))?'not available': $this->input->post('panno'),
            'Address'=> empty($this->input->post('address'))?'not available': $this->input->post('address'),
            'Status'=> empty($this->input->post('status'))? 0: $this->input->post('status'),
        );

        $result = $this->Customer_Model->saveCustomer($customerData);
        if ($result) {
            $response = array("res" => true, 'message' => 'Blog added successfully.');
        } else {
            $response = array('res' => false, 'message' => 'An unexpected error occurred');
        }

        echo json_encode($response);


    }

    public function editcustomer($id)
    {
        if ($id != "") {
            $catData = $this->Customer_Model->findCustomer($id);
            $this->data['editCustomer'] = $catData;
        } else {
            $this->data['editCustomer'] = "";
        }

        $this->data['pagename'] = "Edit Customer";
        $this->data['customerlist'] = $this->Customer_Model->getAllCustomer('1||0');
        // $this->data['totalqr'] = $this->db->count_all('qr_tbl');
        $this->load->view('customer/index', $this->data);
    }

    public function updatecustomer()
    {
        $id = $this->input->post('Id');

        $customerData = array(
            'Name'=> empty($this->input->post('name'))?'not available': $this->input->post('name'),
            'ContactPerson'=> empty($this->input->post('contactperson'))?'not available': $this->input->post('contactperson'),
            'ContactNumber'=> empty($this->input->post('contactnumber'))?'not available': $this->input->post('contactnumber'),
            'Email'=> empty($this->input->post('email'))?'not available': $this->input->post('email'),
            'GstNo'=> empty($this->input->post('gstno'))?'not available': $this->input->post('gstno'),
            'CinNo'=> empty($this->input->post('cinno'))?'not available': $this->input->post('cinno'),
            'PanNo'=> empty($this->input->post('panno'))?'not available': $this->input->post('panno'),
            'Address'=> empty($this->input->post('address'))?'not available': $this->input->post('address'),
            'Status'=> empty($this->input->post('status'))? 0: $this->input->post('status'),
        );

        $result = $this->Customer_Model->updateCustomer($id, $customerData);
        if ($result) {
            $response = array("res" => true, 'message' => 'User Role updated successfully.');
        } else {
            $response = array('res' => false, 'message' => 'An unexpected error occurred');
        }
        echo json_encode($response);
    }

    public function deletemonth()
    {
        $Id = $_POST['id'];
        if ($Id != "") {
            $result = $this->Month_Model->deleteMonth($Id);
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


    public function savegallery()
    {

        $galleryData = array();


        $config['upload_path'] = './uploads/qrcode';

        $config['allowed_types'] = 'gif|jpg|png|webp|jpeg';

        // $config['max_size'] = 1000; 

        // $config['width'] = 200;

        // $config['height'] = 200;

        $this->load->library('upload', $config);

        if (!$this->upload->do_upload('image')) {

            $response = array('res' => false, 'message' => $this->upload->display_errors());
        } else {

            $this->data = array('upload_data' => $this->upload->data());

            $fileName = $this->data['upload_data']['file_name'];

            $galleryData['ImagePath'] = $fileName;

            // echo'<br>';print_r($blogData);exit;

            $result = $this->Qrcode_Model->savegallery($galleryData);
            if ($result) {
                $response = array("res" => true, 'message' => 'Blog added successfully.');
            } else {
                $response = array('res' => false, 'message' => 'An unexpected error occurred');
            }

            echo json_encode($response);
        }
    }




    public function deletegallery()
    {
        $galleryId = $_POST['id'];



        if ($galleryId != "") {

            $existGallery = $this->Qrcode_Model->findGallery($galleryId);

            $old_filename = $existGallery->ImagePath;
            if ($old_filename && file_exists('./uploads/qrcode/' . $old_filename)) {
                unlink('./uploads/qrcode/' . $old_filename);
                $result = $this->Qrcode_Model->deletegallery($galleryId);
                if ($result) {
                    $response = array("res" => true, 'message' => 'Role deleted successfully.');
                } else {
                    $response = array('res' => false, 'message' => 'Unable to delete blog.');
                }
            } else {
                $response = array('res' => false, 'message' => 'An unexpected error occurred.');
            }
        } else {
            $response = array('res' => false, 'message' => 'An unexpected error occurred.');
        }

        echo json_encode($response);
    }
}
