class Menu {//1. Name

  //2. Attributes
  float menuWidth, menuHeight;
  PFont font;
  int fontSize;
  float textPositionOne;
  float textPositionTwo;
  float textPositionThree;
  float textPositionFour;
  float x,y;




  //3. Constructor
  Menu(float width_, float height_) {
    rectMode(CORNERS);
    menuWidth = width_;
    menuHeight = height_;
    font = loadFont("ArialMT-48.vlw");
    fontSize = 16;
    textFont(font, fontSize);
    x = 830;
    y = 101;
    
  }



  //4. Methods
  void display() {
    fill(150);
    rect(x, y, x+menuWidth, y+menuHeight);
    rbutton.display();
    bbutton.display();
    button3.display();
    button4.display();
    fill(0);
    
    textPositionOne = rbutton.buttonX + rbutton.eSize/2 + rbutton.ePadding;
    textPositionTwo = bbutton.buttonX + bbutton.eSize/2 + bbutton.ePadding;
    textPositionThree = button3.buttonX + button3.eSize/2 + button3.ePadding;
    textPositionFour = button4.buttonX + button4.eSize/2 + button4.ePadding;
    
    text("Population", textPositionOne, rbutton.buttonY  + rbutton.eSize/4+2); //word, x ,y
    text("% Internet Users", textPositionTwo, bbutton.buttonY + bbutton.eSize/4+2); 
    text("% Obesity", textPositionThree, button3.buttonY + button3.eSize/4+2);
    text("% German Speakers", textPositionFour, button4.buttonY + button4.eSize/4+2);
  }
}

