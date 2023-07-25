class ParticleType {
  color fill;
  float size;
  float gravityFactor;
  float resistanceFactor;
  Collider colider;
  ParticleType (color _fill, float _size, float _gravityFactor, float _resistanceFactor, Collider _colider) {
    fill = _fill;
    size = _size;
    gravityFactor = _gravityFactor;
    resistanceFactor = _resistanceFactor;
    colider = _colider;
  }
}
