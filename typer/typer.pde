// typekonventering

char c;    // Chars er bogstaverer
float f;   // Floats er decimaltal
int i;     // Integers er hele tal


c = 'A';
f = float(c - 64); // sætter f = 1.0
i = int(f);        // sætter i = 1
c = char(i + 64);  // sætter i = A


println(f);
println(i);
println(c);
