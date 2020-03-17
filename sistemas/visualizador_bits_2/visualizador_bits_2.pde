
int n = 5;

float incr = TWO_PI / n;

void setup(){
    size(600, 600);
}

void draw() {

  background(255);

}

void drawBinary(String binary, float y) {
  
  noStroke();

   for (int i = 0; i < binary.length(); i++) {
    float angle = i * incr;

    if (i % 2 == 0) fill(0);
    else fill(255);

    stroke(0);
    arc(300, 300, 250, 250, angle, angle + incr);
  }
  
}


String decimalToBinary (int decimal) {

  String binary = "";
  int x = decimal;

  while (x>0) {
    int bit = x%2;
    binary = bit + binary;
    x /= 2;
  }

  return binary;
}

String padZeros (String str, int num) {
  if (str.length() > num) {
    return str;
  }

  int diff = num - str.length();
  for (int i = 0; i < diff; i++) {
    str = "0" + str;
  }
  return str;
}
