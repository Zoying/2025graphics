//week02_6_ArrayList_ArrayList_Integer_for_for_mouse
//不要一筆畫，要一直接著畫
ArrayList<Integer> x, y;
ArrayList<ArrayList<Integer>> xx = new ArrayList<ArrayList<Integer>>();//大的資料結構
ArrayList<ArrayList<Integer>> yy = new ArrayList<ArrayList<Integer>>();
PImage img;
void setup(){
  size(400, 400);
  img = loadImage("cute.png");//把圖拉進程式碼
}
void draw(){
  background(img);
  fill(255, 200);//半透明的色彩 白色，alpha值是128
  rect(0, 0, 400, 400);//畫超大的四邊形，全部蓋住
  for(int I = 0; I < xx.size(); I ++)//大寫I 對應大的資料結構
  {
    ArrayList<Integer> x = xx.get(I);//取出裡面的小的資料結構
    ArrayList<Integer> y = yy.get(I);
    for(int i = 1; i < x.size(); i ++)//小的 再照舊畫
    {
      line(x.get(i), y.get(i), x.get(i - 1), y.get(i - 1));
    }
  }
}
void mouseDragged(){
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){//滑鼠按下去時建新的資料結構
  x = new ArrayList<Integer>(); xx.add(x);
  y = new ArrayList<Integer>(); yy.add(y);
}
