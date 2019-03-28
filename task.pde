import javax.swing.*;

HomeUI objHome;
JFrame f= new JFrame("Noise Viz");  

int wheelType = 2;
long startDate = 1356998400; 
long endDate = 1553385600;

int fillColor;
int backgroundColor;
String locNames[] = {"", "Drumcondra Library","Bull Island","Ballyfermot Civic Centre","Ballymun Library","Dublin City Council Rowing Club","Walkinstown Library","Woodstock Gardens","Navan Road","Raheny Library","Irishtown Stadium","Chancery Park","Blessington St. Basin","Dolphins Barn","Sean Moore Road","Mellows Park"};
float avgNoiseLevels[] = {-1, 52.73164,50.096222,55.71103,61.510845,54.30555,51.46327,46.688187,54.004524,53.58606,50.208145,60.348946,50.85076};

void setup() {
  f.setLayout(null);  
  
  f.setVisible(true);
  
  
f.setSize((int)(displayWidth/2.7),displayHeight-80);
  
  
  surface.setResizable(true);
  //size(displayWidth, displayHeight);
  
  fullScreen();
  //noLoop();
  //smooth();
  
  objHome = new HomeUI();
  objHome.createHomePage();
}

final int AVERAGE_NOISE_SCREEN = 1;
final int NOISE_WHEEL_SCREEN = 2;
final int NOISE_TIMElINE_SCREEN = 3;
final int NOISE_MOVIE_SCREEN = 4;

int currentScreen = 1;

boolean needToDraw = true;
void draw() { 
  if(!needToDraw)
    return;
    
  backgroundColor = color(255, 255, 255);
  background(backgroundColor);
  switch(currentScreen)
  {
    case AVERAGE_NOISE_SCREEN: 
    drawHeader();
    drawLocationWithAverageValues();
    break;
    case NOISE_WHEEL_SCREEN:
    loadAndDrawDataForWheel();
    break;
    case NOISE_TIMElINE_SCREEN:
    break;
    case NOISE_MOVIE_SCREEN:
    break;
  }
  needToDraw = false;
}
 
 