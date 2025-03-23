void selectionSortRightToLeft(List<int> arr, {bool ascending = true}) {
  int n = arr.length;
  for (int i = n - 1; i > 0; i--) {  // Mulai dari kanan ke kiri
    int extremeIdx = i;
    
    // Mencari elemen terkecil (ascending) atau terbesar (descending) di bagian kiri
    for (int j = i - 1; j >= 0; j--) {
      if ((ascending && arr[j] < arr[extremeIdx]) || (!ascending && arr[j] > arr[extremeIdx])) {
        extremeIdx = j;
      }
    }
    
    // Tukar elemen yang ditemukan dengan elemen paling kanan yang belum diurutkan
    int temp = arr[i];
    arr[i] = arr[extremeIdx];
    arr[extremeIdx] = temp;
  }
}

void main() {
  List<int> arr1 = [64, 25, 12, 22, 11];
  selectionSortRightToLeft(arr1, ascending: true);
  print("Selection Sort Kanan ke Kiri (Ascending): $arr1");

  List<int> arr2 = [64, 25, 12, 22, 11];
  selectionSortRightToLeft(arr2, ascending: false);
  print("Selection Sort Kanan ke Kiri (Descending): $arr2");
}
