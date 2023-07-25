class Particle extends Body{
  ParticleType particleType;
  Particle(PVector _position, ParticleType _particleType, int _ID) {
    position = _position;
    particleType = _particleType;
    ID = _ID;
  }
  void update() {
    position.add(velocity);
  }
  void render() {
    fill(particleType.fill);
    circle(position.x, position.y, particleType.size);
  }
}
