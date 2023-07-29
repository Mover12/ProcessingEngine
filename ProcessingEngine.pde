Object obj = new Object();

ParticleType white = new ParticleType(#FFFFFF, 100, 0.1);

void setup() {
  size(800, 800);
  noStroke();
  frameRate(60);
  surface.setResizable(true);

  Behavior.object = obj;
  obj.addComponent(new Transform());
  obj.addComponent(new RigidBody());
  obj.addComponent(new Particle(new PVector(0, 0), white));
}

void draw() {
  background(0);
  obj.getComponent(Particle.class).update();
  obj.getComponent(Particle.class).display();
  obj.getComponent(RigidBody.class).addForce(new PVector(1, 1));
}
