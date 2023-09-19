import 'package:uuid/uuid.dart';

const uuid = Uuid();

String randomUid() => uuid.v4();
