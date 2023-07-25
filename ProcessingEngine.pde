Body[] bodies = new Body[10000];

ParticleType white = new ParticleType(#FFFFFF, 1, 0.1);

void setup() {
  size(800, 800);
  noStroke();
  frameRate(60);
  surface.setResizable(true);

  for (int i = 0; i < bodies.length; i++) {
    bodies[i] = new Particle(new PVector(400, 400), white);
  }
}

void draw() {
  background(0);

  for (Body body : bodies) {
    body.update();
    body.render();
  }
  
  for (int i = 0; i < bodies.length; i++) {
    bodies[i].addForceAtPosition(bodies[0].position);
  }
}

void mouseClicked() {
  bodies[0].setPosition(new PVector(mouseX, mouseY));
  for (int i = 1; i < bodies.length; i++) {
    bodies[i].setForce(new PVector(random(10), random(10)));
    bodies[i].setPosition(new PVector(random(800), random(800)));
  }
}

void CollisionDetection() {
  for (Body body : bodies) {
    for (Body curBody : bodies) {
      if(body != curBody) {
        if(body.position.copy().dist(curBody.position) <= ( ((Particle) body).particleType.size + ((Particle) curBody).particleType.size ) / 2) {
        } else {}
      }
    }
  }
}
