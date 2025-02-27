//week02_4_PImage_loadImage_background_fill_println
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
}
