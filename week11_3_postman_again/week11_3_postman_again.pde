//week11_3_postman_again
PImage postman, head, body, uparm1, hand1, uparm2, hand2, foot1, foot2;
void setup()
{
  size(560, 560);
  postman = loadImage("postman.png");
  head = loadImage("head.png");
  body = loadImage("body.png");
  uparm1 = loadImage("uparm1.png");
  hand1 = loadImage("hand1.png");
  uparm2 = loadImage("uparm2.png");
  hand2 = loadImage("hand2.png");
  foot1 = loadImage("foot1.png");//增加腳(220, 375)
  foot2 = loadImage("foot2.png");//(260, 372)
}

float [] angleX = new float[10];
float [] angleY = new float[10];
int ID = 0;
ArrayList<String> lines =new ArrayList<String>();
void keyPressed()
{
  if(key == 'p') playing = !playing;
  if(key == '1') ID = 1;//左手臂
  if(key == '2') ID = 2;//左手
  if(key == '3') ID = 3;//右手臂
  if(key == '4') ID = 4;//右手
  if(key == '5') ID = 5;
  if(key == '6') ID = 6;
  if(key == '0') ID = 0;//頭
  if(key == 's')
  {
    String now = "";
    for(int i = 0; i < 10; i ++)
    {
      now += angleX[i] + " ";
      now += angleY[i] + " ";
    }
    lines.add(now);
    String [] arr = new String[lines.size()];//傳統Java陣列的資料結構
    lines.toArray(arr);//轉換成傳統陣列以便存檔
    saveStrings("angles.txt", arr);//小寫s會存檔
    println("現在存檔:" + now);
  }
  if(key == 'r')
  {
    String [] file = loadStrings("angles.txt");
    if(file != null)
    {
      for(int i = 0; i < file.length; i ++)
      {
        lines.add(file[i]);
        println("現在讀檔:" + file[i]);
      }
    }
  }
}
boolean playing = false;
void mouseDragged()
{
  angleX[ID] += mouseX - pmouseX;
  angleY[ID] += mouseY - pmouseY;
}
int R = 0;
void myInterpolate()
{
  if(lines.size() >= 2)
  {
    float alpha = (frameCount % 30) / 30.0;
    if(alpha == 0.0) R = (R + 1) % lines.size();
    int R2 = (R + 1) % lines.size();
    float [] oldAngle = float(split(lines.get(R), ' '));
    float [] newAngle = float(split(lines.get(R2), ' '));
    for(int i = 0; i < 20; i ++)
    {
      angleX[i] = oldAngle[i * 2 + 0] * (1 - alpha) + newAngle[i * 2 + 0] * alpha;
      angleY[i] = oldAngle[i * 2 + 1] * (1 - alpha) + newAngle[i * 2 + 1] * alpha;
    }
  }
}
void draw()
{
  background(#FFFFF2);
  if(playing) myInterpolate();
  image(body, 0, 0);
  
  pushMatrix();
    translate(232, 200);//再放回正確位置
    rotate(radians(angleX[0]));
    translate(-232, -200);//把旋轉中心放到(0, 0)
    image(head, 0, 0);//畫頭
  popMatrix();
  
  pushMatrix();//foot1
    translate(220, 375);
    rotate(radians(angleX[5]));
    translate(-220, -375);
    image(foot1, 0, 0);
  popMatrix();
  
  pushMatrix();//foot2
    translate(260, 372);
    rotate(radians(angleX[6]));
    translate(-260, -372);
    image(foot2, 0, 0);
  popMatrix();
  
  pushMatrix();
    translate(290, 262);
    rotate(radians(angleX[1]));
    translate(-290, -262);
    image(uparm2, 0, 0);//右上手臂  
    pushMatrix();
      translate(357, 259);
      rotate(radians(angleY[2]));
      translate(-357, -259);
      image(hand2, 0, 0);//手肘
     popMatrix();
  popMatrix();
  
  pushMatrix();
    translate(185, 261);
    rotate(radians(angleX[3]));
    translate(-185, -261);
    image(uparm1, 0, 0);//左上手臂
    pushMatrix();
      translate(116, 265);
      rotate(radians(angleY[4]));
      translate(-116, -265);
      image(hand1, 0, 0);//手肘
    popMatrix();
  popMatrix();
}
