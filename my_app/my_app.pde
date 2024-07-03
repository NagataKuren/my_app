int btX = width;  // ボタン1のX座標
int bt1Y = height - 180; // ボタン1のY座標
int bt2Y = height - 90; // ボタン2のY座標
int btW = 45; // ボタンの幅
int btH = 70;  // ボタンの高さ

void setup() {
  size(844, 390);
  textSize(50);
}

void draw() {
  background(128);
  textSize(50);
  text(stopwatch(), 40, 90);
  line(width/3,0,width/3,height);

  // ボタンの描画
  fill(running ? 200 : 100); // ボタンの色
  rect(btX, bt1Y, btW, btH);//ボタン1の描画
  rect(btX, bt2Y, btW, btH);//ボタン2の描画
}

void mousePressed() {
  // マウスがボタンの上でクリックされたかどうかをチェック
  if (mouseX >= btX && mouseX <= btX + btW && mouseY >= bt1Y && mouseY <= bt1Y + btH) {
    if (!running) {
      startTime = millis();
      running = true;
    } else {
      elapsedTime += millis() - startTime;
      running = false;
    }
  }
  if (mouseX >= btX && mouseX <= btX + btW && mouseY >= bt2Y && mouseY <= bt2Y + btH) {
    if (!running) {
      startTime = millis();
      running = true;
    } else {
      elapsedTime += millis() - startTime;
      running = false;
    }
  }
}
