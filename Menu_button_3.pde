class MenuButton3 {

  // Attributes
  float eSize;
  float ePadding;
  float buttonX;
  float buttonY;
  boolean isPressed;


  // Constructor
  MenuButton3(float eSize_, float ePadding_) {
    ellipseMode(CENTER);
    fill(255);
    eSize = eSize_;
    ePadding = ePadding_;
    buttonX = menu.x+eSize/2+ePadding;              //POSITION BUTTON 3 ON SCREEN
    buttonY = rbutton.buttonY + bbutton.eSize  + rbutton.eSize + (ePadding-2)*2; //*2 is number of buttons above button
    isPressed = false;
  }


  // Methods
  void display() {


    if (rbutton.isPressed == false && bbutton.isPressed == false && button4.isPressed == false) {            /// if button one+two are FALSE, fill button 3
      fill(255);
      ellipse(buttonX, buttonY, eSize, eSize);
      fill(0);
      ellipse(buttonX, buttonY, 0.7*eSize, 0.7*eSize);
    }
    else { //if button 1 is TRUE, don't fill button 2
      fill(255);
      ellipse(buttonX, buttonY, eSize, eSize);
    }

    if (dist(mouseX, mouseY, buttonX, buttonY) < eSize/2 && mousePressed && isPressed == false) {
      //if you press button 2 and it is currently FALSE
      isPressed = true; //make button 2 true
      rbutton.isPressed = false; //make button 1 false
      bbutton.isPressed = false; //make button 2 false
      button4.isPressed = false; //make button 4 false
      button_func();
    }
  }

  void button_func() {
    if (button3.isPressed == true) {                                 //IF BUTTON 3 IS PRESSED
      for (int i=0; i < countryList.length; i++) {
        countryList[i].imgSize = countryList[i].obesity*2.5;
      }
      countries.controlledSize();
    }
  }
}

