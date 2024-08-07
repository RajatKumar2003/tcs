<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin_Controller extends CI_Controller {

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
        $this->load->model('Seo_Model');
        // $this->load->model('Inquiry_Model');
        
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
       
        //  $this->data['pagename'] = "Inquiry Details";
        //  $this->data['contactlist'] =  $this->Inquiry_Model->getAllContact();
        //  $this->data['productinquirylist'] = $this->Inquiry_Model->getAllProductInquiry();
        $this->load->view('admin/index', $this->data);
    }

}
?>
