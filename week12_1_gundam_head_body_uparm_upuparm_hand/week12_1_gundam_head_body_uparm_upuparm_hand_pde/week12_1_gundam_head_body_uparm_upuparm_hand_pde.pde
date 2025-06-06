//week12_1_gundam_head_body_uparm_upuparm_hand_angle
//修改自week09_2，再加上09_5
//Ctrl-K複製模型
PShape body, head;
PShape uparm1, upuparm1, hand1;
void setup()
{
  size(400, 400, P3D);
  body = loadShape("body.obj");
  head = loadShape("head.obj");
  head = loadShape("head.obj");
  uparm1 = loadShape("uparm1.obj");
  upuparm1 = loadShape("upuparm1.obj");
  hand1 = loadShape("hand1.obj");
}
void draw()
{
  background(204);
  translate(200, 300);
  sphere(10);//原點
  
  scale(10, -10, 10);
  shape(body, 0, 0);
  pushMatrix();
    translate(0, 22.5);
    rotateY(radians(mouseX - 200));
    translate(0, -22.5);
    shape(head, 0, 0);
  popMatrix();
  
  pushMatrix();//左邊
    shape(upuparm1, 0, 0);//上上手臂
    pushMatrix();
      translate(-4.1, 19.9);//再掛回原位置
      rotateZ(radians(mouseX));
      translate(4.1, -19.9);//把物體旋轉中心，放到座標中心
      shape(uparm1, 0, 0);//上手臂
      pushMatrix();
        translate(-4.5, 16.9);
        rotateX(radians(mouseY));
        translate(4.5, -16.9);
        //translate(mouseX / 10.0, -mouseY / 10.0);
        //println(mouseX / 10.0, -mouseY / 10.0);//印出適合的數值
        shape(hand1, 0, 0);
      popMatrix();
    popMatrix();
  popMatrix();
}
