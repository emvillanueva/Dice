int x=0;
int y=0;
int temp;
  void setup()
  {
    size(400,400); 
    noLoop();
  }
  void draw()
  {
    background(130,210,40); 
    for (int y=40; y<=210; y=y+70)
    {

     for (int x=110; x<=260; x=x+70) 
       { 
        Die bob= new Die(x,y);
        bob.show();
        println(bob.numDots);//just so I could check if it was working
        temp=temp+bob.numDots;
        println(temp);//thought it looked cool to see the console add them up

       }

    }
    text("You total is "+ temp,160,300);
    if (temp==6*9)
    {
    text("You win!",170,350);
    }
    temp=0;
}
  
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int numDots, myX, myY;
      
      Die(int x, int y) //constructor
      {
          numDots=(int)(Math.random()*6+1);
          myX=x;
          myY=y;

      }
      void roll()
      {
          //your code here
      }
      void show()
      {
         fill(255);
        rect(myX,myY,40,40);
         fill(0);
         if(numDots==1)
         {
         ellipse(myX+20,myY+20,5,5);
         }
         else if(numDots==2)
         {
         ellipse(myX+10,myY+10,5,5);
         ellipse(myX+30,myY+30,5,5);
         }
         else if(numDots==3)
         {
         ellipse(myX+10,myY+10,5,5);
         ellipse(myX+20,myY+20,5,5);
         ellipse(myX+30,myY+30,5,5);
         }
         else if(numDots==4)
         {
         ellipse(myX+10,myY+10,5,5);
         ellipse(myX+30,myY+10,5,5);
         ellipse(myX+10,myY+30,5,5);
         ellipse(myX+30,myY+30,5,5);
         }
         else if(numDots==5)
         {
         ellipse(myX+10,myY+10,5,5);
         ellipse(myX+30,myY+10,5,5);
         ellipse(myX+20,myY+20,5,5);
         ellipse(myX+10,myY+30,5,5);
         ellipse(myX+30,myY+30,5,5);
         }
         else
         {
         ellipse(myX+10,myY+10,5,5);
         ellipse(myX+10,myY+20,5,5);
         ellipse(myX+10,myY+30,5,5);
         ellipse(myX+30,myY+10,5,5);
         ellipse(myX+30,myY+20,5,5);
         ellipse(myX+30,myY+30,5,5);
          }
           

      
    }
  }
