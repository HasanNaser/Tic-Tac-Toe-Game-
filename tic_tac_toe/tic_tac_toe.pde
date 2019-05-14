 int [] dizi_dolu={88,2,2,2,2,2,2,2,2,2};
 color resetHighLight;
 color currentColor ;
 
 color baseColor ;
 
 boolean resetOver=false;
void setup(){
frameRate(15);   
size(600,700);
background(#1ece91);
strokeWeight(2);
rect(50, 600, 80, 60 , 7);  
text("Reset",12,0,100,500);
 for(int i=200;i<600;i=i+200){
   strokeWeight(5);
   strokeCap(ROUND);
   line(i,25,i,575);
   line(25,i,575,i);
 }
 
 resetHighLight=color(102);
  currentColor=color(255);
  baseColor=color(255,0,0);
   
}
int start=(int)random(0,2);
  int state=0;
void draw(){   
  button reset=new button();
  reset.reset_button_over(50, 600, 80, 60);
  fill(currentColor);
   if(mousePressed==true)
   {
     if(resetOver==true){
      currentColor=resetHighLight;
     }
     else if(resetOver==false){
      currentColor=baseColor;
     }
     
     
    if( dizi_dolu[which_place(mouseX,mouseY)]==2){ 
        draw_action(which_place(mouseX,mouseY),start);
        if(start==1){
           dizi_dolu[which_place(mouseX,mouseY)]=1;
           start=0;
        }
        else{
           start=1;
           dizi_dolu[which_place(mouseX,mouseY)]=0;
        }
    }
    else
     println("loaded");
     
     for(int i=0;i<dizi_dolu.length;i++){
       print(dizi_dolu[i]+"-");
     }
     println();
     check_state();
   }
  
    
    
     
       
    
   
}// end draw



int which_place(int x, int y){
  //println( mouseX+" - "+mouseY);
    if(x<200&&y<200){
      println("1");
      return 1;
    }
    else if(x>200&&x<400&&y<200)
    {
       println("2");
       return 2;
    }
    else if(x>400&&x<600&&y<200)
    {
       println("3");
       return 3;
    }
    else if(x<200&&y>200&&y<400)
    {
       println("4");
       return 4;
    }
    else if(x>200&&x<400&&y>200&&y<400)
    {
       println("5");
       return 5;
    }
    else if(x>400&&x<600&&y>200&&y<400)
    {
       println("6");
       return 6;
    }
    else if(x<200&&y>400&&y<600)
    {
       println("7");
       return 7;
    }
    else if(x>200&&x<400&&y>400&&y<600)
    {
       println("8");
       return 8;
    }
    else if(x>400&&x<600&&y>400&&y<600)
    {
       println("9");
       return 9;
    }
    else 
    println("non");
   return 000;
 }
 
 
 
 void draw_action(int position,int state){
   draww draw=new draww();
   
     if(state==1){
      draw.draw_x(position);
       
     }
     else{
      draw.draw_o(position);
      
     } 
 }
 
 
 
 void check_state(){
  if(dizi_dolu[1]==1&&dizi_dolu[2]==1&&dizi_dolu[3]==1){
    stroke(255,10,10);
    strokeWeight(10);
    line(25,110,550,110);
  }
  if(dizi_dolu[3]==1&&dizi_dolu[6]==1&&dizi_dolu[9]==1){
    stroke(255,10,10);
    strokeWeight(10);
    line(490,50,490,570);
  }
  if(dizi_dolu[3]==1&&dizi_dolu[5]==1&&dizi_dolu[7]==1){
    stroke(255,10,10);
    strokeWeight(10);
    line(535,50,40,570);
  }
  if(dizi_dolu[1]==1&&dizi_dolu[4]==1&&dizi_dolu[7]==1){
    stroke(255,10,10);
    strokeWeight(10);
    line(115,40,115,570);
  }
  if(dizi_dolu[7]==1&&dizi_dolu[8]==1&&dizi_dolu[9]==1){
    stroke(255,10,10);
    strokeWeight(10);
    line(25,490,550,490);
  }
  if(dizi_dolu[1]==1&&dizi_dolu[5]==1&&dizi_dolu[9]==1){
    stroke(255,10,10);
    strokeWeight(10);
    line(30,35,550,550);
  }
  
  
  
  
  if(dizi_dolu[1]==0&&dizi_dolu[2]==0&&dizi_dolu[3]==0){
    stroke(255,10,10);
    strokeWeight(10);
    line(25,110,550,110);
  }
  if(dizi_dolu[3]==0&&dizi_dolu[6]==0&&dizi_dolu[9]==0){
    stroke(255,10,10);
    strokeWeight(10);
    line(490,50,490,570);
  }
  if(dizi_dolu[3]==0&&dizi_dolu[5]==0&&dizi_dolu[7]==0){
    stroke(255,10,10);
    strokeWeight(10);
    line(535,50,40,570);
  }
  if(dizi_dolu[1]==0&&dizi_dolu[4]==0&&dizi_dolu[7]==0){
    stroke(255,10,10);
    strokeWeight(10);
    line(115,40,115,570);
  }
  if(dizi_dolu[7]==0&&dizi_dolu[8]==0&&dizi_dolu[9]==0){
    stroke(255,10,10);
    strokeWeight(10);
    line(25,490,550,490);
  }
  if(dizi_dolu[1]==0&&dizi_dolu[5]==0&&dizi_dolu[9]==0){
    stroke(255,10,10);
    strokeWeight(10);
    line(30,35,550,550);
  }
 
 }
 