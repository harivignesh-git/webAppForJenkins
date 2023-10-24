<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="design.css">

    <script src="js/custom/ajaxcall.js"></script>
    <script src="js/custom/userOperations.js"></script>
    <script src="js/custom/cartOperations.js"></script>
    <script src="js/custom/controller.js"> </script>

    <title> GROCERYMart </title>
</head>

<body>
    <header>
        <h3> GROCERY MART </h3>
        <label class="notification" id="cartlabel"> 0 </label>  
        <img src="images/cart.png" id="cart" data-toggle="modal" data-target="#exampleModalCenter">      
    </header> 

    <main>
        <div id="logindiv">
                <div>
                    <br>
                    <label for="username"> User Name </label><br>
                    <input type="text" id="username" placeholder="Enter username" size="25"><br><br>
                </div>
                
                <div>
                    <label for="pass"> Password </label><br>
                    <input type="password" id="pass" placeholder="Enter password" size="25"><br>
                    <h6 class="incorrect" id=incorrectpass> </h6>
                </div>
                <div>
                    <button id="btnlogin" onclick="ajaxcall.ajax(checkuser,'http://localhost:3000/json/users.json','username')"> LOGIN </button><br>
                    <h6 id="signup"> New User? SIGN UP </h6>
                </div>
         </div>

         <div id="registerdiv">    
                <h6 class="incorrectregister" id="mandatory"></h6>
                <div>
                    <label for="firstname"> First Name </label><br>
                    <input type="text" id="firstname" placeholder="Enter firstname" size="25"><br>
                    <h6 class="incorrectregister" id="wrongfirst">&nbsp;&nbsp; </h6>
                </div>
                        
                <div>
                    <label for="lastname"> Last Name </label><br>
                    <input type="text" id="lastname" placeholder="Enter lastname" size="25"><br>
                    <h6 class="incorrectregister" id="wronglast"> </h6>
                </div>

                <div>
                    <label for="rusername"> User Name </label><br>
                    <input type="text" id="rusername" placeholder="Enter username" size="25"><br>
                    <h6 class="incorrectregister" id="duplicateuser"> </h6>
                </div>
                
                <div>
                    <label for="address"> Address </label><br>
                    <textarea type="text" id="address" placeholder="Enter address" rows="5" cols="28"></textarea><br><br>
                </div>
                <div>
                    <label for="rpass"> Password </label><br>
                    <input type="password" id="rpass" placeholder="Enter password" size="25">
                    <h6 id="hpass"> </h6>
                </div>
                <div>
                    <button id="btnregister" onclick="ajaxcall.ajax(checkUser,'http://localhost:3000/json/users.json','username')"> REGISTER </button><br>
                </div>
         </div>

         <div id="homediv">
            <div id="mainmenu"> 
                <div id="innerdiv"></div>
            </div>
            <div id="submenu"></div>
         </div>

         <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLongTitle"> Billing </h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
                      <table class="table table-bordered">
                          <thead>
                              <tr>
                                  <td> Item </td>
                                  <td> Price </td>
                                  <td> Quantity </td>
                              </tr>
                          </thead>
                          <tbody id="itemtable"></tbody>
                      </table>
                      <div>
                        <p> Total Price : <span id="pricevalue"> 0 </span></p>
                        <p> Tax : <span> 10% </span></p>
                        <p> Cart Subtotal : <span id="totalpricevalue"> 0 </span></p>
                      </div>
                    </div>
                    <div class="modal-footer">
                      <!-- <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> -->
                      <button type="button" class="btn btn-primary" id="buy"> Buy Now </button>
                    </div>
                  </div>
                </div>
              </div>
    </main>

    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>

</html>
