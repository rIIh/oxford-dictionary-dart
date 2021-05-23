import 'dart:io';

String get root => Directory.current.path.endsWith('test') ? '' : 'test/';

String fixture(String name) => File('${root}fixtures/$name').readAsStringSync();
Stream<List<int>> fixtureStream(String name) => File('${root}fixtures/$name').openRead();
