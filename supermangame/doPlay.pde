
public void doPlay() {

 imageMode(CORNER);
    image(backImg, x, 0); // to move the back ground X
    image(backImg, x+backImg.width, 0); // anohter img to start from the left 
    x -= 3.5; // the back ground moving 
    vy += 1;// moving superman
    y += vy;//dropping superman 
    if(x == -1800) x = 0;{
    for(int i = 0 ; i < 2; i++) { // to draw the wall img 
      imageMode(CENTER);
      image(wallImg, wx[i], wy[i] - (wallImg.height/2+100));// above 
      image(wallImg, wx[i], wy[i] + (wallImg.height/2+100));// below
      if(wx[i] < 0) {// if the wall is passed left
        wy[i] = (int)random(200,height-200); 
        wx[i] = width;
      }
      
        if(wx[i] == width/2) highScore = max(++score, highScore); // to increase the score 
      if(y>height||y<0||(abs(width/2-wx[i])<25 && abs(y-wy[i])>100))gamestate=gameover;// if it hits the wall game over 
        
         wx[i] -= 3.5; //start at this speer 
      
      if (highScore>=5){ // increase the speed after every 5 rockets passed 
    level = 2;
     wx[i]-=.5 ;
}
  if (highScore>=10){// increase the speed after every 5 rockets passed 
    level = 3;
     wx[i] -=.5;
    
}
if (highScore>=15){// increase the speed after every 5 rockets passed 
    level = 4;
     wx[i] -= .5;
    
}
else if (highScore>=20){// increase the speed after every 5 rockets passed 
    level = 5;
     wx[i] -= .5;
    
}
      
    }
    image(supermanImg, width/2, y);
    fill(100);
    text("score "+score, width/2-4, 700);
    fill(100);
    text("Level " + level + "/5", width/2-7, 750);

    }
}