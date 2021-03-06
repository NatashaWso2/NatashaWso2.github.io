function test (int x, string s) returns (float f) {
    var y, _ = <int>s;
    f = x * 1.0 * y;
    return;
}

// Function pointer as a parameter.
function foo (int x, function (int, string) returns (float) bar)
             returns (float) {
    return x * bar(10, "2");
}

// Function pointer as a return type.
function getIt () (function (int, string) returns (float) f) {
    f = test;
    return;
}

function main (string[] args) {
    // Value 'test' will serve as a pointer to 'test' function.
    println("Answer: " + foo(10, test));
    println("Answer: " + foo(10, getIt()));
    // Function pointer as a variable;
    function (int, string) returns (float) f = getIt();
    println("Answer: " + foo(10, f));
}