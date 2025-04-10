//week08_4_gundam_body_head
//慢慢把「切割開」的模型逐一組合
PShape body, head;
void setup()
{
  size(400, 400, P3D);
  body = loadShape("body.obj");
  head = loadShape("head.obj");
}
void draw()
{
  background(255);
  translate(width / 2, height / 2 + 100);
  sphere(10);//基準點
  scale(10, -10, 10);
  pushMatrix();
    translate(0.0, +22.5);
    rotate(radians(x));//step02 轉動
    //translate(x / 10, y / 10);
    //println(x / 10, y / 10);//印出數值
    translate(0.0, -22.5);//step01 頭的中心
    shape(head, 0, 0);
  popMatrix();
  shape(body, 0, 0);
}
float x = 0, y = 0;
void mouseDragged()
{
  x += mouseX - pmouseX;
  y -= mouseY - pmouseY;
}
