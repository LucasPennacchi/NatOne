function toRoman(number) {
    var roman = "";
    var values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
    var symbols = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"];
    
    for (var i = 0; i < array_length(values); i++) {
        while (number >= values[i]) {
            number -= values[i];
            roman += symbols[i];
        }
    }
    return roman;
}
