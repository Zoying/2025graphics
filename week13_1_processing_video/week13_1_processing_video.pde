//week13_1_processing_video
//sketch-library-manage library...
import processing.video.*;
//Capture video;//有鏡頭
Movie movie;//無鏡頭
void setup()
{
  size(640, 480);
  //video = new Capture(this, 640, 480);
  //video.start();//open video
  movie = new Movie(this, "street.mov");//讀檔
  movie.loop();
}
void draw()
{
  //if(video.available()) video.read();
  //image(video, 0, 480);
  if(movie.available()) movie.read();
  image(movie, 0, 0);
}
