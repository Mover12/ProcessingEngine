class Particle extends Body{
  ParticleType particleType;
  Particle(PVector _position, ParticleType _particleType, int _ID) {
    position = _position;
    particleType = _particleType;
    ID = _ID;
  }
  void update() {
    position.add(velocity);
    if(particleType.dragFactor != 0) {
      velocity.add(new PVector(0, 0).sub(velocity).normalize().mult(particleType.dragFactor));
    }
  }
  void render() {
    fill(particleType.fill);
    circle(position.x, position.y, particleType.size);
  }
}
