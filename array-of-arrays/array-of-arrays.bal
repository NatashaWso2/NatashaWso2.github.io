function main (string[] args) {
    //Here is how you can initialize an array of int arrays.
    int[][] xx = [[1, 2, 3], [10, 20, 30], [5, 6, 7]];
    println(lengthof xx);
    println(lengthof xx[0]);

    // Initialize three dimensional array with one value.
    // In this case value is a two dimensional array.
    int[][][] xxx = [xx];
    xxx[0][0][1] = 10;
    println(xxx[0][0][1]);

    // Initialize the outer most array of the two dimensional array
    // with empty value.
    int[][] aa = [];

    // Set the initialized one dimensional array to the two dimensional
    // array.
    int[] a = [9];
    aa[0] = a;

    // Print the first value of two dimensional array.
    println(xx[0][0]);
}