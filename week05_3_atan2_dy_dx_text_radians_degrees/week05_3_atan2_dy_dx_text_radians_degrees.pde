//week05_3_atan2_dy_dx_text_radians_degrees
//degrees v.s. radians 結合 week04_1，week05_2
void setup()
{
  size(400, 400);
}
void draw()
{
  background(128);
  line(200, 200, 400, 200);
  line(200, 200, mouseX, mouseY);
  float dx = mouseX - 200, dy = mouseY - 200;
  float a = atan2(dy, dx);//可找到 arc radians
  arc(200, 200, 200, 200, 0, a, PIE);//把 arc radians 拿來用
  textSize(30);
  text("radians: " + a, 100, 100);//radians 弧度/弳度
  text("degrees: " + degrees(a), 100, 130);//degrees度
}
