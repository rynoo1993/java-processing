
public void doGameover() { // to print the game over in the end of the game  
 imageMode(CENTER);  // to center the image
    image(endImg, width/2,height/2); 
    fill(252, 252, 252);
    text("High Score: "+highScore, 50, width);// to print the scoure 
    text("Level " + level + "/5", 50, width+100);  // to print the lvl
  text("Press (S) to start", 50, width-100); // to give the user instruction press S to countinu playing 
 
}
void keyPressed(){// press S to continue
  if ((key == 's')|| (key == 'S')){ //if it S or s is pressed 
 gamestate=play; //  start the game 
 
  
} 
}