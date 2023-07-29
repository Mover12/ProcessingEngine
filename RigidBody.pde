class RigidBody extends Component {
  PVector velocity = new PVector(0, 0);
  void addForce(PVector velocity) {
    this.velocity.add(velocity);
  }
  void addForceAtPosition(PVector position) {
    this.addForce(position.copy().sub(Behavior.object.getComponent(Transform.class).position).normalize());
  }
  void setPosition(PVector position) {
    Behavior.object.getComponent(Transform.class).position = position;
  }
}
