// picture variables
PImage turtle;
PImage hare;
// varible to make it move
int turMov;
int harMov;
// text varribles
int textTur;
int textHare;
// text display value
boolean textDis = false;
//stop the turtle and hare 
 boolean stopMov = false;
// setup
void setup(){
  size(200,700);
// image 
  turtle = loadImage("turtle.jpg");
  hare = loadImage("hare.jpg");
}
// draw
void draw(){
//background
  background(255);
//  hare and turtle
  image(turtle,20,turMov,70,70);
  image(hare,120,harMov,50,50);
   // text display and stops the game also makes the reset button appear
   if (textDis == true){
     //stops the turtle and hare to move after one of them won
     stopMov = true;
      //reset button
      fill(255);
      rectMode(CENTER);
      rect(100,500,100,100);
      stroke(1);
      fill(1);
      text("Reset",60,520);
      
      
    }
// text appear
  if (textTur >= 5){
    fill(0);
    text("Turtle Wins!",15,350);
    textSize(30);
       
    textDis = true;
   
  }
  else if(textHare >= 5){
    fill(0);
    text("Hare Wins!",15,350);
    textSize(30);
    
      textDis = true;
  }

}
// key pressed
void keyPressed(){
  //to make turtle and hare stop
  if(stopMov == false){
    // makes turtle and hare move
    if(key =='a' || key == 'A'){
      turMov += 10;
    }
    if(key == 'l' || key == 'L'){
      harMov += 10;
    }
  }  
//when turtle and hare reach the end 
  if(turMov >= 700){
    textTur = 5;
    
  }
  
   else if (harMov >= 700){
    textHare = 5;
  }
  if (key == 'o'){
    harMov = 700;
}
  if (key == 'q'){
    turMov = 700;
  }
}  
void mousePressed(){
  if(textDis == true){
    if(mouseX >= 50 && mouseX <= 150 && mouseY >= 450 && mouseY <= 550){
      turMov = 0;
      harMov = 0;
      textHare = 0;
      textTur = 0;
      textDis = false;
      stopMov = false;
    }
  }
}
