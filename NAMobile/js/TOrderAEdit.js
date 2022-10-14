var isLoaded = false;
$(function () {
    $('#tbx_inputdate').attr("readOnly", "true");
    $("#tbx_accountname").attr("readOnly", "true");
    $('#iptaccountname').attr("readOnly", "true");
    $('#tbx_inputdate').datepicker({
        autoclose: true,
        format: "dd-mm-yyyy",
        todayHighlight: true
    });

    $("#drp_shipvia").change(function () {
        if ($("#drp_shipvia").val() == "ship") {
            document.getElementById("drp_ArrivedPort").setAttribute("required", "required");

            document.getElementById("dvContainerPort").classList.remove('d-none');
        } else {
            document.getElementById("drp_ArrivedPort").removeAttribute("required");

            document.getElementById("dvContainerPort").classList.add('d-none');

        }
    });
    $("[name='iptaccountname']").val($("#tbx_accountname").val());
    setShiptoList();
    if (document.getElementById("tbx_shipto").value != "") {
        $("#selshipto").val(document.getElementById("tbx_shipto").value);
    }

    $("#selallshipto").find("option").remove();
    for (let i = 0; i < document.getElementById("drpshipto").options.length; i++) {
        $("#selallshipto").append("<option value='" + document.getElementById("drpshipto").options[i].value + "'>" + document.getElementById("drpshipto").options[i].text + "</option>");
    }



    $("#loadingdv").css("display", "none");
    setShipToReadOnly();


    isLoaded = true;
});

function checkReadonlyRequire() {
    if ($('#tbx_inputdate').val() == "") {
        document.getElementById("tbx_inputdate").classList.add('is-invalid');
        return false;
    } else {
        document.getElementById("tbx_inputdate").classList.remove('is-invalid');
    }
    if ($("[name='iptaccountname']").val() == "") {
        document.querySelector("[name='iptaccountname']").classList.add('is-invalid');

        return false;
    } else {
        document.querySelector("[name='iptaccountname']").classList.remove('is-invalid');
      
    }


    return true;
}

function getData(goPage) {
    let dtl = { gettype:"getlist", limit: 1000, page: 1 };
 
    dtl.dealerid = document.getElementById("cust_dealerid").value;
    dtl.dealername = document.getElementById("cust_dealername").value;

    dtl.page = goPage;

    $.ajax({
        url: "handles/getAccountData.ashx",
        dataType: "json",
        type: "POST",
        cache: false,
        //  async: false,
        data: dtl,
        success: function (data) {

            if (data.errorcode && data.errorcode == "3") {
                
            }

            //TotalRows
            if (data.total == 0) {
                //not result

                $("#dv_norecord").css("display", "");

                return false;
            }
            $("#dv_norecord").css("display", "none");
            $("#table_list").find("tbody").empty();
            //$("#dv_pageing").css("display", "");
            //$("#dv_norecord").css("display", "none");
            var totalrows = data.rows[0].totalrows;
            var totalpages = Math.ceil(totalrows / dtl.limit);

            //setTotalPages(dtl.page, totalpages);

            var curtotal = data.rows.length;
            var shtml = [];
            for (let dr of data.rows) {
                shtml.push();
                shtml.push("<tr>")
                shtml.push("<td>" + dr.dealerid + "</td>")

                shtml.push("<td>" + dr.dealername + "</td>")
                shtml.push("<td>" + dr.contact + "</td>")
              
                shtml.push("<td><a class=\"btn btn-success\" role=\"button\"  onclick=\"importCust('" + dr.dealerid + "')\" >Import</a></td>")
                shtml.push("</tr>")
          
            }
            $("#table_list").append(shtml.join(''));
        },
        error: function (res) {
    
            alert("load  LIST error:");

        }
    });
}

function importCust(dealerid) {

    $('#selectaccountname').modal('hide');
   // $("#tbx_accountname").val(dealerid);
    $("[name='iptaccountname']").val(dealerid);
    chgDealerID();
}
function chgDealerID() {
    var dealerid = $("[name='iptaccountname']").val();
    if (dealerid.length > 0) {
        $("#tbx_accountname").val(dealerid);
     
        
        getAccountData(false);
    }
}
function getAccountData(checkonly) {
    let dtl = { gettype: "getdealer" };
    dtl.dealerid = $("#tbx_accountname").val();
    let checkok = true;
    $.ajax({
        url: "handles/getAccountData.ashx",
        dataType: "json",
        type: "POST",
        cache: false,
        async: false,
        data: dtl,
        success: function (data) {
            if (data.total == 0) {
                checkok = false;
                return false;
            }
            $("#tbx_custid").val(data.rows[0].dealername);
            $("#lbldealername").html(data.rows[0].dealername);
            $("#lbl_contacter").html(data.rows[0].contact + " " + data.rows[0].contact1);
            $("#lbl_street").html(data.rows[0].street);
            $("#lbl_zipcode").html(data.rows[0].zip);
            $("#lbl_city").html(data.rows[0].city);
            $("#lbl_state").html(data.rows[0].state);
            $("#lbl_tel").html(data.rows[0].tel);
            $("#lbl_email").html(data.rows[0].email);
            $("#lbl_website").html(data.rows[0].website);

            $("#selallshipto").find("option").remove();
            var shiplist = data.rows[0].shiplist.split("|@|");

           
            var shipcount = 0;
            for (var i = 0; i < shiplist.length; i++) {
                if (shiplist[i] == "") continue;
                $("#selallshipto").append("<option value='" + shiplist[i].split("||")[0] + "'>" + shiplist[i].split("||")[1] + "</option>");
                shipcount++;
            }
            if (shipcount > 1) {
                document.getElementById("selallshipto").options.add(new Option("",""),0);
              
            }
            setShiptoList();
            if (shipcount == 1) {
                if (isLoaded) {
                   
                    document.getElementById("selshipto").selectedIndex = 0;
                    chgShipToAddress();
                }
            }
            setShipToReadOnly();
        },
        error: function (res) {

            alert("load  " + dtl.dealerid +" error:");

        }
    });
    return checkok;
}
function setShiptoList() {
    //var oldvalue = $("#selshipto").val();

    $("#selshipto").find("option").remove();
    for (let i = 0; i < document.getElementById("selallshipto").options.length; i++) {
        $("#selshipto").append("<option value='" + document.getElementById("selallshipto").options[i].value + "'>" + document.getElementById("selallshipto").options[i].text +"</option>");
    }
    if ($("#drp_shipvia").val() == "air" || $("[name='iptaccountname']").val() == "C000359") {
        $("#selshipto").append("<option value='New'>New</option>");
    }
    //$("#selshipto").val(oldvalue);
    //if (document.getElementById("selshipto").selectedIndex == -1 && isLoaded) {
    //    document.getElementById("selshipto").selectedIndex = 0;
    //}
    
}
function chgShipToAddress() {
 
    if (!isLoaded) return;
    let dtl = { gettype: "getshipaddress" };
    dtl.dealerid = $("#tbx_accountname").val();
    dtl.addressid = $("#selshipto").val();
    if (!dtl.addressid || dtl.addressid=="New") {
        document.getElementById("tbx_shiptocity").value = "";
        document.getElementById("tbx_shiptotel").value = "";
        document.getElementById("tbx_shipstostreet").value = "";
        document.getElementById("tbx_shiptozip").value = "";
        document.getElementById("tbx_shiptocontacter").value = "";
        document.getElementById("tbx_shiptocontacter1").value = "";
        document.getElementById("tbx_shiptowebsite").value = "";
        document.getElementById("tbx_shiptoemail").value = "";
        document.getElementById("drp_shiptostate").value = "";
        document.getElementById("tbx_shiptoremark").value = "";
     // document.getElementById("drp_ArrivedPort").value = hdr.rows[0].arrivedport;
        document.getElementById("drp_shiptostate").removeAttribute("disabled");
        setShipToReadOnly();
        return;
    }
    $.ajax({
        url: "handles/getAccountData.ashx",
        dataType: "json",
        type: "POST",
        cache: false,
        async: false,
        data: dtl,
        success: function (hdr) {
            console.log(hdr);
            if (hdr.total == 0) {
               
                return false;
            }

            document.getElementById("tbx_shiptocity").value = hdr.rows[0].city;
            document.getElementById("tbx_shiptotel").value = hdr.rows[0].tel;
            document.getElementById("tbx_shipstostreet").value = hdr.rows[0].street;
            document.getElementById("tbx_shiptozip").value = hdr.rows[0].zip;
            document.getElementById("tbx_shiptocontacter").value = hdr.rows[0].contact;
            document.getElementById("tbx_shiptocontacter1").value = hdr.rows[0].contact1;
            document.getElementById("tbx_shiptowebsite").value = hdr.rows[0].website;
            document.getElementById("tbx_shiptoemail").value = hdr.rows[0].email;
            document.getElementById("drp_shiptostate").value = hdr.rows[0].state;
            document.getElementById("tbx_shiptoremark").value = hdr.rows[0].shipremark;
            document.getElementById("tbx_shiptoremark").value = hdr.rows[0].shipremark;
   

           // if ($("#drp_shipvia").val() == "ship" ) {
                document.getElementById("drp_ArrivedPort").value = hdr.rows[0].arrivedport;
           // }

       
            setShipToReadOnly();


        },
        error: function (res) {

            alert("load  address error:");

        }
    });
   
}

function setShipToReadOnly() {
    if ($("#selshipto").val() != "" && $("#selshipto").val() != "New") {
        document.getElementById("tbx_shiptocity").setAttribute("readOnly", "true");
        document.getElementById("tbx_shiptotel").setAttribute("readOnly", "true");
        document.getElementById("tbx_shipstostreet").setAttribute("readOnly", "true");
        document.getElementById("tbx_shiptozip").setAttribute("readOnly", "true");
        document.getElementById("tbx_shiptocontacter").setAttribute("readOnly", "true");
        document.getElementById("tbx_shiptocontacter1").setAttribute("readOnly", "true");
        document.getElementById("tbx_shiptowebsite").setAttribute("readOnly", "true");
        document.getElementById("tbx_shiptoemail").setAttribute("readOnly", "true");
        document.getElementById("drp_shiptostate").setAttribute("disabled", "disabled");
        document.getElementById("tbx_shiptoremark").setAttribute("readOnly", "true");
     //   document.getElementById("tbx_shiptoremark").setAttribute("readOnly", "true");
    } else {
        document.getElementById("tbx_shiptocity").removeAttribute("readOnly");
        document.getElementById("tbx_shiptotel").removeAttribute("readOnly");
        document.getElementById("tbx_shipstostreet").removeAttribute("readOnly");
        document.getElementById("tbx_shiptozip").removeAttribute("readOnly");
        document.getElementById("tbx_shiptocontacter").removeAttribute("readOnly");
        document.getElementById("tbx_shiptocontacter1").removeAttribute("readOnly");
        document.getElementById("tbx_shiptowebsite").removeAttribute("readOnly");
        document.getElementById("tbx_shiptoemail").removeAttribute("readOnly");
        document.getElementById("drp_shiptostate").removeAttribute("disabled");
        document.getElementById("tbx_shiptoremark").removeAttribute("readOnly");
       // document.getElementById("drp_ArrivedPort").removeAttribute("readOnly");
    }


   
}