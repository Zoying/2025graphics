//week06_7_push_RRT_many_TRT_inside_pop
//慢慢組出機器手臂
void setup()
{
  size(500, 800, P3D);//step00 把它變長可以看比較完整
}
void draw()
{
  background(255);
  translate(width / 2, height / 2);
  sphere(10);//黑球是中心
  
  fill(252, 131, 77);
  pushMatrix();
    if(mousePressed && mouseButton == RIGHT) rotateZ(radians(frameCount));
    translate(x, y);//step01 往上抬升，把「關節」移到中心
    
    box(50, 200, 25);//手臂
    pushMatrix();
      translate(0, -100);//step00 掛到手臂上
      //if(mousePressed) step00 註解掉，讓它一直轉
      rotateZ(radians(frameCount));
      translate(100, 0);
      box(200, 50, 25);//手肘
        
      pushMatrix();
        translate(100, 0);
        //if(mousePressed) rotateZ(radians(frameCount));
        rotateZ(radians(frameCount));
        translate(25, 0, 0);
        box(50, 25, 50);//小手腕
      popMatrix();
    popMatrix();
  popMatrix();
}
float x = 0, y = 0;
void mouseDragged()
{
  x += mouseX - pmouseX;
  y += mouseY - pmouseY;
  println("x:" + x + " y:" + y);
}
