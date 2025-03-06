//week03_13_3D_pushMatrix_translate_sphere_popMatrix
void setup(){
 size(600, 400, P3D); 
}
void draw(){
  background(128);
  lights();
  pushMatrix();//備份矩陣
    translate(300, 100);//習慣上要再往後縮1單位
    sphere(100);
  popMatrix();//還原矩陣
  //要備份矩陣、還原矩陣，就不會出錯
  pushMatrix();//備份矩陣
    translate(100, 100);
    sphere(100);
  popMatrix();//還原矩陣
}
