<html>
<head>
<meta charset="UTF-8">

</head>
<body>
<script>
        var i = 0;

        setInterval(() => {
            document.body.style.background = "linear-gradient(135deg, orange 0%, lightblue " + i + "%, white " + (i + 1) + "%)";
            document.body.style.backgroundRepeat = "no-repeat";
            document.body.style.backgroundSize = "1600px 900px";
            i++;
            if (i == 100) {
                i = 0;
            }
        }, 50);
</script>
</body>
</html>