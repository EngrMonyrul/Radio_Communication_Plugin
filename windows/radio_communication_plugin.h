#ifndef FLUTTER_PLUGIN_RADIO_COMMUNICATION_PLUGIN_H_
#define FLUTTER_PLUGIN_RADIO_COMMUNICATION_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace radio_communication {

class RadioCommunicationPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  RadioCommunicationPlugin();

  virtual ~RadioCommunicationPlugin();

  // Disallow copy and assign.
  RadioCommunicationPlugin(const RadioCommunicationPlugin&) = delete;
  RadioCommunicationPlugin& operator=(const RadioCommunicationPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace radio_communication

#endif  // FLUTTER_PLUGIN_RADIO_COMMUNICATION_PLUGIN_H_
