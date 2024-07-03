String conv(int i) {
  String s1, s2;

  /* i が1桁のときに 01 のように2桁で表示する */
  s1 = String.valueOf(i / 10);
  s2 = String.valueOf(i % 10);
  
  /* String 同士を足すと 2つの文字列がつながる */
  return s1+s2;
}
int startTime = 0;
int elapsedTime = 0;
boolean running = false;

String stopwatch() {
  int timeToShow = running ? (millis() - startTime + elapsedTime) : elapsedTime;
  int s = (timeToShow / 1000) % 60;
  int m = (timeToShow / 1000) / 60;
  
  return(conv(m)+":"+conv(s));
}