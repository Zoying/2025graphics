//week05_4_translate_mouseX_mouseY_rotate_radians
//比較 rotate 與 translate 的順序
void setup()
{
  size(400, 400);
}
void draw()
{
  background(204);
  //做以下測試: 下面兩行調換順序
  //畫東西之前 translate() 才有效果
  //在電腦圖學裡，畫圖時會照著之前「累積的移動、旋轉」來放東西
  translate(mouseX, mouseY);//移到 mouse 所在位子
  rotate(radians(frameCount));
  rect(-50, -5, 100, 10);//寬度100的棒子，放左上角
}
