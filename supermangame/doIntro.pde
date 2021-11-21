
public void doIntro() {
     imageMode(CENTER);//to center the image 
    image(startImg, width/2,height/2);
    text("High Score: "+highScore, 50, width);// to print the scoure 
    text("Level " + level + "/5", 50, width+100);  // to print the lvl
     text("click any where to start", 50, width-100);// to give the user instruction how to start the game 
}
     
void mousePressed() {
 vy = -13;  // to make superman jums when the mouse clicked 
  if(gamestate==play) { // if it is at the satrt screen 
    wx[0] = 600;// set up the wall 
    wy[0] = y = height/2;
    wx[1] = 900;
    wy[1] = 600;
    x = gamestate = score = 0; //set superman when the game is starting 
  }

}