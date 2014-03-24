class Country_Manager {

  Country_Manager() {

    countryList = new Country[27];

    Table data = loadTable("datasheet.csv", "header");

    TableRow row;

    for (int i = 0; i < data.getRowCount()-1; i++) {
      row = data.getRow(i);

      countryList[i] = new Country(row.getString("Country"), row.getInt("Population"), row.getFloat("% obesity"), 
      row.getFloat("Internet Users (in mil)"), row.getFloat("% Ger speakers"), 
      loadImage(row.getString("img.png")), row.getFloat("x"), row.getFloat("y"));
    }


    //population,     internet users (in millions),    %speakers (wiki + WFB),     flag image
    /*
    countryList[0] = new Country("Germany", 81147265, 65.125, 95, loadImage("germanflag.png"), 552, 448); 
     
     countryList[1] = new Country("Luxembourg", 514862, 0.4245, 92, loadImage("luxembourgflag.png"), 496, 474); 
     
     countryList[2] = new Country("Austria", 8221646, 6.143, 88.6, loadImage("austrianflag.png"), 620, 523);
     
     countryList[3] = new Country("Belgium", 10444268, 8.113, 1, loadImage("belgiumflag.png"), 475, 453);
     */


    /*///////////////////////
     /  country graveyard    /
     /        R.I.P.         /
     ///////////////////////*/

    //countryList[2] = new Country("Switzerland", 7996026, 6.152, 63.7, loadImage("swissflag.png"));
    // countryList[4] = new Country("Liechtenstein", 37009, 0.023, 66, loadImage("liechtensteinflag.png")); ///// 66 is made up
  }

  void controlledSize() {

    for (int i = 0; i < countryList.length; i++) {
      if (countryList[i].imgSize < 10) {
        countryList[i].imgSize = 10;
      }
      if (countryList[i].imgSize > 100) {
        countryList[i].imgSize = 100;
      }
    }
  }
}

