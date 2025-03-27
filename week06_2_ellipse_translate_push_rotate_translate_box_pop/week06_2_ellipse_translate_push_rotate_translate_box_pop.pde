//week06_2_ellipse_translate_push_rotate_translate_box_pop
void setup()
{
  size(500, 500, P3D);
}
void draw()
{
  background(142);
  ellipse(width / 2, height / 2, 200, 200);
  translate(width / 2, height / 2);//把東西放到中心
  pushMatrix();//week05 教過的 matrix 保護
    if(mousePressed)//按下 mouse 才轉動
    rotateZ(radians(frameCount));//對著下面中心旋轉
    translate(-50, 0, 0);//把棒子往左移一半，讓右端放在種中心
    box(100, 30, 30);//week05 教過的 matrix 保護
  popMatrix();
}
