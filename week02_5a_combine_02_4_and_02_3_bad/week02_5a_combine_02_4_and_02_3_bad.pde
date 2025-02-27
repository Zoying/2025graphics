//week02_5a_combine_02_4_and_02_3_bad
PImage img;
void setup()
{
  size(400, 400);
  img = loadImage("cute.png");//把圖拉進程式碼
}
void draw()
{
  background(img);
  fill(255, mouseX);//半透明的色彩 白色，alpha值是128
  println(mouseX);//把mouseX的值，在下面「小黑」印出來
  rect(0, 0, 400, 400);//畫超大的四邊形，全部蓋住
  
  stroke(255, 0, 0);//紅線
  if(mousePressed) line(mouseX, mouseY, pmouseX, pmouseY);
}
