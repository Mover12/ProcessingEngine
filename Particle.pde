class Particle extends Component {
  Particle (GameObject objectPointer) {
    super(objectPointer);
  }
  
  ParticleType particleType = new ParticleType(#FFFFFF, 100, 0.1);
  
  void update() {
    objectPointer.getComponent(Transform.class).position.add(objectPointer.getComponent(RigidBody.class).velocity);
    objectPointer.getComponent(RigidBody.class).addForce(new PVector(0, 0).lerp(objectPointer.getComponent(RigidBody.class).velocity, -particleType.dragFactor));
  }
  
  void display() {
    fill(particleType.fill);
    circle(objectPointer.getComponent(Transform.class).position.x, objectPointer.getComponent(Transform.class).position.y, particleType.size);
  }
  
}
