class ProductName {
  String name;
  String id;

  ProductName(this.name, this.id);

  @override
  bool operator ==(Object other) {
    if (other is ProductName) {
      if (name != other.name) {
        return false;
      } else if (id != other.id) {
        return false;
      } else {
        return true;
      }
    } else {
      return false;
    }
  }

  @override
  int get hashCode {
    return id.hashCode + name.hashCode;
  }

  // they both are complement ==() with get hashCode
}
