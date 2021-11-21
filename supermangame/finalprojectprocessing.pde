//inilizing varibls
PImage backImg;
PImage supermanImg ;
PImage wallImg ;
PImage startImg , endImg;
int gamestate = 1, score = 0, highScore = 0, x = -200, y, vy = 0, wx[] = new int[2], wy[] = new int[2];
int intro = 0;
int play = 1 ;
int gameover=2;
int level = 1;
void setup() {
  size(600,800);
  fill(0);
  textSize(40);  
  backImg =loadImage("hassan.png");
  supermanImg =loadImage("superman1.png");
 wallImg =loadImage("spaceroket2.png");
 startImg=loadImage("backgroundsuperman.jpg");
 endImg=loadImage("dead.jpg");
 endImg.resize(600,800);

 

}

void draw() { //runs 60 times a second
  
  if(gamestate ==  play) {//starting the intro screan
    doIntro();
  }
  else if (gamestate == intro) { // plying the game 
   doPlay();
  }
  else if (gamestate == gameover) { //game is over
  
  doGameover();
   
  }
}