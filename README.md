A library for making Microsoft Graph requests. 

This package contains a set of high-level functions and classes that make it easy to consume Microsoft Graph resources. 
It's platform-independent, and can be used on both the command-line and the browser.

## Use this package as a library

### Depend on it

Add this to your package's pubspec.yaml file:

```yml
dependencies:
  microsoft_graph: ^0.0.13
  microsoft_graph_http: ^0.0.13
```

### Install it

You can install packages from the command line:

with pub:

```shell
pub get
```

with Flutter:
```shell
flutter packages get
```    

### Import it

Now in your Dart code, you can use: 

```dart
import 'package:microsoft_graph/microsoft_graph.dart';
import 'package:microsoft_graph_http/microsoft_graph_http.dart';
```