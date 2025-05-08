//week12_7_sound_intro_ingame_sword_monkey
import processing.sound.*;
SoundFile sndInGame, sndIntro, sndMonkey, sndSword;
void setup()
{
  size(400, 400);
  sndInGame = new SoundFile(this, "In Game Music.mp3");
  sndInGame = new SoundFile(this, "Intro Song_Final.mp3");
  sndInGame = new SoundFile(this, "Monkey 1.mp3");
  sndInGame = new SoundFile(this, "sword slash.mp3");
  sndIntro.play();
}
boolean playingIntro = true;
void keyPressed()//按下空白建，進入遊戲音樂
{
  if(playingIntro)
  {
    sndIntro.stop();//開場音樂停
    sndInGame.play();
    playingIntro = false;//現在沒播開場
  }
  else
  {
    sndInGame.stop();
    sndIntro.play();
    playingIntro = true;
  }
}
void mousePressed()
{
  if(mouseButton == LEFT) sndSword.play();
  if(mouseButton == RIGHT) sndMonkey.play();
}
void draw()
{
  
}
