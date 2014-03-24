Country_Manager countries;
Country[] countryList;

//Buttons buttons;
Menu menu;
MenuButton rbutton;
MenuButton2 bbutton;
MenuButton3 button3;
MenuButton4 button4;

PImage bg;



void setup() {
  size(1000, 790);
  bg = loadImage("1000x790x3.png");
  background(200);
  smooth(8);

  countries = new Country_Manager();
  countries.controlledSize();

  menu = new Menu(160, 100);         // width, height
  rbutton = new MenuButton(16, 8); // size, padding
  bbutton = new MenuButton2(16, 8);
  button3 = new MenuButton3(16, 8); 
  button4 = new MenuButton4(16, 8); 
}


void draw() {
  //frameRate(30);
  background(bg);                                    //240,240,240
  //println(mouseX + ", " + mouseY);

  for (int i = 0; i < countryList.length; i++) {
    countryList[i].display();
  }

  for (int i = 0; i < countryList.length; i++) {
    if ((dist(countryList[i].x, countryList[i].y, mouseX, mouseY)) < (countryList[i].imgSize/2)) {
      image(countryList[i].img, countryList[i].x, countryList[i].y, countryList[i].imgSize, countryList[i].imgSize);
    }
  }

  menu.display();
}

