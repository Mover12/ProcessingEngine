Body[] bodies = new Body[100];

ParticleType white = new ParticleType(#FFFFFF, 10, 0, 0, new Collider());

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
  }
  for(int i = 1; i < bodies.length; i++ ) {
    bodies[i].addForceAtPosition(bodies[0].position);
  }
}

void Update() {
  for(;;) {
    CollisionDetection();
  }
}

void CollisionDetection() {
  for (Body body : bodies) {
    for (Body curBody : bodies) {
      if(body != curBody) {
      if(body.position.dist(curBody.position) <= ( ((Particle) body).particleType.size + ((Particle) curBody).particleType.size ) / 2) {
        body.addForce(new PVector(0, 0).sub(body.velocity));
        print(body.ID);
        println("Collision");
      } else {
        print(body.ID);
        println("No Collision");
      }
    }
    }
  }
}

void mouseClicked() {
  for (int i = 1; i < bodies.length; i++) {
    bodies[i].setPosition(new PVector(random(800), random(800)));
  }
}
