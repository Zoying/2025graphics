//week12_4_gundam_head_body_push_trt_pop_again
//修改自week12_1
//加上 float [] angleX = new float[10];
//加上angleY[ID] += mouseY - pmouseY;
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
float [] angleX = new float[10];
float [] angleY = new float[10];
int ID = 0;//head:0 upuparm:1 uparm:2 hand:3
void mouseDragged()
{
  angleX[ID] += radians(mouseX - pmouseX);//左右拖曳
  angleY[ID] += radians(mouseY - pmouseY);//上下拖曳
}
void keyPressed()
{
  if(key == '1') ID = 1;
  if(key == '2') ID = 2;//uparm
  if(key == '3') ID = 3;//hand
  if(key == '4') ID = 4;
  if(key == '5') ID = 5;
  if(key == '6') ID = 6;
  if(key == '7') ID = 7;
  if(key == '8') ID = 8;
  if(key == '9') ID = 9;
  if(key == '0') ID = 0;//head
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
    rotateY(angleX[0]);//x方向
    rotateX(angleY[0]);//y方向
    translate(0, -22.5);
    shape(head, 0, 0);
  popMatrix();
  
  pushMatrix();//左邊
    translate(-2.9, 20.8);
    rotateY(angleX[1]);
    rotateX(angleY[1]);
    translate(2.9, -20.8);
    shape(upuparm1, 0, 0);//上上手臂
    //translate(mouseX / 10.0, -mouseY / 10.0);
    //println(mouseX / 10.0, -mouseY / 10.0);
    pushMatrix();
      translate(-4.1, 19.9);//再掛回原位置
      rotateZ(angleX[2]);
      rotateY(angleY[2]);
      translate(4.1, -19.9);//把物體旋轉中心，放到座標中心
      shape(uparm1, 0, 0);//上手臂
      pushMatrix();
        translate(-4.5, 16.9);
        rotateX(angleX[3]);
        rotateY(angleY[3]);
        translate(4.5, -16.9);
        //translate(mouseX / 10.0, -mouseY / 10.0);
        //println(mouseX / 10.0, -mouseY / 10.0);//印出適合的數值
        shape(hand1, 0, 0);
      popMatrix();
    popMatrix();
  popMatrix();
}
