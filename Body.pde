class Body {
  PVector position = new PVector(0, 0);
  PVector velocity = new PVector(0, 0);
  void setForce(PVector _velocity) {
    velocity = _velocity;
  }
  void addForce(PVector _velocity) {
    velocity.add(_velocity);
  }
  void addForceAtPosition(PVector _position) {
    this.addForce(_position.copy().sub(position).normalize());
  }
  void setPosition(PVector _position) {
    position = _position;
  }
  void render() {}
  void update() {}
}
