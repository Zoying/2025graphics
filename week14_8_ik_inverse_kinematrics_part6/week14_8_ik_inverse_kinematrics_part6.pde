//week14_8_ik_inverse_kinematrics_part6
void setup()
{
  size(400, 400);
  for(int i = 0; i < 6; i++)
  {
    p[i] = new PVector(200, 350 - 50 * i);
  }
}
PVector [] p = new PVector[6];
void draw()
{
  background(255);
  for(int i = 0; i < 6; i++)
  {
    if(i > 0) line(p[i - 1].x, p[i - 1].y, p[i].x, p[i].y);
    fill(255, 0, 0);//紅圈圈
    ellipse(p[i].x, p[i].y, 8, 8);
    fill(0);//黑字
    text("p:" + i, p[i].x + 10, p[i].y);//字往右一點點
  }
  PVector now = new PVector(mouseX, mouseY);//現在的位置
  for(int i = 5; i > 0; i--)
  {
    PVector v = PVector.sub(now, p[i]).normalize().mult(50);//短向量
    p[i].x = now.x - v.x;//新位置 是中心 再加長度50的這小段
    p[i].y = now.y - v.y;//新位置 是中心 再加長度50的這小段
    now = p[i];
  }
  ellipse(mouseX, mouseY, 6, 6);//滑鼠也有小點控制座標移動
  //line(p[4].x, p[4].y, mouseX, pmouseY);
}
