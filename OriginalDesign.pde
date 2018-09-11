Raindrop drop1;
Raindrop drop2;
Raindrop drop3;
Raindrop drop4;
Raindrop drop5;
Raindrop drop6;
Raindrop drop7;
Raindrop drop8;
Raindrop drop9;
Raindrop drop10;
Raindrop drop11;
Raindrop drop12;
Raindrop drop13;
Raindrop drop14;
Raindrop drop15;
Raindrop drop16;
Raindrop drop17;
Raindrop drop18;
Raindrop drop19;
Raindrop drop20;
color rainBlue = color(68,168,197);
void setup() {
  strokeWeight(2.25);
  frameRate(100);
  size(500,500);
  drop1 = new Raindrop(rainBlue,random(width*0.1,width*0.9),random(height),6.5);
  drop2 = new Raindrop(rainBlue,random(width*0.1,width*0.9),random(height),4.75);
  drop3 = new Raindrop(rainBlue,random(width*0.1,width*0.9),random(height),5.5);
  drop4 = new Raindrop(rainBlue,random(width*0.1,width*0.9),random(height),5.25);
  drop5 = new Raindrop(rainBlue,random(width*0.1,width*0.9),random(height),6.4);
  drop6 = new Raindrop(rainBlue,random(width*0.1,width*0.9),random(height),4.4);
  drop7 = new Raindrop(rainBlue,random(width*0.1,width*0.9),random(height),5.4);
  drop8 = new Raindrop(rainBlue,random(width*0.1,width*0.9),random(height),6.4);
  drop9 = new Raindrop(rainBlue,random(width*0.1,width*0.9),random(height),5.4);
  drop10 = new Raindrop(rainBlue,random(width*0.1,width*0.9),random(height),4.4);
  drop11 = new Raindrop(rainBlue,random(width*0.1,width*0.9),random(height),5.4);
  drop12 = new Raindrop(rainBlue,random(width*0.1,width*0.9),random(height),6.4);
  drop13 = new Raindrop(rainBlue,random(width*0.1,width*0.9),random(height),5.77);
  drop14 = new Raindrop(rainBlue,random(width*0.1,width*0.9),random(height),4.9);
  drop15 = new Raindrop(rainBlue,random(width*0.1,width*0.9),random(height),5.23);
  drop16 = new Raindrop(rainBlue,random(width*0.1,width*0.9),random(height),5.87);
  drop17 = new Raindrop(rainBlue,random(width*0.1,width*0.9),random(height),5.87);
  drop18 = new Raindrop(rainBlue,random(width*0.1,width*0.9),random(height),5.87);
  drop19 = new Raindrop(rainBlue,random(width*0.1,width*0.9),random(height),5.87);
  drop20 = new Raindrop(rainBlue,random(width*0.1,width*0.9),random(height),5.87);
}

class Raindrop{
  color c;
  float x_pos, y_pos, yspeed;
  float width_top = 10; //0.3
  float width_bottom = 50; //1.5
  float drop_length = 100; //3
  /*float dropwidth_top, dropwidth_bottom, droplength; 
  dropwidth_top = 10; //droplength*0.1 
  dropwidth_bottom = 50;
  droplength = 100; */
  Raindrop(color tempC, float x, float y, float v){
    c = tempC;
    x_pos = x;
    y_pos = y;
    yspeed = v;
  }
  void fall(){
    y_pos += yspeed;
    if (y_pos > height){
      //splash();
      y_pos = 0;
      yspeed = random(4.25,6.5);
      x_pos = random(width*0.01,width*0.99);
      strokeWeight(1.75);
    }
  }
  void display(){
    //noStroke();
    stroke(c);
    fill(c);
    //line(x_pos,y_pos,x_pos,y_pos+3);
    bezier(x_pos,y_pos,x_pos,0.01*drop_length+y_pos,x_pos+0.1*width_bottom,y_pos+drop_length*0.08,x_pos,y_pos+0.1*drop_length);
    bezier(x_pos,y_pos,x_pos,y_pos+drop_length*0.01,x_pos-0.1*width_bottom,y_pos+drop_length*0.08,x_pos,y_pos+0.1*drop_length);
  }
  //void splash(){
  //SPLASHES THE RAINDROP AND RESTARTS FALL
  //  if (y_pos >= height*0.925) {
      //stroke(255);
      //fill(255);
      //rect(x_pos,y_pos,5,5);
      //stroke(c);
      //fill(c);
  //     y_pos = 0;
  //  }
  //}
}
void draw() {
  background(5);
  noStroke();
  fill(0,0,255);
  rect(0,height*9/10,width,height*1/5);
  drop1.fall();
  drop1.display();
  drop2.fall();
  drop2.display();
  drop3.fall();
  drop3.display();
  drop4.fall();
  drop4.display();
  drop5.fall();
  drop5.display();
  drop6.fall();
  drop6.display();
  drop7.fall();
  drop7.display();
  drop8.fall();
  drop8.display();
  drop9.fall();
  drop9.display();
  drop10.fall();
  drop10.display();
  drop11.fall();
  drop11.display();
  drop12.fall();
  drop12.display();
  drop13.fall();
  drop13.display();
  drop14.fall();
  drop14.display();
  drop15.fall();
  drop15.display();
  drop16.fall();
  drop16.display();
  drop17.fall();
  drop17.display();
  drop18.fall();
  drop18.display();
  drop19.fall();
  drop19.display();
  drop20.fall();
  drop20.display();
}