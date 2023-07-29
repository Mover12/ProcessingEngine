class Particle extends Component {
  ParticleType particleType;
  Particle(PVector position, ParticleType particleType ) {
    Behavior.object.getComponent(Transform.class).position = position;
    this.particleType = particleType;
  }
  void update() {
    Behavior.object.getComponent(Transform.class).position.add(Behavior.object.getComponent(RigidBody.class).velocity);
    Behavior.object.getComponent(RigidBody.class).addForce(new PVector(0, 0).lerp(Behavior.object.getComponent(RigidBody.class).velocity, -particleType.dragFactor));
  }
  void display() {
    fill(particleType.fill);
    circle(Behavior.object.getComponent(Transform.class).position.x, Behavior.object.getComponent(Transform.class).position.y, particleType.size);
  }
}
