//week05_5_rotate_radians_frameCount_translate_mouseX_mouseY
//比較 rotate 與 translate 的順序
void setup()
{
  size(400, 400);
}
void draw()
{
  background(204);
  //做以下測試: 下面兩行調換順序
  //兩行順序不同，一個是自轉，一個是公轉
  //在電腦圖學裡，畫圖時會照著之前「累積的移動、旋轉」來放東西
  rotate(radians(frameCount) * 10);//1秒60frame，轉60度，要變 radians 單位
  translate(mouseX, mouseY);//移到 mouse 所在位子
  rect(-50, -5, 100, 10);//寬度100的棒子，放左上角
}
