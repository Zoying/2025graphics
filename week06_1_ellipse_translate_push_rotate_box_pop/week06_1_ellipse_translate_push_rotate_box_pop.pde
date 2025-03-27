//week06_1_ellipse_translate_push_rotate_box_pop
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
    box(100, 30, 30);//week05 教過的 matrix 保護
  popMatrix();
}
