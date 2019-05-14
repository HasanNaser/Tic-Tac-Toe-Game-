class button{
   void reset_button_over(int x, int y, int width, int height)  {
      if (mouseX >= x && mouseX <= x+width && 
          mouseY >= y && mouseY <= y+height) {
         resetOver=true;
      } else {
         resetOver=false;
      }
  }
  
  


}