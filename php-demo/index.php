<!DOCTYPE html>
<html>
    <head>
        <title>PHP Example</title>
    </head>
    <body>
        <h1>Hello World from PHP <?php echo PHP_MAJOR_VERSION . '.' . PHP_MINOR_VERSION; ?>!</h1>
        <h3>I have the following extensions:</h3>
        <ul>
            <?php
            foreach (get_loaded_extensions() as $ext) {
                echo '<li>' . $ext .' => '. phpversion($ext) . '</li>';
            }
            ?>
        </ul>
    </body>
</html>