class Circulo{
float x;
float y;
float diametro;
int id;
  int color1 = 200;
  int color2 = 200;
  int color3 = 200;
boolean mover;
float r;
Circulo(float a, float b, float c, int d){
  x = a;
  y = b;
  diametro = c;
  id = d;
  ellipseMode(CENTER);
  mover = false;
}
void dibuja(){
   fill(color1,color2,color3);
ellipse(x,y,diametro, diametro);
textSize(30);
    fill(0);
    text(""+(int)id,x-20,y+15);
}
boolean isAdentro(float a, float b){
if(dist(x,y,a,b) > diametro/2){
return false;
}else{
return true;
}
}
 int GetId(){
   return id;
  }
 void SetColor(int scolor, int scolor2, int scolor3){
   color1 = scolor;
   color2 = scolor2;
   color3 = scolor3;
}
}
