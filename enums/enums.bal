// enum keyword defined before the identifier will indicate that this
// type definition is an enum
enum colors {
    red,
    blue,
    green
}

function main(string[] arg) {
    // Print the colors from the enum defined above
    print(colors.blue);
    print(colors.red);
}