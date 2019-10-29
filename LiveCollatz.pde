Collatz weed[]=new Collatz[5];
drop[] drops =new drop[10];
PVector pos;
 int space =150;
 PImage fish;
void setup() {
  size(1200, 600);
  fish= loadImage("fish2.png");
  pos=new PVector(0,(int)random(200,height-400));
    for(int i=0;i<weed.length;i++){
      weed[i]=new Collatz();
  }
   for(int i=0;i<drops.length;i++){
     drops[i]=new drop(); 
    }

}
void draw() {
 background(190, 231, 255);
  frameRate(10);
  float Pnoise =noise(random(pos.x),noise(pos.y));
   image(fish,pos.x,pos.y*Pnoise,100,100);
   pos.x+=20;
   
   if(pos.x>width){
     pos.x=-100;
   }
   for(int i=0;i<weed.length;i++){
     
    weed[i].weedGen(space);
    space+=250;
    if(i>weed.length-2){
    space=150;
    }
   
  }
  for(int i=0;i<drops.length;i++){
  drops[i].fall();
  drops[i].show();
  }
    
 
}
