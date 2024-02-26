// Dato l’array [6,3,1,2,9] calcola la media dei numeri all’interno dell’array.

void calcolaMedia(List<int> nums) {
  int sum = nums.reduce((value, element) => value + element);
  print(sum / nums.length);
}
