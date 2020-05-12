import java.util.*;
Circulo c1,c2,c3,tmp;
List <Circulo>lista;
String q = "";
int n=-1;

int k = 30;
float x,y;

int w=0;
void setup(){
    size(400,300);
     lista = new <Circulo>ArrayList();
     tmp = null;
     for(int i=0; i < k; i++){
       x = random(width);
       y = random(height);
       tmp = new Circulo(x,y,50,w);
       w++;
       lista.add(tmp);

     }
     /*c1=new Circulo(width/2,height/2,50,1);
     c2=new Circulo(width/4,height/2,50,1);
     c3=new Circulo(width/2,height/4,50,1);
     lista.add(c1);
     lista.add(c2);
     lista.add(c3);*/
}

void draw(){ 
     background(0);
     for(int i=0; i < lista.size() ;i++){
     tmp = lista.get(i);
     if(i == lista.size()-1){
     tmp.SetColor(180,295,190);
     }
     tmp.dibuja();
     }
     
     textSize(24);
     fill(#DB145D);
     text(q,40,50);
     if (n != -1)
     text(n,140,30);
     fill(255);
}

int i=0;
void mousePressed(){
  q="";
 for(i=lista.size()-1; i>=0 ;i--){
   print(i);
          tmp = lista.get(i);
      ban = tmp.isAdentro(mouseX,mouseY);
       if(ban ) {
            n = tmp.id;
            q += tmp.id;
            tmp.mover=true;
            break;
          }else{
          tmp.mover=false;
          }
 }
 }
 
boolean ban;
float x1,y1;

void mouseReleased(){
 q = "";
 n = -1;// no se esta seleccionando ningun circulo
 tmp.mover=true;
 tmp = null;
}
void mouseDragged(){
  print("tmp",tmp.id);
  tmp = lista.get(i);
  if(ban){
tmp.x = mouseX - x1;
tmp.y = mouseY - y1;

}
}
