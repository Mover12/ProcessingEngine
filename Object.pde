class Object {
  Component[] components = new Component[0];
  
  void addComponent(Component component) {
    components = (Component[]) append(components, component);
  }
  
  <T extends Component> T getComponent(Class<T> componentType) {
    for (Component component : components) {
        if (component.getClass() == componentType) {
            return componentType.cast(component);
        }
    }
    return null;
  }
}
