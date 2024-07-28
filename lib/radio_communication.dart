
import 'radio_communication_platform_interface.dart';

class RadioCommunication {
  Future<String?> getPlatformVersion() {
    return RadioCommunicationPlatform.instance.getPlatformVersion();
  }
}
