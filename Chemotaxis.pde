Walker[] bob;
void setup() {
  size(500, 500);
  bob = new Walker[1000];
  for (int i = 0; i < bob.length; i++) {
    bob[i] = new Walker();
  }
}
void draw() {
 background(0);
  for (int i = 0; i < bob.length; i++) {
    bob[i].show();
    bob[i].walk();
  }
}
class Walker {
  int myX, myY, myColor;
  Walker() {
    myX = myY = 250;
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void walk() {
    if (mouseX > myX) {
      myX = myX + (int)(Math.random()*5)-1;
    } else {
      myX = myX + (int)(Math.random()*5)-3;
    }
    if (mouseY > myY) {
      myY = myY + (int)(Math.random()*5)-1;
    } else {
      myY = myY + (int)(Math.random()*5)-3;
    }
  }
  void show() {
    fill(myColor);
    rect(myX, myY, 30, 30);
  }
}
