#include "include/radio_communication/radio_communication_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "radio_communication_plugin.h"

void RadioCommunicationPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  radio_communication::RadioCommunicationPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
