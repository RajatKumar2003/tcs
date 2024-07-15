<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'Admin_Controller';
$route['Month'] = 'Month_Controller';
$route['Month/savemonth'] = 'Month_Controller/savemonth';
$route['Month/editmonth/(:num)'] = 'Month_Controller/editmonth/$1';
$route['Month/updatemonth'] = 'Month_Controller/updatemonth';
$route['Month/deletemonth'] = 'Month_Controller/deletemonth';


$route['Year'] = 'Year_Controller';
$route['Year/saveyear'] = 'Year_Controller/saveyear';
$route['Year/edityear/(:num)'] = 'Year_Controller/edityear/$1';
$route['Year/updateyear'] = 'Year_Controller/updateyear';
$route['Year/deleteyear'] = 'Year_Controller/deleteyear';


$route['State'] = 'State_Controller';
$route['State/savestate'] = 'State_Controller/savestate';
$route['State/editstate/(:num)'] = 'State_Controller/editstate/$1';
$route['State/updatestate'] = 'State_Controller/updatestate';
$route['State/deletestate'] = 'State_Controller/deletestate';
$route['State/checkstatecode'] = 'State_Controller/checkstatecode';

$route['Role'] = 'Role_Controller';
$route['Role/saverole'] = 'Role_Controller/saverole';
$route['Role/editrole/(:num)'] = 'Role_Controller/editrole/$1';
$route['Role/updaterole'] = 'Role_Controller/updaterole';
$route['Role/deleterole'] = 'Role_Controller/deleterole';


$route['User'] = 'User_Controller';
$route['User/saveuser'] = 'User_Controller/saveuser';
$route['User/edituser/(:num)'] = 'User_Controller/edituser/$1';
$route['User/updateuser'] = 'User_Controller/updateuser';
$route['User/deleteuser'] = 'User_Controller/deleteuser';
$route['User/profile'] = 'User_Controller/profile';


$route['Description/category'] = 'Description_Controller/category';
$route['Description/savecategory'] = 'Description_Controller/savecategory';
$route['Description/editcategory/(:num)'] = 'Description_Controller/editcategory/$1';
$route['Description/updatecategory'] = 'Description_Controller/updatecategory';
$route['Description/deletecategory'] = 'Description_Controller/deletecategory';


$route['Description'] = 'Description_Controller';
$route['Description/savedescription'] = 'Description_Controller/savedescription';
$route['Description/editdescription/(:num)'] = 'Description_Controller/editdescription/$1';
$route['Description/updatedescription'] = 'Description_Controller/updatedescription';
$route['Description/deletedescription'] = 'Description_Controller/deletedescription';


$route['Customer'] = 'Customer_Controller';
$route['Customer/savecustomer'] = 'Customer_Controller/savecustomer';
$route['Customer/editcustomer/(:num)'] = 'Customer_Controller/editcustomer/$1';
$route['Customer/updatecustomer'] = 'Customer_Controller/updatecustomer';
$route['Customer/deletecustomer'] = 'Customer_Controller/deletecustomer';


$route['Invoice'] = 'Invoice_Controller';
$route['Invoice/saveinvoice'] = 'Invoice_Controller/saveinvoice';
$route['Invoice/editinvoice/(:num)'] = 'Invoice_Controller/editinvoice/$1';
$route['Invoice/updateinvoice'] = 'Invoice_Controller/updateinvoice';
$route['Invoice/deleteinvoice'] = 'Invoice_Controller/deleteinvoice';
$route['Invoice/printinvoice/(:num)'] = 'Invoice_Controller/printinvoice/$1';

$route['Qrcode'] = 'Qrcode_Controller';
$route['Qrcode/savegallery'] = 'Qrcode_Controller/savegallery';
$route['Qrcode/deletegallery'] = 'Qrcode_Controller/deletegallery';
$route['Blog/category'] = 'Blog_Controller/category';
$route['Blog/savecategory'] = 'Blog_Controller/savecategory';
$route['Blog/editcategory/(:num)'] = 'Blog_Controller/editcategory/$1';
$route['Blog/updatecategory'] = 'Blog_Controller/updatecategory';
$route['Blog/deletecategory'] = 'Blog_Controller/deletecategory';
$route['Blog'] = 'Blog_Controller/index';
$route['Blog/saveblog'] = 'Blog_Controller/saveblog';
$route['Blog/editblog/(:num)'] = 'Blog_Controller/editblog/$1';
$route['Blog/updateblog'] = 'Blog_Controller/updateblog';
$route['Blog/deleteblog'] = 'Blog_Controller/deleteblog';
$route['Testimonial'] = 'Testimonial_Controller';
$route['Testimonial/savetestimonial'] = 'Testimonial_Controller/savetestimonial';
$route['Testimonial/edittestimonial/(:num)'] = 'Testimonial_Controller/edittestimonial/$1';
$route['Testimonial/updatetestimonial'] = 'Testimonial_Controller/updatetestimonial';
$route['Testimonial/deletetestimonial'] = 'Testimonial_Controller/deletetestimonial';
$route['Seo'] = 'Seo_Controller';
$route['Seo/updateseo'] = 'Seo_Controller/updateseo';
$route['Inquiry'] = 'Inquiry_Controller';
$route['Inquiry/deletecontact'] = 'Inquiry_Controller/deletecontact';
$route['Inquiry/deletedonate'] = 'Inquiry_Controller/deletedonate';
$route['logout'] = 'Logout';
$route['404_override'] = '';

$route['translate_uri_dashes'] = FALSE;
