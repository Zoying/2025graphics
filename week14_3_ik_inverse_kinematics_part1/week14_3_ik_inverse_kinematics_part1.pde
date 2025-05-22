//week14_3_ik_inverse_kinematics_part1
void setup()
{
  size(400, 400);
}
float [] angle = new float[5];
void draw()
{
  background(255);
  translate(width / 2, height / 2);
  ellipse(0, 0, 12, 12);
  
  pushMatrix();
    rotate(radians(angle[0]));//2D對Z軸轉
    rect(0, -5, 50, 10);
  popMatrix();
}
void mouseDragged()
{
  angle[0] += mouseX - pmouseX;
}
