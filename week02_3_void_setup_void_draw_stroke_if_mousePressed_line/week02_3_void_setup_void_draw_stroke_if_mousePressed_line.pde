//week02_3_void_setup_void_draw_stroke_if_mousePressed_line
void setup()//一開始，設定一次(貼上week02_2)
{
  size(400, 400);
  background(255);
  fill(238);
  noStroke();
  float s = 400 / 14;//計算每個格子大小
  for(int i = 0; i < 14; i ++)//y座標
  {
    for(int j = 0; j < 14; j ++)//x座標
    {
      if((i + j) % 2 == 0) rect(j * s, i * s, s, s);
    }
  }
}

void draw()//每秒畫60次
{
  stroke(255, 0, 0);//紅線
  if(mousePressed) line(mouseX, mouseY, pmouseX, pmouseY);
}//mouse按下去，就畫線，給2座標:現在的 mouse和之前的 mouse
