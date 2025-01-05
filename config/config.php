<?php
if (session_status() == PHP_SESSION_NONE) {
    $name = preg_replace("/[^a-z\d]/i", "", __DIR__);
    session_name($name);
    session_start();
}

if (isset($_GET["action"])) {
    if ($_GET["action"] == "theme") {
        $previousValue = isset($_SESSION["theme"]) ? $_SESSION["theme"] : null;

        if ($previousValue == "dark") {
            unset($_SESSION["theme"]);
        } else {
            $_SESSION["theme"] = "dark";

        }

        $scheme = "http"; // eller "https" beroende på din serverkonfiguration
        $host = $_SERVER["HTTP_HOST"];
        $path = rtrim(dirname($_SERVER["SCRIPT_NAME"]), '/');
        $url = "$scheme://$host$path/index.php";
        header("Location: $url");
        exit;
    }

    if ($_GET["action"] == "session_destroy") {
        session_destroy();
        $scheme = "http"; // eller "https" beroende på din serverkonfiguration
        $host = $_SERVER["HTTP_HOST"];
        $path = rtrim(dirname($_SERVER["SCRIPT_NAME"]), '/');
        $url = "$scheme://$host$path/index.php";
        header("Location: $url");
        exit;
    }
}
