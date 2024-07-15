<!DOCTYPE html>
<html>

<head>
    <?php $this->load->view('layouts/TopHeader'); ?>
    <link href="<?php echo base_url('assets/') ?>css/plugins/dataTables/datatables.min.css" rel="stylesheet">

</head>

<body>

    <div id="wrapper">

        <?php $this->load->view('layouts/SideBar'); ?>

        <div id="page-wrapper" class="gray-bg">

            <?php $this->load->view('layouts/Header'); ?>

            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2><?php echo $pagename; ?></h2>
                    <ol class="breadcrumb">
                        <li>
                            <a href="index.html">Home</a>
                        </li>

                    </ol>
                </div>
                <div class="col-lg-2">
                <!-- <h2><a href="<?php echo site_url('Customer') ?>" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i> Add Customer</a></h2> -->
                </div>
            </div>
           
            <div class="wrapper wrapper-content">
            <div class="row animated fadeInRight">
                <div class="col-md-4">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>Image</h5>
                        </div>
                        <div>
                            <div class="ibox-content no-padding border-left-right">
                                <img alt="image" class="img-responsive" src="<?= base_url('assets/admin/img/logo/user.png') ?>">
                            </div>
                            <div class="ibox-content profile-content">
                               
                                
                                
                              
                            </div>
                    </div>
                </div>
                    </div>
                <div class="col-md-8">
                    <div class="ibox float-e-margins">
                        <div class="ibox-title">
                            <h5>Profile Detail</h5>
                          
                        </div>
                        <div class="ibox-content">


                          <form id="updateuser" method="post">
                            <fieldset>

                            <div class="row">
                                <div class="col-lg-6">
                                <label for=""> Name</label>
                                               <input type="hidden" name="Id" value="<?php echo ($editUser) ? $editUser->UserId : ''; ?>">
                                               <input type="text" name="FullName" value="<?php echo ($editUser) ? $editUser->FullName : ''; ?>" class="form-control">
                                </div>

                                <div class="col-lg-6">
                                <div class="form-group">
                                                        <label for="">Number</label>
                                                        <input type="text" class="form-control" name="Phone" value="<?php echo ($editUser) ? $editUser->Phone : ''; ?>">
                                                    </div>
                                </div>
                            </div>

                               <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                    <label for="">User Id</label>
                                    <input type="text" class="form-control" name="Username" value="<?php echo ($editUser) ? $editUser->Username : ''; ?>">
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                                    <div class="form-group">
                                                        <label for="">Password</label>
                                                        <input type="text" class="form-control" name="Password" value="<?php echo ($editUser) ?  $editUser->Password : ''; ?>">
                                                    </div>
                                                </div>

                               </div>

                               <div class="row">
                                <div class="col-lg-6">
                                <div class="form-group">
                                                        <label for="">Email</label>
                                                        <input type="email" name="Email" class="form-control" value="<?php echo ($editUser) ? $editUser->Email : ''; ?>">
                                                       <input type="hidden" name="UserType" value="<?= $this->session->userdata('userType') ?>">
                                                       <input type="hidden" name="UserStatus" value="1">
                                                    </div>
                                </div>

                                <div class="col-lg-6">
                                <div class="form-group" style="padding-top: 24px;">
                               

<!-- <button type="reset" class="btn btn-danger fa-pull-right" style="margin: 0px 5px;">Reset</button> -->

<button type="submit" id="<?php echo $editUser ? 'update' : 'save'; ?>" class="btn btn-success ladda-button ladda-button-demo fa-pull-right form-control" style="text-decoration: none; background-color: #477EDD !important; color:white" <?php if ($editUser) { ?> formaction='<?php echo base_url('updateemployee') ?>' <?php } ?>>
<i class="fa fa-bookmark"></i> <?php echo $editUser ? 'Update' : 'Add'; ?>
</button>







</div>
                                </div>
                               </div>

                            </fieldset>
                          </form>
                          

                        </div>
                    </div>

                </div>
            </div>
        </div>

            <div class="footer">
                <div class="pull-right">
                    10GB of <strong>250GB</strong> Free.
                </div>
                <div>
                    <strong>Copyright</strong> Example Company &copy; 2014-2017
                </div>
            </div>

        </div>
    </div>

<!-- Bootstrap modal for confirmation -->
<div class="modal animated fadeInRight" tabindex="-1" role="dialog" id="confirmationModal" style="left: 950px; top:-20px;">
  <div class="modal-dialog" role="document" style="width: 321px;">

  
    <div class="modal-content">
     
      <div class="modal-body" style="padding: 12px !important;">
        Are you sure you want to perform this action?

     
      </div>
      <div class="modal-footer" style="padding: 12px !important;">
      <button class="btn btn-primary btn-circle btn-sm fa-pull-right" style="margin: 0px 5px;" type="button" id="confirmYesButton" ><i class="fa fa-check"></i> </button>
      <button class="btn btn-danger btn-circle btn-sm fa-pull-right" style="margin: 0px 5px;" id="confirmNoButton" data-dismiss="modal" type="button"><i class="fa fa-trash"></i> </button>
     
      </div>
    </div>
  </div>
</div>

<div class="modal animated fadeInRight" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="staticBackdropLabel"></h1>
        <!-- <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> -->
      </div>
      <div class="modal-body">
        <img src="" id="previewimage" alt="" style="width: 200px;">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" id="closemodal" data-bs-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>

<!-- Button to trigger the confirmation -->
<!-- <button onclick="showConfirmation()">Perform Action</button> -->


    <!-- Mainly scripts -->

    <?php $this->load->view('layouts/TopFooter'); ?>
    <script src="<?php echo base_url('assets/admin/') ?>js/plugins/dataTables/datatables.min.js"></script>

    <!-- Custom and plugin javascript -->
<script>

var global_var = "10";

function imagechange(event) {
        var input = event.target;
        var file = input.files[0];
        var reader = new FileReader();
        var preview = document.getElementById('previewimage');
        var uploadBtn = document.getElementById('uploadBtn');

        reader.onloadend = function() {
        preview.src = reader.result;
    }
        // Update file name display

        if (input.files.length > 0) {
      uploadBtn.removeAttribute('disabled');
    } else {
      uploadBtn.setAttribute('disabled', 'disabled');
    }
      
        if (file) {
        reader.readAsDataURL(file);
    } else {
        preview.src = "";
    }
        // Call previewImage() to show preview in modal
        // previewImage(file);
    }

        function previewImage(src)
        {
            $('#staticBackdrop').modal('show');

            $('#closemodal').on('click', function() {
                $('#staticBackdrop').modal('hide');
            });
            // $("#previewimage").attr("src",src);
        }

function showConfirmation(Id) {
  $('#confirmationModal').modal('show');
  global_var = Id;
  
  $('#confirmNoButton').on('click', function() {
    $('#confirmationModal').modal('hide');
  });
}

$('#confirmYesButton').on('click', function() {
  // When "Yes" is clicked, get the value of global_var
  var value = global_var;
  
  // Perform the AJAX function here, after global_var is assigned
  performAjaxFunction(value);
  $('#confirmationModal').modal('hide');
});


function performAjaxFunction(global_var) {
            // Perform your AJAX request here


            $.ajax({
                url: '<?php echo base_url() . 'User/deleteuser'; ?>',
                method: 'POST',
                data: {
                    id: global_var
                },
                success: function(data) {
                    // Handle the success response
                    var $toast = toastr['success']('User successfully deleted');
                    setTimeout(function() {
                        location.reload();
                    }, 2000)
                },
                error: function(error) {
                    // Handle the error response
                    var $toast = toastr['error']('User not  deleted');

                    setTimeout(function() {
                        location.reload();
                    }, 2000)
                }
            });
        }

</script>

    <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function() {
            $('.dataTables-example').DataTable({
                pageLength: 25,
                responsive: true,
                dom: '<"html5buttons"B>lTfgitp',
                buttons: [{
                        extend: 'copy'
                    },
                    {
                        extend: 'csv'
                    },
                    {
                        extend: 'excel',
                        title: 'ExampleFile'
                    },
                    {
                        extend: 'pdf',
                        title: 'ExampleFile'
                    },

                    {
                        extend: 'print',
                        customize: function(win) {
                            $(win.document.body).addClass('white-bg');
                            $(win.document.body).css('font-size', '10px');

                            $(win.document.body).find('table')
                                .addClass('compact')
                                .css('font-size', 'inherit');
                        }
                    }
                ]

            });

        });
    </script>
    <?php $this->load->view('User/userjs'); ?>
    <script>
        $(document).ready(function(){
            $('.chosen-select').chosen({width: "100%"});
            $('.summernote').summernote();

            $('.onoffswitch-checkbox').change(function() {
        var isChecked = $(this).is(':checked');
        // $('#example1').prop('checked', isChecked);

        if(isChecked)
        {
           $("#status").val('1')
        }

        else{
           $("#status").val('0');
        }

      
    });
        });
    </script>

</body>

</html>