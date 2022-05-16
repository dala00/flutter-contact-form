# contact_form

contact_form is a client for the [Contact Nite](https://contact-nite.com) contact management service.

## Installation

```yaml
dependencies:
  flutter_contact: ^1.0.3
```

## Getting Started

Show contact form.

```dart
child: const ContactForm(
  applicationKey: 'your application form key',
),
```

For more information, see the document at [contact-nite.com](https://contact-nite.com/documentation)

## Configuration

```dart
child: ContactForm(
  applicationKey: 'your application form key',
  loading: const CircularProgressIndicator(),
  onSubmittionStarted: () {
    // Called when submit button is touched.
  },
  onCompleted: () {
    // Called when posting contact data is completed.
  },
  onInitializationError: () {
    // Called when initialization error occured.
    // (For example wrong key specified)
  },
  onSubmittionError: () {
    // Called when contact submittion error occured.
  },
),
```

### Localization

```dart
    return MaterialApp(
      localizationsDelegates: const [
        L10n.delegate, // Your application's first
        S.delegate, // contact_form's second
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
```

### How to change design?

Customize your app's theme. If you need more options, create issue.
