class MenuButton2 {

  // Attributes
  float eSize;
  float ePadding;
  float buttonX;
  float buttonY;
  boolean isPressed;


  // Constructor
  MenuButton2(float eSize_, float ePadding_) {
    ellipseMode(CENTER);
    fill(255);
    eSize = eSize_;
    ePadding = ePadding_;
    buttonX = menu.x+eSize/2+ePadding;              //POSITION BUTTON 2 ON SCREEN
    buttonY = rbutton.buttonY + rbutton.eSize + ePadding-2;
    isPressed = false;
  }


  // Methods
  void display() {


    if (rbutton.isPressed == false && button3.isPressed == false && button4.isPressed == false) {            /// if button one is FALSE, fill button 2
      fill(255);
      ellipse(buttonX, buttonY, eSize, eSize);
      fill(0);
      ellipse(buttonX, buttonY, 0.7*eSize, 0.7*eSize);
    }
    else { //if button 1 & 3 are TRUE, don't fill button 2
      fill(255);
      ellipse(buttonX, buttonY, eSize, eSize);
    }

    if (dist(mouseX, mouseY, buttonX, buttonY) < eSize/2 && mousePressed && isPressed == false) {
      //if you press button 2 and it is currently FALSE
      isPressed = true; //make button 2 true
      rbutton.isPressed = false; //make button 1 false
      button3.isPressed = false; //make button 3 false
      button4.isPressed = false; //make button 4 false
      button_func();
    }
  }

  void button_func() {
    if (bbutton.isPressed == true) {                                 //IF BUTTON 2 IS PRESSED
      for (int i=0; i < countryList.length; i++) {
        countryList[i].imgSize = countryList[i].internetUsers *1000000/countryList[i].population *100;
      }
      countries.controlledSize();
    }
  }
}

