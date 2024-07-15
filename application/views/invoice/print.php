<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $editseo->SiteTitle ?>| invoice</title>

    <!-- Css link -->
    <link rel="stylesheet" href="index.css">

    <!-- Bootstrap link -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

  <style>
    *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* main section */
.tax .pan{
    border: none;
    border-left: 4px solid black;
    padding-left: 10px;
}
/* tax section */
.tax .to{
    border: 2px solid black;
    border-left: none;
}
.tax .from{
    border: 2px solid black;
    border-right: none;
}

/* Bill-month section */
.bill-month .container{
    border: none;
    border-top: 2px solid black;
    border-bottom: 2px solid black;
}

/* annexure */
.total-amount{
    border: none;
    border-top: 2px solid black;
    border-bottom: 2px solid black;
}
.responsive-table table {
    width: 100%;
    border-collapse: collapse;
}

.responsive-table th, .responsive-table td {
    text-align: center;
    border: 1px solid #000;
    padding: 8px;
}

.responsive-table th {
    background-color: #f2f2f2;
}

.responsive-table {
    overflow-x: auto;
}

/* Deliver-address */
.delivery-add .add{
    border: 2px solid black;
    border-left: none;
}


/* Media query */
@media (max-width: 576px){
    .tax .to{
        border: 2px solid black;
        
    }
    .tax .from{
        border: 2px solid black;
    }
    .tax .pan{
        border: none;
    }
}
  </style>

</head>
<!-- onload="self.print() -->
<body class="mx-0 px-0" >


    <!-- Main section -->
    <section class="main">
        <div class="container">
            <div class="row align-items-start">
            <div class="col-md-3 col-6 order order-0 order-sm-0">
                <img src="<?= base_url('uploads/seo/').$editseo->Logo; ?>" alt="" class="img-fluid">
            </div>
            <div class="col-md-6 col-12 mx-auto text-center order order-2 order-sm-1">
                <div class="display-6 text-uppercase text-decoration-underline fw-bold my-2">Tax invoice</div>
                <h4><?= $editseo->SiteTitle; ?></h4>
                <h6 class="">Formerly known as : <?= $editseo->SiteTitle; ?></h6>
                <h6 class="address text-center"> <?= $editseo->Address; ?> <br> Website: <?= $editseo->Website; ?></h6>
            </div>
          
        </div>
    </div>
    </section>


    <!-- Tax section -->
    <section class="tax pt-1">
        <div class="container">
            <div class="row">

               

                <div class="col-md-6 to">
                    <h5 class="d-inline">To,</h5>
                    <p><?= $customer->Name; ?><br>
                    <?= $customer->Address; ?></p>

                    <div class="d-sm-flex justify-content-between align-items-center mt-5 ">
                        <div class="gst-no">
                            <h6>GSTIN : <?= $customer->GstNo; ?></h6>
                            <h6>CIN: <?= $customer->CinNo; ?></h6>
                        </div>
                        <hr class="text-black d-sm-none">
                        <div class="pan">
                            <h6>PAN No: <span class="fs-6 fw-light"><?= $customer->PanNo; ?></span></h6>
                            <h6>TAN No: </h6>
                        </div>
                    </div>

                </div>
                <div class="col-md-6 from mt-3 mt-sm-0">

                    <h5 class="d-inline">From, Branch: </h5>
                    <p><?= $editseo->Address; ?></p>

                      

                    <div class="d-sm-flex justify-content-between align-items-center mt-5 ">
                        <div class="gst-no">
                            <h6>GSTIN : <?= $editseo->GstNo; ?></h6>
                            <h6>CIN: <?= $editseo->CinNo; ?></h6>
                        </div>
                        <hr class="text-black d-sm-none">
                        <div class="pan">
                            <h6>PAN No: <span class="fs-6 fw-light"><?= $editseo->PanNo; ?></span></h6>
                            <!-- <h5>PF No.: BR/502</h5> -->
                        </div>
                    </div>
                    <h6 class="my-3 ">GST payable under reverse charge: No</h6>

                    <div class="d-flex justify-content-between">
                        <h6>Invoice No. :<?= $printinvoice->InvoiceNo; ?>/22</h6>
                        <h6>Date : <?= $printinvoice->CreatedAt; ?></h6>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!-- bill month -->
    <section class="mt-5">
        <div class="container">
            <div class="row">
                <h4 class="text-center border border-black">Bill for the month of :- <?= $printinvoice->InvoiceMonth .",". $printinvoice->InvoiceYear; ?></h4>
            </div>
        </div>
    </section>


    <!-- GSt section -->
     <section class="gst mt-5">
        <div class="container ">
            <div class="row">
            <div class="responsive-table">
                <table class="table table-bordered border border-black">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>HSN/SAC Code</th>
                            <th>Item Name</th>
                            <th>Taxable Amt</th>
                            <th>Rate (%)</th>
                            <th>CGST</th>
                            <th>Rate (%)</th>
                            <th>SGST</th> 
                            <th>Rate (%)</th>
                            <th>IGST</th>
                            <th>Total Amount</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>998525</td>
                            <td><?= $printinvoice->ItemCategory ?></td>
                            <td><?= $printinvoice->TexableAmount; ?></td>
                            <td>9.00</td>
                            <td><?= $printinvoice->Cgst ?></td>
                            <td>9.00</td>
                            <td><?= $printinvoice->Sgst; ?></td>
                            <td>
                                <?php
                                 if($printinvoice->Igst!='not available')
                                 { echo '9.00';} 
                                 ?>
                                 </td>
                            <td><?php if($printinvoice->Igst!='not available')
                                 { echo  $printinvoice->Igst;}  ?></td>
                            <td><?= $printinvoice->TotalAmount; ?></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
     </section>

         <!-- bill month -->
    <section class="bill-month mt-3">
        <div class="container">
            <div class="row">
                <div class="d-flex justify-content-around align-items-center">
                    <h6 class="text-center">Grand Total: <?= $printinvoice->TotalAmount; ?></h6>
               <div>
                <h6 class="d-inline mx-3">CGST: <?= $printinvoice->Cgst; ?></h6>
                <h6 class="d-inline">SGST: <?= $printinvoice->Sgst; ?></h6>
               </div>
                </div>
            </div>
        </div>
    </section>

    <section class="bill-month mt-3 ">
        <div class="container py-2">
            <div class="row">
              <h5>Amount in Words : Rs. <?php

// require_once('numbertowords.php');

$numberConverter = new Numbertowords();

$number = $printinvoice->TotalAmount;
$wordEquivalent = $numberConverter->convert_number($number);

echo  $wordEquivalent;

  

?></h5>
            </div>
        </div>
    </section>

  

    <!-- Deliver address section -->
     <section class="delivery-add">
        <div class="container">
            <div class="row">
                <div class="col-md-6 add mt-3 py-3">
                    <p class=""><span>delivery Address:</span><?= $customer->Address; ?></p>
                </div>
                <div class="col-md-6 mt-3 text-end">
                    <h4><?= $editseo->SiteTitle; ?></h4>
                    <hr class="w-50 ms-auto">
                    <h4>Authorised Signatory</h4>
                </div>
            </div>
        </div>
     </section>


    <!-- Note section -->
    <section class="note mt-5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h6 class="text-decoration-underline">Note</h6>
                </div>

                <div class="col-md-12">
                    <ol type="1">
                        <li>Please acknowledge the duplicate copy of invoice for our accounting purpose</li>
                        <li>it will be deemed that you have accepted the invoice in full,  in the event we did not receive any written objection to tcsgroupbhilai@gmail.com.</li>
                        <li>Please direct your invoice related queries  and payment advices to tcsgroupbhilai@gmail.com.</li>
                        <li>Please make payment within 7 days after receiving a invoice.</li>
                        <li>We declare that we have not transferred any property in goods during the course of the execution of the contract.</li>
                        <li>Interest @ 18 % will be charged if not paid within 30 days of presentation.</li>
                    </ol>
                </div>

                <div class="col-md-12 mt-4">
                    <p><span class="fw-bold">Place of Supply:</span><?= $printinvoice->PlaceToSupply; ?></p>
                    <p><span class="fw-bold">State Code: </span><?= $state->Code; ?></p>
                </div>

            </div>
        </div>
    </section>




    <!-- 2nd page section -->
     <section class="annexure mt-5">
        <div class="container mt-5  pt-5">

            <div class="col-md-4"></div>

            <div class="col-md-6 mx-auto text-center">
                <div class="display-6 text-uppercase text-decoration-underline fw-bold my-3">annexure</div>
                <h1><?= $editseo->SiteTitle; ?></h1>
                <h5 class="my-3">Formerly known as : <?= $editseo->SiteTitle; ?></h5>
                <h5 class="address text-center"><?= $editseo->Address; ?><br>
            </div>

            <div class="col-md-12 mt-5 d-sm-flex justify-content-between">
                <p class="fs-5"><span class="fw-bold">Payment Advice to be sent to:</span> <span class="text-decoration-underline">collection@sisindia.com, </span></p>
                <p class="fs-5"><span class="fw-bold">GST Enquiry:</span> <span class="text-decoration-underline">gstcomplianceteam@sisindia.com, </span></p>
                <p class="fs-5"><span class="fw-bold">Website:</span> <span class="text-decoration-underline"><?= $editseo->Website; ?></span></p>
            </div>
        
            <hr class="d-sm-none">

            <div class="row mt-4">
                <div class="col-md-12 d-sm-flex justify-content-between">
                    <p class="fs-5">Unit Code: DUR-UNT021497</p>
                    <p class="fs-5">Bill Code: BNCTDUR000373/22</p>
                    <p class="fs-5">Bill Date: <?= $printinvoice->CreatedAt; ?></p>
                </div>
            </div>
            <div class="row mt-4">
                <div class="col-12">
                    <h3>Unit Name: <?= $printinvoice->CustomerName; ?></p>
                </div>
            </div>
            <div class="contract-details">

                <h3 class="text-center border border-black">Contract Details</h3>

                <div class="responsive-table">
                <table class="table table-bordered border-black">
                    <thead>
                        <tr>
                            <th>SNo.</th>
                            <th>Description</th>
                            <th>Rate</th>
                            <th>Qty.</th>
                           
                            <th>Man Days</th>
                          
                            <th>Amount</th>
                        </tr>
                    </thead>
                    <tbody>

                    <?php
                    if(!empty($itemlist))
                    {
                        $i=1;
                        foreach($itemlist as $list)
                        { ?>

                      
                        <tr>
                            <td><?= $i++; ?></td>
                            <td><?= $list->ItemName ?></td>
                            <td><?= $list->Qty ?></td>
                            <td><?= $list->Rate ?></td>
                            <td><?= $list->ManDays ?></td>
                            <td><?= $list->Amount ?></td>
                        </tr>
                        <?php }
                    }
                    
                    ?>
                       
                    </tbody>
                </table>
                </div>
            </div>
            <div class="total-amount mt-4 d-flex justify-content-between align-items-center mb-3">
                <h5>Total Amount:</h5> 
                <h5><?= $printinvoice->TexableAmount; ?></h5>
            </div>
        </div>
     </section>

    <!-- Bootstrap script -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
        integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
        crossorigin="anonymous"></script>

    <!-- font awesomes -->
    <script src="https://kit.fontawesome.com/25b5a6d893.js" crossorigin="anonymous"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.0.272/jspdf.debug.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>
    

</body >


<!-- <script>
  let pdf = new jsPDF("p", "pt", "a4");
  let options = { pagesplit: true };

  // Ensure high-resolution images (if possible)
  $("img").each(function() {
    $(this).attr("src", $(this).attr("src").replace(/\.jpg|\.png/i, ".png")); // Replace extension with PNG (lossless) if applicable
  });

  pdf.addHTML($("body"), options, () => {
    pdf.save("myDocument.pdf");
  });
</script> -->

<script>
    window.print();
    window.close(); 
</script>
</html>




</html>