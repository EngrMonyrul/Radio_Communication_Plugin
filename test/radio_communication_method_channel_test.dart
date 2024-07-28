import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:radio_communication/radio_communication_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelRadioCommunication platform = MethodChannelRadioCommunication();
  const MethodChannel channel = MethodChannel('radio_communication');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
