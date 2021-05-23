# Oxford Dictionary API Wrapper in Dart

*The package is under development and doesn't have all API
functionality.* **Feel free to contribute!**

> The Oxford Dictionaries API offers an easy way to access powerful
> lexical data (words, definitions, translations, audio pronunciations,
> synonyms, antonyms, parts of speech, and more) to use in your apps and
> websites.

To test package soundness there was 100 requests saved with according responses in `test/fixtures/{entries,lemmas}/` folders. If you encounter any null value error please open an issue in repository **Issues** page.

See [Contribution guidelines for this project](docs/CONTRIBUTING.md)

Read
[Oxford Dictionaries Documentation](https://developer.oxforddictionaries.com/documentation/getting_started)

## Getting Started

```bash
git clone git@github.com:rIIh/oxford-dictionary.git && cd oxford-dictionary
```

```bash
flutter pub get
```

```bash
flutter pub run build_runner build
```

## How to use

See [example](example/main.dart) for more usecase information.

```dart
void main() async {
  final dictionary = OxfordDictionary(
    'en',
    Platform.environment['APP_ID'],
    Platform.environment['APP_KEY'],
  );

  // get word definition entry
  final word = await dictionary.entries.search(wordString);

  // get phrases
  final phrases = word.phrases.values.map((phrases) => phrases).expand((phrases) => phrases).toList();

  // get pronunciations
  final pronunciations = word.variants.values
      .map((e) => e.map((e) => e.pronunciations))
      .expand((pronunciations) => pronunciations)
      .toList();

  // get senses
  final senses = word.variants.values
      .map((variants) => variants?.map((variant) => variant.senses))
      .expand((senses) => senses)
      .toList();

  // get definitions
  final definitions = senses.map((e) => e.map((e) => e.definitions)).expand((definitions) => definitions).toList();

  // get sub senses
  final subSenses = senses.map((e) => e.map((e) => e.subSenses)).expand((subSenses) => subSenses).toList();
}
```

