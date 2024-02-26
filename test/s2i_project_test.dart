import 'package:s2i_project/richiesta2.dart';
import 'package:s2i_project/richiesta3.dart';

import 'package:test/test.dart';

void main() {
  test('Palindroma', () => {expect(palindroma('ingegni'), true)});
  test('NonPalindroma', () => {expect(palindroma('enigmia'), false)});
  test('AreaRettangolo', () => {expect(areaRettangolo(), 24)});
}
