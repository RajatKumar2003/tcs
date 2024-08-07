<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Description_Controller extends CI_Controller
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
        $this->load->model('Description_Model');
        $this->load->model('Seo_Model');

        // Fetch data and store in $this->data
        $this->loadDashboardData();
    }

    private function loadDashboardData()
    {
        $this->data['editseo'] = $this->Seo_Model->findSeo('1');
        // $this->data['contactnotify'] = $this->Inquiry_Model->TotalContactInquiry();
    }


    public function category()
    {
        $this->data['pagename'] = "Description Category";
        $this->data['editCategory'] = "";
        $this->data['categorylist'] = $this->Description_Model->getAllCategory('1||0');
        $this->load->view('description/category', $this->data);
    }


    public function savecategory()
    {
        $categoryData = array(
            'Title' => $this->input->post('title'),
            'Status' => $this->input->post('status'),
        );

        $result = $this->Description_Model->saveCategory($categoryData);

        if ($result) {
            $response = array("res" => true, 'message' => 'Category added successfully.');
        } else {
            $response = array('res' => false, 'message' => 'An unexpected error occurred');
        }

        echo json_encode($response);
    }

    public function editcategory($catId)
    {
        if ($catId != "") {
            $catData = $this->Description_Model->findCategory($catId);
            $this->data['editCategory'] = $catData;
        } else {
            $this->data['editCategory'] = "";
        }

        $this->data['pagename'] = "Edit Category";
        $this->data['categorylist'] = $this->Description_Model->getAllCategory('1||0');
        $this->load->view('description/category', $this->data);
    }

    public function updatecategory()
    {
        $cat_id = $this->input->post('Id');

        $updateData = array(
            'Title' => $this->input->post('title'),
            'Status' => $this->input->post('status'),
        );

        $result = $this->Description_Model->updateCategory($cat_id, $updateData);
        if ($result) {
            $response = array("res" => true, 'message' => 'User Role updated successfully.');
        } else {
            $response = array('res' => false, 'message' => 'An unexpected error occurred');
        }
        echo json_encode($response);
    }


    public function deletecategory()
    {
        $catId = $_POST['id'];
        if ($catId != "") {
            $result = $this->Description_Model->deleteCategory($catId);
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

    public function index()
    {
        $this->data['pagename'] = "Description";
        $this->data['editDescription'] = "";
        $this->data['descriptioncategory'] = $this->Description_Model->getAllCategory('1');
        $this->data['descriptionlist'] = $this->Description_Model->getAllDescription('1||0');
        $this->load->view('description/description', $this->data);
    }

    public function editdescription($descId)
    {
        if ($descId != "") {
            $descData = $this->Description_Model->findDescription($descId);

            if ($descData == "") {
                return redirect('Description');
            } else {
                $this->data['pagename'] = "Edit Description";
                $this->data['editDescription'] = $descData;
                $this->data['descriptioncategory'] = $this->Description_Model->getAllCategory('1');
                $this->data['descriptionlist'] = $this->Description_Model->getAllDescription('1||0');
                $this->load->view('description/description', $this->data);
            }
        } else {
            return redirect('Description');
        }
    }

    public function savedescription()
    {


        $descData = array(

            // 'Category' => $this->input->post('category'),
            'Title' => $this->input->post('title'),
            'Status' => $this->input->post('status'),

        );


        $result = $this->Description_Model->savedescription($descData);
        if ($result) {
            $response = array("res" => true, 'message' => 'Blog added successfully.');
        } else {
            $response = array('res' => false, 'message' => 'An unexpected error occurred');
        }

        echo json_encode($response);
    }


    public function updatedescription()
    {
        $desc_id = $this->input->post('Id');

        $updatedData = array(

            'Category' => $this->input->post('category'),
            'Title' => $this->input->post('title'),
            'Status' => $this->input->post('status'),

        );

     
        $result = $this->Description_Model->updateDescription($desc_id, $updatedData);


        if ($result) {
            $response = array("res" => true, 'message' => 'Blog updated successfully.');
        } else {
            $response = array('res' => false, 'message' => 'An unexpected error occurred.');
        }

        echo json_encode($response);

       
    }

    public function deletedescription()
    {
        $descId = $_POST['id'];
        if ($descId != "") {
            $result = $this->Description_Model->deleteDescription($descId);
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
}
