void main() {
  List<int> data = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3];
  print("Sebelum sorting: $data");

  quickSortDescending(data, 0, data.length - 1);

  print("Setelah sorting (Descending): $data");
}

void quickSortDescending(List<int> arr, int low, int high) {
  if (low < high) {
    int pivotIndex = partitionDescending(arr, low, high);
    quickSortDescending(arr, low, pivotIndex - 1);
    quickSortDescending(arr, pivotIndex + 1, high);
  }
}

int partitionDescending(List<int> arr, int low, int high) {
  int pivot = arr[high]; // Pivot diambil dari elemen terakhir
  int i = low - 1;

  for (int j = low; j < high; j++) {
    if (arr[j] >= pivot) { // Bandingkan dengan pivot untuk descending
      i++;
      // Tukar elemen arr[i] dengan arr[j]
      int temp = arr[i];
      arr[i] = arr[j];
      arr[j] = temp;
    }
  }

  // Tukar pivot ke posisi yang benar
  int temp = arr[i + 1];
  arr[i + 1] = arr[high];
  arr[high] = temp;

  return i + 1;
}
