PGraphics canvas;
int lines = 60;  
float resolution = width * 0.2;

void setup() {
  size(2000, 2000, P2D);
  canvas = createGraphics(width, height, P2D);
  smooth(8);
  canvas.smooth(8);
  canvas.beginDraw();
  canvas.background(0);
  canvas.endDraw();
  canvas.shapeMode(CENTER);
}

void draw() {
  canvas.beginDraw();
  canvas.background(0);
  canvas.noFill();
  canvas.stroke(255);
  canvas.strokeWeight(3);

  float yErr = 40;

  //canvas.translate(canvas.width*0.5, canvas.height*0.5);
  canvas.rotate(-PI/4);
  float yOff = 2 * canvas.height / lines; 
  for (int i = 0; i < lines; i++) {
    float currOff = yOff * i + yOff * 0.5;
    PVector endPoint = null;
    PShape s = canvas.createShape();
    s.beginShape();
    for (int k = 0; k < canvas.width * 2; k = k + int(resolution)) {
      endPoint = new PVector(k + resolution, currOff);
      if (k > 0 && k + resolution < canvas.width * 2) {
        endPoint.add(new PVector(0, sin(k + resolution) * random(yErr)));
      }
      s.curveVertex(endPoint.x, endPoint.y);
    }
    s.endShape();
    canvas.shape(s, 0, 0);
  }
  canvas.endDraw();

  image(canvas, 0, 0, width, height);
  saveFrame("frames/###2.png");
  noLoop();
}
