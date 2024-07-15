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
                    <h2><a href="<?php echo site_url('User') ?>" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i> Add User</a></h2>
                </div>
            </div>
            <div class="wrapper wrapper-content animated fadeInRight">
                <div class="row">

                    <div class="col-lg-12">
                        <div class="ibox float-e-margins">
                            <div class="ibox-content">

                                <form id="<?php echo ($editInvoice) ? "updateinvoice" : "addinvoice" ?>" action="<?php echo base_url() . 'UserRoles/add'; ?>" method="post">


                                    <fieldset>


                                        <div class="row ">
                                            <div class="col-lg-3">
                                                <div class="form-group">
                                                    <label for="">Customer  <span class="text-danger">*</span></label>
                                                    <input type="hidden" name="Id" value="<?= $editInvoice->InvoiceId; ?>">
                                                    <select name="CustomerName" id="" class="form-control" required>
                                                    <option value="">select customer</option>
                                                        <?php
                                                        if (!empty($customerlist)) {
                                                            foreach ($customerlist as $list) {

                                                                if($list->Name==$editInvoice->CustomerName)
                                                                {
                                                                    $option = "selected";
                                                                }

                                                                else {
                                                                    $option = "";
                                                                }


                                                        ?>

                                                                <option value="<?= $list->Name ?>" <?= $option ?> ><?= $list->Name ?></option>

                                                        <?php }
                                                        }

                                                        ?>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="col-lg-3">
                                                <div class="form-group">
                                                    <label for="">Year  <span class="text-danger">*</span></label>
                                                    <select name="InvoiceYear" id="yearDropdown" class="form-control" required>
                                                    <option value="">select year</option>
                                                        <?php
                                                        if (!empty($yearlist)) {
                                                            foreach ($yearlist as $list) {


                                                                if($list->Title==$editInvoice->InvoiceYear)
                                                                {
                                                                    $option = "selected";
                                                                }

                                                                else {
                                                                    $option = "";
                                                                }


                                                        ?>

                                                                <option value="<?= $list->Title ?>" <?= $option ?> ><?= $list->Title ?></option>

                                                        <?php }
                                                        }

                                                        ?>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="col-lg-3">
                                                <div class="form-group">
                                                    <label for="">Month  <span class="text-danger">*</span></label>
                                                    <select name="InvoiceMonth" id="monthDropdown" class="form-control" required>
                                                    <option value="">select month</option>
                                                        <?php
                                                        if (!empty($monthlist)) {
                                                            $i = 0;
                                                            foreach ($monthlist as $list) {

                                                                if($list->Title==$editInvoice->InvoiceMonth)
                                                                {
                                                                    $option = "selected";
                                                                }

                                                                else {
                                                                    $option = "";
                                                                }


                                                        ?>

                                                                <option value="<?= $list->Title ?>" <?= $option ?>  data-month="<?= $i++ ?>"><?= $list->Title ?></option>

                                                        <?php }
                                                        }

                                                        ?>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="col-lg-3">
                                                <div class="form-group">
                                                    <label for="">Place To Supply  <span class="text-danger">*</span></label>
                                                    <select name="PlaceToSupply" id="place-to-supply" class="form-control" required>
                                                    <option value="">select place</option>
                                                        <?php
                                                        if (!empty($statelist)) {
                                                            foreach ($statelist as $list) {

                                                                if($list->Title==$editInvoice->PlaceToSupply)
                                                                {
                                                                    $option = "selected";
                                                                }

                                                                else {
                                                                    $option = "";
                                                                }

                                                        ?>

                                                                <option value="<?= $list->Title ?>" <?= $option ?>  data-cgst="<?= $list->Cgst ?>" data-sgst="<?= $list->Sgst ?>" data-igst="<?= $list->Igst ?>">
                                                                    <?= $list->Title ?></option>

                                                        <?php }
                                                        } ?>

                                                    </select>




                                                </div>
                                            </div>

                                        </div>


                                        <div class="row">


                                        </div>

                                        <!-- <div class="col-lg-3">
                                           
                                            </div> -->






                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="ibox float-e-margins">

                                                    <div class="ibox-content" style="padding: 0;">

                                                        <div class="table-responsive">
                                                            <table class="table table-striped table-bordered table-hover  issue-tracker  " id="myTable">
                                                                <thead>
                                                                    <tr>
                                                                        <th>Sno</th>
                                                                        <th>Description  <span class="text-danger">*</span></th>
                                                                        <th>Rate  <span class="text-danger">*</span></th>
                                                                        <th>Qty</th>
                                                                       
                                                                        <th>Man Days  <span class="text-danger">*</span></th>
                                                                       
                                                                        <th>Amount</th>
                                                                        <th>Action</th>

                                                                    </tr>
                                                                </thead>
                                                                <tbody>
    <?php
    if (!empty($itemlist)) {
        $i = 1;
        foreach ($itemlist as $list1) {
            ?>
            <tr>
                <td><?= $i++ ?></td>
                <td>
                    <select name="ItemName[]" id="" class="itemname-dropdown" required>
                        <option value="">select description</option>
                        <?php
                        if (!empty($descriptionlist)) {
                            foreach ($descriptionlist as $list) {
                                $option = ($list->Title == $list1->ItemName) ? "selected" : "";
                                ?>
                                <option value="<?= $list->Title ?>" <?= $option ?>><?= $list->Title ?></option>
                                <?php
                            }
                        }
                        ?>
                    </select>
                </td>
                <td><input type="number" class="form-control rate" name="Rate[]" required value="<?= $list1->Rate; ?>"></td>
                <td><input type="number" class="form-control qty" name="Qty[]" value="<?= $list1->Qty; ?>"></td>
                <td><input type="number" class="form-control mandays" name="ManDays[]" required value="<?= $list1->ManDays; ?>"></td>
                <td>
                    <input type="hidden" name="Amount[]" id="amount">
                    <span class="amount"><?= $list1->Amount; ?></span>
                </td>
                <td>
                <?php if ($i == 2): // Show "Add Row" button only for the first row ?>
    <button class="add-row" type="button" style="background-color: transparent; border: none;">
        <i class="fa fa-plus btn btn-circle btn-primary"></i>
    </button>

<?php endif; ?>

                </td>
            </tr>
            <?php
        }
    }
    ?>
</tbody>

                                                                </tbody>
                                                                <tfoot class="text-right">

                                                                    <tr>
                                                                        <th colspan="9" class="text-right">Sub Total : <input type="hidden" name="TexableAmount" id="subtotal"> <span class="subtotal">000</span></th>
                                                                    </tr>
                                                                    <tr>
                                                                        <th colspan="9" class="text-right">Tax : <span class="tax">000</span></th>
                                                                    </tr>
                                                                    <tr>
                                                                        <th colspan="9" class="text-right">Grand Total :
                                                                            <input type="hidden" name="TotalAmount" id="grand-total">
                                                                            <input type="hidden" name="Cgst" id="Cgst">
                                                                            <input type="hidden" name="Sgst" id="Sgst">
                                                                            <input type="hidden" name="Igst" id="Igst">
                                                                            <span class="grand-total">

                                                                                000</span>
                                                                        </th>
                                                                    </tr>
                                                                    <!-- <td >000</td> -->


                                                                </tfoot>
                                                            </table>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>











                                        <div class="row" style="margin-top: 20px;">
                                            <div class="col-lg-12">
                                                <div class="form-group ">

                                                    <button type="reset" class="btn btn-danger fa-pull-right" style="margin: 0px 5px;">Reset</button>

                                                    <button type="submit" id="<?php echo $editInvoice ? 'update' : 'save'; ?>" class="btn btn-success ladda-button ladda-button-demo fa-pull-right" <?php if ($editInvoice) { ?> formaction='<?php echo base_url('updateemployee') ?>' <?php } ?>>
                                                        <i class="fa fa-bookmark"></i> <?php echo $editInvoice ? 'Update' : 'Add'; ?>
                                                    </button>







                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>

                                </form>
                            </div>
                        </div>

                    </div>

                    <div class="col-lg-12">
                        <div class="ibox float-e-margins">

                            <div class="ibox-content">

                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover  issue-tracker  ">
                                        <thead>
                                            <tr>
                                                <th>Id</th>
                                                <th>Invoice Nuber</th>
                                                <th>Customer Name</th>
                                                <th>Amount</th>
                                                <th>Invoice Date</th>
                                                <th>Prepared By</th>
                                                <th>Action</th>

                                            </tr>
                                        </thead>
                                        <tbody>

                                            <?php
                                            if (!empty($invoicelist)) {
                                                $i = 1;
                                                foreach ($invoicelist as $list) {  ?>

                                                    <tr>
                                                        <td><?php echo $i++; ?></td>
                                                        <td><?php echo $list->InvoiceNo; ?></td>
                                                        <td><?php echo $list->CustomerName; ?></td>
                                                        <td><?php echo $list->TotalAmount; ?></td>
                                                        <td><?php echo $list->CreatedAt; ?></td>
                                                        <td><?php echo $list->CreatedBy; ?></td>
                                                        <td>
                                                            <a href="<?php echo base_url('Invoice/') . 'editinvoice/' . $list->InvoiceId  ?>" class="btn btn-success btn-circle"><i class="fa fa-edit"></i>
                                                            </a>

                                                            <button class="btn btn-danger btn-circle" type="button" onclick="showConfirmation('<?php echo $list->InvoiceId  ?>')"><i class="fa fa-trash"></i>
                                                            </button>
                                                            <!-- <a href="" target="_blank" class="btn btn-warning btn-circle"><i class="fa fa-file-photo-o "></i></a> -->

                                                        </td>
                                                    </tr>

                                            <?php }
                                            }
                                            ?>

                                        </tbody>

                                    </table>
                                </div>

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
                    <button class="btn btn-primary btn-circle btn-sm fa-pull-right" style="margin: 0px 5px;" type="button" id="confirmYesButton"><i class="fa fa-check"></i> </button>
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

        function previewImage(src) {
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
                url: '<?php echo base_url() . 'Invoice/deleteinvoice'; ?>',
                method: 'POST',
                data: {
                    id: global_var
                },
                success: function(data) {
                    // Handle the success response
                    var $toast = toastr['success']('Invoice successfully deleted');
                    setTimeout(function() {
                        location.reload();
                    }, 2000)
                },
                error: function(error) {
                    // Handle the error response
                    var $toast = toastr['error']('Invoice not  deleted');

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
    <?php $this->load->view('Invoice/invoicejs'); ?>
    <script>
        $(document).ready(function() {
            $('.chosen-select').chosen({
                width: "100%"
            });
            $('.summernote').summernote();

            $('.onoffswitch-checkbox').change(function() {
                var isChecked = $(this).is(':checked');
                // $('#example1').prop('checked', isChecked);

                if (isChecked) {
                    $("#status").val('1')
                } else {
                    $("#status").val('0');
                }


            });
        });
    </script>

<script>

    
document.addEventListener('DOMContentLoaded', function() {

    $(document).on('change', '.itemname-dropdown', function() {
   

    var dropdownValues = [];
    var duplicateFound = false;

  

    $('.itemname-dropdown').each(function() {
        var value = $(this).val();
        if (dropdownValues.indexOf(value) !== -1) {
            duplicateFound = true;

            return false; // Exit each loop early
        }
        dropdownValues.push(value);
    });

    if (duplicateFound) {
        alert('Please choose a different value for each dropdown.');
       console.log(duplicateFound);
        // return;
    }

    if (duplicateFound==true) {
        $('#update').prop('disabled', true);
    } else {
        $('#update').prop('disabled', false);
    }

    // Refresh Select2 to reflect disabled options
    // $('.itemname-dropdown').select2();
});




const tableBody = document.querySelector('#myTable tbody');
const subtotalElement = document.querySelector('.subtotal');
const subtotalhidden = document.querySelector('#subtotal');
const taxElement = document.querySelector('.tax');
const grandTotalElement = document.querySelector('.grand-total');
const grandTotalHidden = document.querySelector('#grand-total');
const CgstHidden = document.querySelector('#Cgst');
const SgstHidden = document.querySelector('#Sgst');
const IgstHidden = document.querySelector('#Igst');
const addRowButton = document.querySelector('.add-row');

let serialNumber = 1; // Initial serial number

// Function to update serial numbers
function updateSerialNumbers() {
    const rows = tableBody.querySelectorAll('tr');
    rows.forEach((row, index) => {
        row.cells[0].textContent = index + 1; // Update serial number
    });
}

// Function to calculate amount
function calculateAmount(row) {
    const mandays = parseFloat(row.querySelector('.mandays').value) || 0;
    const rate = parseFloat(row.querySelector('.rate').value) || 0;
    const year = document.getElementById('yearDropdown').value;
    const month = document.getElementById('monthDropdown');
    const selectedMonth = month.options[month.selectedIndex];
    const monthValue = selectedMonth.getAttribute('data-month');
   

    // JavaScript months are 0-11, so we need to convert the selected month to this format
    var date = new Date(year, monthValue, 1);
    var lastDay = new Date(date.getFullYear(), date.getMonth() + 1, 0).getDate();

   

    // Now you need to fetch the rate for the selected item dynamically
    // Assuming you have a way to get rate from `descriptionlist` based on `selectedItem`
    

    const amount = (rate / lastDay * mandays).toFixed(3);
    row.querySelector('.amount').textContent = amount; // Update amount cell
    row.querySelector('#amount').value = amount; // Update amount hidden input

    // Update other dropdowns to disable the selected item
    
}




// Function to calculate subtotal, tax, and grand total
function calculateTotals() {
    let subtotal = 0;
    tableBody.querySelectorAll('tr').forEach(row => {
        const amount = parseFloat(row.querySelector('.amount').textContent) || 0;
        subtotal += amount;
    });

    subtotalElement.textContent = subtotal.toFixed(3);
    subtotalhidden.value = subtotal.toFixed(3);

    const placeToSupplySelect = document.getElementById('place-to-supply');
    const selectedOption = placeToSupplySelect.options[placeToSupplySelect.selectedIndex];
    const cgstPercent = parseFloat(selectedOption.getAttribute('data-cgst')) || 0;
    const sgstPercent = parseFloat(selectedOption.getAttribute('data-sgst')) || 0;
    const igstPercent = parseFloat(selectedOption.getAttribute('data-igst')) || 0;

    let tax = 0;
    if (igstPercent === 0) {
        // Calculate CGST and SGST
        const cgst = (subtotal * (cgstPercent / 100)).toFixed(3);
        const sgst = (subtotal * (sgstPercent / 100)).toFixed(3);

        CgstHidden.value = cgst;
        SgstHidden.value = sgst;

        tax = (parseFloat(cgst) + parseFloat(sgst)).toFixed(3);
    } else {
        // Calculate IGST
        tax = (subtotal * (igstPercent / 100)).toFixed(3);
        IgstHidden.value = tax;
    }

    taxElement.textContent = tax;

    const grandTotal = (subtotal + parseFloat(tax)).toFixed(3);
    grandTotalElement.textContent = grandTotal;
    grandTotalHidden.value = grandTotal;
    
    // Enable or disable add row button based on total rows
    if (tableBody.rows.length >= 3) {
        addRowButton.disabled = true;
    } else {
        addRowButton.disabled = false;
    }
}




// Add Row Functionality
addRowButton.addEventListener('click', function() {
    const lastRow = tableBody.rows[tableBody.rows.length - 1];
    const newRow = lastRow.cloneNode(true); // Clone the last row

   
    // Clear input values in the new row
    const inputs = newRow.querySelectorAll('input[type="number"]');
    inputs.forEach(input => input.value = '');

    // Update serial number in the new row
    serialNumber++;
    newRow.cells[0].textContent = serialNumber;

    // Set default dropdown value and calculate amount for the new row
   // Set default selection
    calculateAmount(newRow);

    // Append a remove button to the new row
    const removeBtn = document.createElement('i');
    removeBtn.classList.add('fa', 'fa-minus', 'btn', 'btn-circle', 'btn-danger', 'remove-row');
    removeBtn.addEventListener('click', function() {
        newRow.remove(); // Remove the row when remove button is clicked
        updateSerialNumbers(); // Update serial numbers after removing row
        calculateTotals(); // Recalculate totals after removing row
        addRowButton.disabled = false; // Enable add row button
    });
    newRow.cells[newRow.cells.length - 1].innerHTML = ''; // Clear previous button content
    newRow.cells[newRow.cells.length - 1].appendChild(removeBtn); // Append the remove button

    tableBody.appendChild(newRow); // Append the new row to the table body

    updateSerialNumbers(); // Update serial numbers after adding row
    calculateTotals(); // Recalculate totals after adding row
   
    // Disable add row button if total rows reach 3
    if (tableBody.rows.length >= 3) {
        addRowButton.disabled = true;
    }

    var dropdownValues = [];
    var duplicateFound = false;

  

    $('.itemname-dropdown').each(function() {
        var value = $(this).val();
        if (dropdownValues.indexOf(value) !== -1) {
            duplicateFound = true;

            return false; // Exit each loop early
        }
        dropdownValues.push(value);
    });

    if (duplicateFound) {
        alert('Please choose a different value for each dropdown.');
       console.log(duplicateFound);
        // return;
    }

    if (duplicateFound==true) {
        $('#update').prop('disabled', true);
    } else {
        $('#update').prop('disabled', false);
    }


    
});

// Remove Row Functionality (for existing rows)
tableBody.addEventListener('click', function(event) {
    if (event.target.classList.contains('remove-row')) {

        var dropdownValues = [];
        var duplicateFound = false;

      
   
        $('.itemname-dropdown').each(function() {
            var value = $(this).val();
            if (dropdownValues.indexOf(value) !== -1) {
                duplicateFound = true;

                return false; // Exit each loop early
            }
            dropdownValues.push(value);
        });

        if (duplicateFound) {
            alert('Please choose a different value for each dropdown.');
           console.log(duplicateFound);
            // return;
        }

        if (duplicateFound==true) {
            $('#update').prop('disabled', true);
        } else {
            $('#update').prop('disabled', false);
        }


        const row = event.target.closest('tr');
        row.remove(); // Remove the row
        updateSerialNumbers(); // Update serial numbers after removing row
        calculateTotals(); // Recalculate totals after removing row
        addRowButton.disabled = false; // Enable add row button
    }
});

// Event listeners to calculate amount on input change (Qty or Rate)
tableBody.addEventListener('input', function(event) {
    if (event.target.classList.contains('mandays') || event.target.classList.contains('rate')) {
        const row = event.target.closest('tr');
        calculateAmount(row); // Recalculate amount for the row
        calculateTotals(); // Recalculate totals after input change
    }
});

// Event listener for Place To Supply change
document.getElementById('place-to-supply').addEventListener('change', function() {
    calculateTotals(); // Recalculate totals on Place To Supply change
});

// Event listener for year change
document.getElementById('yearDropdown').addEventListener('change', function() {
    tableBody.querySelectorAll('tr').forEach(row => {
        calculateAmount(row); // Calculate amount for each row
    });
    calculateTotals(); // Recalculate totals after changing year
});

// Event listener for month change
document.getElementById('monthDropdown').addEventListener('change', function() {
    tableBody.querySelectorAll('tr').forEach(row => {
        calculateAmount(row); // Calculate amount for each row
    });
    calculateTotals(); // Recalculate totals after changing month
});

// $('.itemname-dropdown').select2({
//         placeholder: 'Select description',
//         allowClear: true
//     });




calculateTotals();
});

</script>

</body>

</html>