
//Position of cheeks
final int RIGHT_CHEEK_X = 425;
final int LEFT_CHEEK_X = 275;
final int CHEEK_Y = 290;


void setup() {
  size(700, 700);
}

void draw() {
  background(0);
  drawPikachu();
}

void drawPikachu() {
  stroke(0);
  //Tail
  fill(255, 255, 0);
  rect(558, 460, 75, 30);
  fill(144, 74, 7);
  rect(452, 504, 150, 30);
  rect(512, 482, 30, 75);

  //Ears
  fill(255, 255, 0);
  triangle(391, 117, 461, 173, 610, 103);
  triangle(309, 117, 241, 173, 192, 15);

  //Ears, left then right.
  quad(244, 404, 241, 356, 205, 327, 186, 357);
  quad(463, 333, 463, 383, 510, 345, 485, 313);

  //Legs, left then right.
  rectMode(CORNER);
  rect(width/2-113, height*3/4, 50, 100);
  rect(width/2+63, height*3/4, 50, 100);

  //Body, head.
  rectMode(CENTER);
  rect(width/2, height/2+50, 226, 300);
  ellipse(width/2, height/3, 250, 250);

  //Cheeks
  fill(255, 0, 0);
  ellipse(LEFT_CHEEK_X, CHEEK_Y, 50, 50);
  ellipse(RIGHT_CHEEK_X, CHEEK_Y, 50, 50);

  //Eyes left,right.
  fill(0);
  ellipse(290, 220, 50, 50);
  ellipse(410, 220, 50, 50);
  fill(255);
  //Pupils Centered
  ellipse(290, 220, 10, 10);
  ellipse(410, 220, 10, 10);

  //Nose
  fill(0);
  triangle(width/2, 270, width/2+20, 260, width/2-20, 260);

  //Mouth
  line(width/2, 290, width/2+20, 300);
  line(width/2, 290, width/2-20, 300);
  line(width/2+20, 300, width/2+30, 290);
  line(width/2-20, 300, width/2-30, 290);
}
