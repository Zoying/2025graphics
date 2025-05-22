//week14_1_PFont_createFont_textSize_text
size(300, 300);
textSize(50);//字型大小
text("Hello", 10, 50);//預設字形
PFont font = createFont("Times New Roman", 50);
textFont(font);//換字形
text("Hello", 10, 100);//往下放
//print(PFont.list());//列出所有可用字形
for(String name : PFont.list()) println(name);//改用for迴圈，把全部字形分行印出來
