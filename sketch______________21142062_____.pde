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

  int num;

void setup(){
  size(1200, 800, P3D);
  background(255);
  
  rectMode(CENTER);
  
  camera(100, 100, 100, 0, 0, 50, 0, 0, -1);
  
  noStroke();  
}

void keyPressed(){
  
  background(255);
 
    if(key == '3'){
      angle1 -= dif;
      num += 3;
    }
    if(key == '#'){
      angle1 += dif;
      num -= 3;
    }
    if(key == '2'){
      angle2 -= dif;
      num += 2;
    }
    if(key == '"'){
      angle2 += dif;
      num -= 2;
    }
    if(key == '1'){
      angle3 -= dif;
      num += 1;
    }
    if(key == '!'){
      angle3 += dif;
      num -= 1;
    }
    if(keyCode == CONTROL){
      angle1 = 0;
      angle2 = 0;
      angle3 = 0;
      num = 0;
    }
  }
    
    void  keyReleased(){
    
    background(255);
    
    if(key == '3'){
      angle1 = 0;
    }
    if(key == '#'){
      angle1 = 0;
    }
    if(key == '2'){
      angle2 = 0;
    }
    if(key == '"'){
      angle2 = 0;
    }
    if(key == '1'){
      angle3 = 0;
    }
    if(key == '!'){
      angle3 = 0;
    }
  }
  
  int x;
  
  void draw(){
  rotateX(radians(angle1));
  translate(0,0,arm1L/2);
  fill(255,0,0);
  box(arm1W,arm1D,arm1L);
  translate(0,0,arm1L/2);
  rotateX(radians(angle2));  
  translate(0,0,arm2L/2);
  fill(0,255,0);
  box(arm2W,arm2D,arm2L);
  translate(0, 0, arm2L/2);
  rotateX(radians(angle3));
  translate(0, 0, arm3L/2);
  fill(0,0,255);
  box(arm3W,arm3D,arm3L);
  


  hint(DISABLE_DEPTH_TEST);
  translate(0,0,0);
  rotateZ(radians(angle1));
  noLights();
  textMode(SHAPE);
  text(num, 20, 0);
  fill(0);
  hint(ENABLE_DEPTH_TEST);
  

}
