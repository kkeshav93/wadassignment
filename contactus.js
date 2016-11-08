var xmlDoc;
var xmlhttp;
function contact1() {
    xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = contactd;
    xmlhttp.open("GET", "contactinfor.xml", true);
    xmlhttp.send();
}

function contactd() {
    if (xmlhttp.readyState == 4) {
        xmlDoc = xmlhttp.responseXML;
        var items = xmlDoc.getElementsByTagName("info");
        var nextValue1 = items[0].getAttribute("toll-free-phone"); 
        document.getElementById("tollfreephonenumber").innerHTML = nextValue1;
        var nextValue1 = items[0].getAttribute("direct-phone");
        document.getElementById("directphone").innerHTML = nextValue1;
        var nextValue1 = items[0].getAttribute("mailing-address");
        document.getElementById("mailingaddress").innerHTML = nextValue1;
        var nextValue1 = items[0].getAttribute("email");
        document.getElementById("emailid").innerHTML = nextValue1;
        var nextValue1 = items[0].getAttribute("website");
        document.getElementById("websiteid").innerHTML = nextValue1;
    }
}