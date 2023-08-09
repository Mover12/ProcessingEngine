class Transform extends Component {
  Transform (GameObject objectPointer) {
    super(objectPointer);
  }
  PVector position = new PVector(0, 0);
  void setPosition(PVector position) {
    this.position = position;
  }
}
