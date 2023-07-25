Body[] bodies = new Body[2];

ParticleType white = new ParticleType(#FFFFFF, 10, 0, 0, new Collider());

void setup() {
  size(800, 800);
  noStroke();
  frameRate(60);
  surface.setResizable(true);

  for (int i = 0; i < bodies.length; i++) {
    bodies[i] = new Particle(new PVector(400, 400), white);
  }
  
  thread("Update");
}

void draw() {
  background(0);

  for (Body body : bodies) {
    body.update();
    body.render();
  }
  for(int i = 1; i < bodies.length; i++ ) {
    bodies[i].addForceAtPosition(bodies[0].position);
  }
}

void Update() {
  for(;;) {
    
  }
}

void CollisionD() {
  for(;;) {
    
  }
}

void mouseClicked() {
  for(int i = 1; i < bodies.length; i++ ) {
    bodies[i].setForce(new PVector().random2D());
    bodies[i].setPosition(new PVector(random(0, 800), random(0, 800)));
  }
}
