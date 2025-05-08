//week12_6_sound
//要有聲音，需要library函式庫
//Sketch-library-managed library-sound
//Provides a simple way to work with audio.下載
//file-examples-libraries核心函式庫-sound
//Soundfile 看SimplePlayback簡單播放音樂的範例
import processing.sound.*;
SoundFile mySound;
void setup()
{
  size(400, 400);
  mySound = new SoundFile(this, "music.mp3");
  mySound.play();
}
void draw()//要有空函式，才會持續更新，才有聲音
{
  
}
