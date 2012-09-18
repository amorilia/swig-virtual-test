<?php

include("testmod.php");

class Test extends TestObj {
    public $stack = array();

    public function two() {
        echo "it works!" . PHP_EOL;
        array_push($this->stack, 23);
    }
}

$t2 = new Test();
$t2->one();
$result = array_pop($t2->stack);
echo $result . PHP_EOL;
if ($result != 23)
{
    throw new Exception("result not 23");
}

?>
