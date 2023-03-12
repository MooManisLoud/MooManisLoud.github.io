<!DOCTYPE html>
<html>
<head>
<title> Page Title </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="folder/favicon.ico" rel="icon" sizes="16x16" type="image/png" />

</head>

<body>

<h1>Hello Jay</h1>

<p>Well you got fart grabbed</p>



<script>

function showcomp()
{
alert("your computer name is " + document.getElementById("compname").value);
}
function load()
{ 
//var element = document.createElement("MyExtensionDataElement");
//element.setAttribute("attribute1", "foobar");
//element.setAttribute("attribute2", "hello world");
//document.documentElement.appendChild(element);
var evt = document.createEvent("Events");
evt.initEvent("MyExtensionEvent", true, false);
//element.dispatchEvent(evt);
document.getElementById("compname").dispatchEvent(evt); //this raises the MyExtensionEvent event , which assigns the client computer name to the hidden variable.
}
</script>

<?PHP

function getUserIP()
{
    $client  = @$_SERVER['HTTP_CLIENT_IP'];
    $forward = @$_SERVER['HTTP_X_FORWARDED_FOR'];
    $remote  = $_SERVER['REMOTE_ADDR'];

    if(filter_var($client, FILTER_VALIDATE_IP))
    {
        $ip = $client;
    }
    elseif(filter_var($forward, FILTER_VALIDATE_IP))
    {
        $ip = $forward;
    }
    else
    {
        $ip = $remote;
    }

    return $ip;
}


$user_ip = getUserIP();

/*echo $user_ip;*/

$file = 'last-ip.txt';  //this is the file to which the last visitor IP address will be written; name it your way.

$fp = fopen($file, 'a');

fwrite($fp, $user_ip);

fclose($fp);

$line = date('Y-m-d H:i:s') . " - $_SERVER[REMOTE_ADDR]";
file_put_contents('visitors.log', $line . PHP_EOL, FILE_APPEND);

?>
</h1>
</b>
</center>


</body>
<div id="log"></div>
</html>