<?php
session_start();
$_SESSION['test']=$_POST['Code'];

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>

    
<?php  echo $_SESSION['test']?>


<div id="capture" style="padding: 10px; background: #f5da55">
        <h4 style="color: #000; ">Hello world!</h4>
    </div>
    
    <script type="text/javascript" src="html2canvas.js"></script>
    <script>
    html2canvas(document.querySelector("#capture")).then(canvas => {
    document.body.appendChild(canvas)
});
    </script>
    
</body>
</html>