import 'package:test/test.dart';

import '../example/main.dart';
import 'mock/client_mock.dart';

void main() {
  test('example not throws', () {
    expect(find('industry', ClientMock()), completes);
  });
}
