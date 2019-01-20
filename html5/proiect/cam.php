<?php
include "./includes/head.php";
include "./includes/antet.php";
//include "./includes/meniu_lateral.php";
?>


<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->




<div class="container">
      <div class="row">
      <div class="col-md-5  toppad  pull-right col-md-offset-3 ">
          
           <p class=" text-info"><?php echo $datacurenta?></p>
      </div>
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
        <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title"></h3>
            </div>
            <div class="panel-body">
                  
                  <table class="table table-user-information">
                   <thead>
                      <tr>
                        <th>VIDEO:</th>	
						<th>POZA:</th>	
                      </tr>
					  </thead>
					  <tbody>
					     <td><video height = "400" width="400" autoplay controls id="id_video">Video tag is no supported</video></td>
                         <td><canvas height = "400" width = "400" id ="id_canvas">canvas tag is not supported</canvas></td>
                         <script src="camm.js"></script>
                      </tbody>
                  </table>  
                     <button  type = "button" id = "id_button"  class="btn btn-primary">Fa poza </button>
                    					 
                  </div>
    
                 <div class="panel-footer">
                 </div>
            
          </div>
        </div>
      </div>
    </div>


<?php
include "./includes/footer.php";

?>