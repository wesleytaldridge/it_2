class Country {

  //Attributes

  float x, y;
  PImage img;
  PImage black;
  PFont font;
  int fontSize;
  float imgSize;

  String nameOfCountry;
  int population;
  float obesity;
  float internetUsers;
  float percentSpeakers; ///percentage of population that speaks German


  //Constructor //////////////////////////////////////////////////////////////////////////////////
  Country(String nameOfCountry_, int population_, float obesity_, float internetUsers_, float percentSpeakers_, PImage img_, 
  float x_, float y_) {
    nameOfCountry = nameOfCountry_;
    population = population_;
    obesity = obesity_;
    internetUsers = internetUsers_; 
    percentSpeakers = percentSpeakers_;
    img = img_;
    x=x_;
    y=y_;

    font = loadFont("ArialMT-48.vlw");
    fontSize = 16;
    textFont(font, fontSize);
    imageMode(CENTER);
    imgSize = population/500000; // pop/500k
    black = loadImage("black.png");
  }


  //Methods //////////////////////////////////////////////////////////////////////////////////////
  void display() {
    fill(0);
    noStroke();

    collisionImg(x, y, imgSize);
    image(img, x, y, imgSize, imgSize); // image source, x location, y location, img width, img height
  }

  void collisionImg(float x, float y, float imgSize) {
    if ((dist(x, y, mouseX, mouseY)) < (imgSize/2)) {
      if (rbutton.isPressed == true) {
        text(nameOfCountry + ":" + " " + population/1000000 + " million people", 5, height-5); //word, x ,y

        if (imgSize <= 30) {
          image(black, x, y, imgSize+5, imgSize+5);
        }
        else {
          image(black, x, y, imgSize+10, imgSize+10);
        }
      }
      else if (bbutton.isPressed ==true) {
        text(nameOfCountry + ":" + " " + int(internetUsers*1000000/population*100) + "% of population", 5, height-5); //word, x ,y
        
        if (imgSize <= 30) {
          image(black, x, y, imgSize+5, imgSize+5);
        }
        else {
          image(black, x, y, imgSize+10, imgSize+10);
        }
      }
      else if (button3.isPressed == true) {
        text(nameOfCountry + ":" + " " + obesity + "% of population obese.", 5, height-5); //word, x ,y
        
        if (imgSize <= 30) {
          image(black, x, y, imgSize+5, imgSize+5);
        }
        else {
          image(black, x, y, imgSize+10, imgSize+10);
        }
      }
      else if (button4.isPressed == true) {
        text(nameOfCountry + ":" + " " + percentSpeakers + "% speak German.", 5, height-5); //word, x ,y
        
        if (imgSize <= 30) {
          image(black, x, y, imgSize+5, imgSize+5);
        }
        else {
          image(black, x, y, imgSize+10, imgSize+10);
        }
      }
    }
    else {
      text("", 5, height-5); //word, x ,y
    }
  }

  /////////////////////////////////////////////////////////////////////////////////
}

