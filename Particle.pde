class Particle extends Body{
  ParticleType particleType;
  Particle(PVector _position, ParticleType _particleType ) {
    position = _position;
    particleType = _particleType;
  }
  void update() {
    position.add(velocity);
    this.addForce(new PVector(0, 0).lerp(velocity, -particleType.dragFactor));
  }
  void render() {
    fill(particleType.fill);
    circle(position.x, position.y, particleType.size);
  }
}
