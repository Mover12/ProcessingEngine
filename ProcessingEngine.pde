Body[] bodies = new Body[100];

ParticleType white = new ParticleType(#FFFFFF, 100, 0, 0.1, new Collider());

void setup() {
  size(800, 800);
  noStroke();
  frameRate(60);
  surface.setResizable(true);

  for (int i = 0; i < bodies.length; i++) {
    bodies[i] = new Particle(new PVector(400, 400), white, i);
  }
  
  thread("Update");
}

void draw() {
  background(0);

  for (Body body : bodies) {
    body.update();
    body.render();
    CollisionDetection();
  }
}

void Update() {
  for(;;) {
  }
}

void CollisionDetection() {
  for (Body body : bodies) {
    for (Body curBody : bodies) {
      if(body != curBody) {
      if(body.position.copy().dist(curBody.position) <= ( ((Particle) body).particleType.size + ((Particle) curBody).particleType.size ) / 2) {
        body.addForce(curBody.position.copy().sub(body.position).normalize().mult(0.001));
        curBody.addForce(body.position.copy().sub(curBody.position).normalize().mult(0.001));
      } else {
      }
    }
    }
  }
}

void mouseClicked() {
  for (int i = 1; i < bodies.length; i++) {
    bodies[i].setForce(new PVector(0, 0));
    bodies[i].setPosition(new PVector(random(800), random(800)));
  }
}
