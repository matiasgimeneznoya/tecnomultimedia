//{ } +   -   >   <   "  "  &   '  '

//variables

int jugar = 1;
int repinta = 1;
int tamano= 35;
int posX= 0;
int posY= 0;
int r;

void setup(){ 

  size(800,600);
  background(0,0,0);
  cursor(HAND);
 }
 

void draw()
{ 
  if ((jugar == 1) && (repinta == 1))
  {
    dibujarFormas();
   }
 }
  
void dibujarFormas() 
{
  background(0,0,0);
   
    //engaño
   
    for(int i=0; i<=0; i++)
   {
       fill(floor(random(0,255)),floor(random(0,255)),floor(random(0,255)));
       ellipse(floor(random(50,750)),floor(random(100,550)),tamano, tamano);
   
      }
   
   //objeto
   
   posX = floor(random(50,750));
   posY = floor(random(100,550));
   fill(255,0,0);
   ellipse(posX,posY,tamano,tamano);
  
   
   
   //nueva pantalla
    repinta=0;
    }

void mouseClicked() 
{ 
   if(jugar==1)
   { 
   if (repinta==0)
  { 
    repinta=1;
    }
   if ((mouseX > posX - tamano) && (mouseX< posX+ tamano) && (mouseY > posY - tamano) && (mouseY< posY+ tamano));
   
  
  else
 {
 jugar=0;
 
 fill(255);
 textAlign(RIGHT);
 textSize(18);
 text(" GAME OVER ",780,30);
 }
 
 
 }
}
 
 void keyPressed()
 { 
   if(key== 'r');
   
  background(0);
  
   for(int i=0; i<=0; i++)
   {
       fill(floor(random(0,255)),floor(random(0,255)),floor(random(0,255)));
       ellipse(floor(random(50,750)),floor(random(100,550)),tamano, tamano);
   
      }
  
 
   posX = floor(random(50,750));
   posY = floor(random(100,550));
   fill(255,0,0);
   ellipse(posX,posY,tamano,tamano);

   
    repinta=0;
    }
 
 
 
 
 
  
