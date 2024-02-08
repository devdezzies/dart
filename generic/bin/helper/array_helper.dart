class ArrayHelper<K> {
  static int getLength<T>(List<T> arr) {
    return arr.length;
  }

  static String arrayJoin<T, S>(List<T> arr, S author){
    return "${arr.join('')} $author";
  }
}