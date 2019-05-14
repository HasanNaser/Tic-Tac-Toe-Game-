
class draww{
public void draw_o(int position){
  noFill();
  stroke(255,255,255);
   switch (position){
       case 1:
       ellipse(110, 110, 120, 120);
         
        break;
       case 2:
        ellipse(310, 110, 120, 120);
        break;
       case 3:
        ellipse(500, 110, 120, 120);
        break;
       case 4:
        ellipse(110, 310, 120, 120);
        break;
       case 5:
        ellipse(310, 310, 120, 120);
        break;
       case 6:
        ellipse(500, 310, 120, 120);
        break;
       case 7:
        ellipse(110, 500, 120, 120);
        break;
       case 8:
        ellipse(310, 500, 120, 120);
        break;
       case 9:
        ellipse(500, 500, 120, 120);
        break;
       
     }
 }
 public void draw_x(int position){
   stroke(255,255,255);
   switch (position){
     case 1:
      line(50,50,175,175);
      line(175,50,50,175);
      break;
     case 2:
      line(250,50,375,175);
      line(375,50,250,175);
      break;
     case 3:
      line(425,50,550,175);
      line(550,50,425,175);
      break;
     case 4:
      line(50,250,175,375);
      line(175,250,50,375);
      break;
     case 5:
      line(250,250,375,375);
      line(375,250,250,375);
      break;
     case 6:
      line(425,250,550,375);
      line(550,250,425,375);
      break;
     case 7:
      line(50,425,175,550);
      line(175,425,50,550);
      break;
     case 8:
      line(250,425,375,550);
      line(375,425,250,550);
      break;
     case 9:
      line(425,425,550,550);
      line(550,425,425  ,550);
      break;
     
   }
   }
   
}