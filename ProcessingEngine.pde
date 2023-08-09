final ProcessingEngine processingEngine = this;

GameObject[] objects = new GameObject[10];

void setup() {
  size(800, 800);
  noStroke();
  frameRate(60);
  surface.setResizable(true);
  for(int i = 0; i < objects.length; i++) {
    objects[i] = new GameObject();
    objects[i].addComponent(Transform.class);
    objects[i].addComponent(RigidBody.class);
    objects[i].addComponent(Particle.class);
  }
}

void draw() {
  background(0);
  for(int i = 0; i < objects.length; i++) {
    objects[i].getComponent(Particle.class).update();
    objects[i].getComponent(Particle.class).display();
  }
}

void mousePressed() {
  for(int i = 0; i < objects.length; i++) {
    objects[i].getComponent(RigidBody.class).setForce(new PVector(random(-50, 50), random(-50, 50)));
    objects[i].getComponent(Transform.class).setPosition(new PVector(mouseX, mouseY));
  }
}
