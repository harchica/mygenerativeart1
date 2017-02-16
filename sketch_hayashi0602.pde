//とりあえず数字変えたら面白いかなぁと思って作りました
float x,y; //円の半径
float a,b;
//放射線の集まった点の座標
 int len = 400;
float cx, cy; 


 int lan = 200;
float da, db; 

 int MaxColor; 

void setup(){
size( 800, 800 ); //画面のサイズ

}
 // stroke ( #339933 );
   
 
void draw() {
  background( MaxColor - 1 ); //背景
  colorMode(HSB,MaxColor-1);
 float targetX, targetY;
 float targetA, targetB;
targetX = mouseX ;
targetY = mouseY ; 

targetA = mouseY*mouseX ;
targetB = -mouseX ; 


  
 for( int i = 1; i<360; i=i+3 ){

   float easing = 0.001;

  cx = cx + (targetX - cx)*easing;
  cy= cy + (targetY - cy)*easing;
  
    da = da + (targetA - cx)*easing;
  db= db + (targetB - cy)*easing;
   
  x =  width/2+ len*cos(radians(i));
  y = height/random(1,50) - len*sin(radians(i));
  a = height/2 -lan*tan(radians(i));
  b = width + lan*cos(radians(i));
     
     noStroke();
     MaxColor= width;
   stroke(pmouseX*3, pmouseY, pmouseX*2,pmouseY/5);
 fill(mouseX, mouseY,MaxColor- 1,pmouseX);
   strokeWeight(random(0.01,1));
   line (cx, cy, x, y);
   line(x/2,y/2,cx,cy);
   line(cy/2,cx/2,x,y);
   
      noStroke(); 
      MaxColor=height;
       
   stroke(pmouseX,pmouseY*2,pmouseY,mouseX);
    strokeWeight(random(0.01,1));
    
   line(y,x,cy,cx);
   line(a,b,da,db);
   line (da/2,db,b/random(1,5),a);
   line(da,db/2,a,b/2);
    noStroke();
    MaxColor=height;
 fill(mouseX, mouseY/2,MaxColor- 1,pmouseX);
   float r = dist(mouseX, mouseY, pmouseX, pmouseY); //hannkeinikyoriwotekiyou
    ellipse(mouseX, mouseY, r, r);
    ellipse(mouseY,mouseX, r, r);
 }   

// for()の条件を満たす間、くりかえし{]内の処理実行
 
 

 }