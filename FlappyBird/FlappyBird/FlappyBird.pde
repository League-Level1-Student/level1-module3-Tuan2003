PImage back;
PImage pipeBottom;
PImage pipeTop;
PImage bird;
 
int bHeight = 50;
int bWidth = 50;
int yPos = 300;
int xPos = 250;
int BirdYVelocity = 2;
int gravity = 1;
int upperPipeHeight;
int lowerPipeTop;
int pipeWidth;
int pipeX = 450;
boolean gameLost;
int score;


void setup(){
  size(600,600);
  back = loadImage("flappyBackground.jpg");
  pipeBottom = loadImage("bottomPipe.png");
  pipeTop = loadImage("topPipe.png");
  bird = loadImage("bird.png");
  bird.resize(50,50);
  back.resize(width,height);
  upperPipeHeight = (int) random(0-pipeTop.height+15, 0);
  lowerPipeTop = (int) random(height-pipeBottom.height, height + pipeBottom.height - 15);
  pipeWidth = pipeTop.width;
 
}

void draw(){
  background(back);
  image (pipeBottom,pipeX, lowerPipeTop);
  image (pipeTop,pipeX, upperPipeHeight);
  
  image (bird, xPos, yPos);
  BirdYVelocity+=gravity;
  yPos+=BirdYVelocity;
  if(pipeX == 0){
   pipeX=600; 
   score++;
  upperPipeHeight = (int) random(0-pipeTop.height+15, 0);
  lowerPipeTop = (int) random(height-pipeBottom.height, height + pipeBottom.height - 15);
  } 
  pipeX--;
  if(intersectsPipes()){
  println("INTERSECTING PIPE !");
  gameLost = true;
  }
  text("Score is " + score, 0,100);
  if(gameLost == true){
    stop();
  }
  
}

boolean intersectsPipes() { 
     if (yPos < upperPipeHeight && xPos > pipeX && xPos < (pipeX+pipeWidth)){
          return true; 
        } else if (yPos>lowerPipeTop && xPos > pipeX && xPos < (pipeX+pipeWidth)) 
     {
          return true; 
        
      }else {
       return false;
 }
}

void mousePressed(){
 println("Mouse Pressed!");
 BirdYVelocity=-10;
 
}
