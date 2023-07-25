class ParticleType {
  color fill;
  float size;
  float gravityFactor;
  float dragFactor;
  Collider colider;
  ParticleType (color _fill, float _size, float _gravityFactor, float _dragFactor, Collider _colider) {
    fill = _fill;
    size = _size;
    gravityFactor = _gravityFactor;
    dragFactor = _dragFactor;
    colider = _colider;
  }
}
