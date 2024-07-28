import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'radio_communication_platform_interface.dart';

/// An implementation of [RadioCommunicationPlatform] that uses method channels.
class MethodChannelRadioCommunication extends RadioCommunicationPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('radio_communication');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
