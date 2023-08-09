class RigidBody extends Component {
  RigidBody (GameObject objectPointer) {
    super(objectPointer);
  }
  PVector velocity = new PVector(0, 0);
  void setForce(PVector velocity) {
    this.velocity = velocity;
  }
  void addForce(PVector velocity) {
    this.velocity.add(velocity);
  }
  void addForceAtPosition(PVector position) {
    this.addForce(position.copy().sub(objectPointer.getComponent(Transform.class).position).normalize());
  }
}
