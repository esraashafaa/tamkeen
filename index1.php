<?php
// echo "hello world from xamp";

trait A{
    public function show()  {
        return "From A" ;
    }
}


trait B{
    public function show()  {
        return "From B" ;
    }
}

class Test{
  use A,B  {
   B::show insteadof A;
   A::show as showA;

    }
}
$test = new Test();
echo $test->showA(). "<br>";;

echo $test->show();










?>