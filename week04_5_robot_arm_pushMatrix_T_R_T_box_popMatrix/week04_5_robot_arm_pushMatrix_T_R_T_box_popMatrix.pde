//week04_5_robot_arm_pushMatrix_T_R_T_box_popMatrix
void setup()
{
  size(400, 400, P3D);
}
void draw()
{
  background(128);
  translate(width / 2, height / 2);//移到畫面中
  pushMatrix();
    translate(0, 100);
    box(50);//台座
    pushMatrix();
    translate(0, -25);
    rotateZ(radians(mouseX));//對Z軸旋轉
    translate(0, -50);//把下端移到中心
      box(10, 100, 10);
     popMatrix();
    popMatrix();
}
