import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

MediaQueryData useMediaQuery() {
  final context = useContext();
  return MediaQuery.of(context);
}
