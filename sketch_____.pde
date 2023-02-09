int  arm1W = 10;
int  arm1D = 10;
int  arm1L = 30;

int  arm2W = 10;
int  arm2D = 10;
int  arm2L = 30;

int  arm3W = 10;
int  arm3D = 25;
int  arm3L = 15;

int  armW1 = 10;
int  armW2 = 10;
int  armW3 = 5;

int  angle1 = 0;
int  angle2 = 0;
int  angle3 = 0;


int dif = 90;


void setup(){
  size(1200, 800, P3D);
  background(255);
  
  rectMode(CENTER);
  
  camera(100, 100, 100, 0, 0, 50, 0, 0, -1);
  
  noStroke();  
}

void keyPressed(){
  
  background(255);
 
    if(key == 'a'){
      angle1 += dif;
    }
    if(key == 'A'){
      angle1 = angle1 - dif;
    }
    if(key == 'b'){
      angle2 = angle2 + dif;
    }
    if(key == 'B'){
      angle2 = angle2 - dif;
    }
    if(key == 'g'){
      angle3 = angle3 + dif;
    }
    if(key == 'G'){
      angle3 = angle3 - dif;
    }
    if(keyCode == CONTROL){
      angle1 = 0;
      angle2 = 0;
      angle3 = 0;
    }
  }
    
    void  keyReleased(){
    
    background(255);
  
    if(key == 'b'){
      angle2 = 0;
    }
    if(key == 'B'){
      angle2 = 0;
    }
    if(key == 'g'){
      angle3 = 0;
    }
    if(key == 'G'){
      angle3 = 0;
    }
  }
  
  
  
  void draw(){
  //1st link
  rotateZ(radians(angle1));
  translate(0,0,arm1L/2);
  fill(0);
  box(arm1W,arm1D,arm1L);
  
  //2nd link
  //go to 2nd joint
  translate(0,0,arm1L/2);
  rotateX(radians(angle2));  
  //go to center of 2nd joint
  translate(0,0,arm2L/2);
  fill(50);
  box(arm2W,arm2D,arm2L);
  
  //3rd link
  // go to 3rd joint
  translate(0, 0, arm2L/2);
  rotateX(radians(angle3));
  // go to center of 3rd joint
  translate(0, 0, arm3L/2);
  fill(200);
  box(arm3W,arm3D,arm3L);
  
}
