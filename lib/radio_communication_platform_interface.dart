import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'radio_communication_method_channel.dart';

abstract class RadioCommunicationPlatform extends PlatformInterface {
  /// Constructs a RadioCommunicationPlatform.
  RadioCommunicationPlatform() : super(token: _token);

  static final Object _token = Object();

  static RadioCommunicationPlatform _instance = MethodChannelRadioCommunication();

  /// The default instance of [RadioCommunicationPlatform] to use.
  ///
  /// Defaults to [MethodChannelRadioCommunication].
  static RadioCommunicationPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [RadioCommunicationPlatform] when
  /// they register themselves.
  static set instance(RadioCommunicationPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
