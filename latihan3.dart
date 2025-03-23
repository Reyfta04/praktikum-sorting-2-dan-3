void insertionSortRightToLeft(List<int> arr, {bool ascending = true}) {
  int n = arr.length;
  for (int i = n - 2; i >= 0; i--) {  // Mulai dari elemen kedua terakhir
    int key = arr[i];
    int j = i + 1;

    // Geser elemen ke kanan jika perlu
    while (j < n && ((ascending && arr[j] < key) || (!ascending && arr[j] > key))) {
      arr[j - 1] = arr[j];
      j++;
    }
    arr[j - 1] = key;
  }
}

void main() {
  List<int> arr1 = [5, 2, 9, 1, 5, 6];
  insertionSortRightToLeft(arr1, ascending: true);
  print("Insertion Sort Kanan ke Kiri (Ascending): $arr1");

  List<int> arr2 = [5, 2, 9, 1, 5, 6];
  insertionSortRightToLeft(arr2, ascending: false);
  print("Insertion Sort Kanan ke Kiri (Descending): $arr2");
}
