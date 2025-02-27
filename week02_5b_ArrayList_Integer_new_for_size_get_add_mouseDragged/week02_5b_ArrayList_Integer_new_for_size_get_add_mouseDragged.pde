//week02_5b_ArrayList_Integer_new_for_size_get_add_mouseDragged
ArrayList<Integer> x = new ArrayList<Integer>();
ArrayList<Integer> y = new ArrayList<Integer>();
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
  
  for(int i = 1; i < x.size(); i ++)
  {
    line(x.get(i), y.get(i), x.get(i - 1), y.get(i - 1));
  }
}
void mouseDragged()
{
  x.add(mouseX);
  y.add(mouseY);
}
