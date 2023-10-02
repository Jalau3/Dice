int score = 0;
int highScore = 0;

class Die{
  int side, xCoord, yCoord;
  Die(int x, int y){
    xCoord = x;
    yCoord = y;
    side = (int)(Math.random()*6)+1;
    System.out.println(side);
  }
  void show(){
    fill(255);
    rect(xCoord,yCoord,50,50);
    fill(0);
    score += side;
    if(side%2 != 0){
      ellipse(xCoord+25, yCoord+25, 8, 8);
    }
    if(side == 2){
      ellipse(xCoord+10,yCoord+10,8,8);
      ellipse(xCoord+40,yCoord+40,8,8);
    }
    else if(side == 3){
      ellipse(xCoord+10,yCoord+10,8,8);
      ellipse(xCoord+40,yCoord+40,8,8);
    }
    else if(side == 4){
      ellipse(xCoord+10,yCoord+10,8,8);
      ellipse(xCoord+40,yCoord+10,8,8);
      ellipse(xCoord+40,yCoord+40,8,8);
      ellipse(xCoord+10,yCoord+40,8,8);
    }
    else if(side == 5){
      ellipse(xCoord+10,yCoord+10,8,8);
      ellipse(xCoord+40,yCoord+10,8,8);
      ellipse(xCoord+40,yCoord+40,8,8);
      ellipse(xCoord+10,yCoord+40,8,8);
    }
    else if(side == 6){
      ellipse(xCoord+10,yCoord+25,8,8);
      ellipse(xCoord+40,yCoord+25,8,8);
      ellipse(xCoord+10,yCoord+10,8,8);
      ellipse(xCoord+40,yCoord+10,8,8);
      ellipse(xCoord+40,yCoord+40,8,8);
      ellipse(xCoord+10,yCoord+40,8,8);
    }
  }
}

Die die;

void setup(){
  size(400,400);
  background(0);
  noLoop();
}
 
void draw(){
  score = 0;
  background(0);
  int y = 75;
  for(int i = 1; i <=3; i++){
    int x = 75;
    for(int j = 1; j<=3; j++){
      die = new Die(x,y);
      die.show();
      x+=100;
    }
    y+=100;
  }
  textSize(10);
  fill(255);
  text("Score: "+score,50,380);
  if(score>highScore)
    highScore = score;
  text("High score: "+highScore,300,380);
}
void mousePressed(){
  redraw();
}
