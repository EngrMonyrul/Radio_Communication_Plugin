import 'package:flutter_test/flutter_test.dart';
import 'package:radio_communication/radio_communication.dart';
import 'package:radio_communication/radio_communication_platform_interface.dart';
import 'package:radio_communication/radio_communication_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockRadioCommunicationPlatform
    with MockPlatformInterfaceMixin
    implements RadioCommunicationPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final RadioCommunicationPlatform initialPlatform = RadioCommunicationPlatform.instance;

  test('$MethodChannelRadioCommunication is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelRadioCommunication>());
  });

  test('getPlatformVersion', () async {
    RadioCommunication radioCommunicationPlugin = RadioCommunication();
    MockRadioCommunicationPlatform fakePlatform = MockRadioCommunicationPlatform();
    RadioCommunicationPlatform.instance = fakePlatform;

    expect(await radioCommunicationPlugin.getPlatformVersion(), '42');
  });
}
