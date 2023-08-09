import java.lang.reflect.Constructor;

class GameObject {
  private Component[] components = new Component[0];

  public <T extends Component> void addComponent(Class<T> componentType) {
    try {
      T component = componentType.getDeclaredConstructor(ProcessingEngine.class, GameObject.class).newInstance(processingEngine, this);
      
      components = (Component[]) append(components, component);
    } catch (Exception e) {
      e.printStackTrace();
    }
  }

  public <T extends Component> T getComponent(Class<T> componentType) {
    for (Component component : components) {
      if (component.getClass() == componentType) {
        return componentType.cast(component);
      }
    }
    return null;
  }
}
