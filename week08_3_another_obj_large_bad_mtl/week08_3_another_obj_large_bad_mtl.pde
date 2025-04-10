//week08_3_another_obj_large_bad_mtl
PShape gundam;//須把檔案拉入
void setup()
{
  size(400, 400, P3D);
  gundam = loadShape("FinalBaseMesh.obj");
}
void draw()
{
  background(128);
  lights();
  translate(width / 2, height / 2 + 100);
  pushMatrix();
    scale(10, -10, 10);
    rotateY(radians(frameCount));//對Y軸旋轉
    shape(gundam, 0, 0);
  popMatrix();
}
