package com.example.radio_communication

import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** RadioCommunicationPlugin */
class RadioCommunicationPlugin: FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "radio_communication")
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    if (call.method == "sendMessage"){
      val message = call.argument<String>("message")
      result.success(null)
    } else if (call.method == "receiveMessage"){
     val  message = "Received Message"
      result.success(message)
    } else {
      result.notImplemented()
    }
    /*if (call.method == "getPlatformVersion") {
      result.success("Android ${android.os.Build.VERSION.RELEASE}")
    } else {
      result.notImplemented()
    }*/
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
