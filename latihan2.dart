void main() {
  List<int> data = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3];
  print("Sebelum sorting: $data");

  mergeSortWithFlag(data, 0, data.length - 1, descending: true);

  print("Setelah sorting (Descending): $data");
}

void mergeSortWithFlag(List<int> arr, int left, int right, {required bool descending}) {
  if (left < right) {
    int mid = (left + right) ~/ 2;

    mergeSortWithFlag(arr, left, mid, descending: descending);
    mergeSortWithFlag(arr, mid + 1, right, descending: descending);
    mergeWithFlag(arr, left, mid, right, descending);
  }
}

void mergeWithFlag(List<int> arr, int left, int mid, int right, bool descending) {
  int n1 = mid - left + 1;
  int n2 = right - mid;

  List<int> leftArr = List.filled(n1, 0);
  List<int> rightArr = List.filled(n2, 0);

  for (int i = 0; i < n1; i++) {
    leftArr[i] = arr[left + i];
  }
  for (int j = 0; j < n2; j++) {
    rightArr[j] = arr[mid + 1 + j];
  }

  int i = 0, j = 0, k = left;

  // Flag menentukan sorting ascending atau descending
  while (i < n1 && j < n2) {
    if ((descending && leftArr[i] >= rightArr[j]) || (!descending && leftArr[i] <= rightArr[j])) {
      arr[k] = leftArr[i];
      i++;
    } else {
      arr[k] = rightArr[j];
      j++;
    }
    k++;
  }

  while (i < n1) {
    arr[k] = leftArr[i];
    i++;
    k++;
  }

  while (j < n2) {
    arr[k] = rightArr[j];
    j++;
    k++;
  }
}
