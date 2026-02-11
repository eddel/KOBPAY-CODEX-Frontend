import "dart:io";

class AppConfig {
  static const _androidEmulatorBaseUrl = "http://192.168.1.190:4000";
  static const _iosSimulatorBaseUrl = "http://localhost:4000";

  // Update this for physical devices on your LAN.
  static const _deviceBaseUrl = "http://192.168.1.190:4000";

  // Update these to point to your real exchange/support endpoints.
  static const exchangeUrl = "https://kobpay.com.ng";

  static String get apiBaseUrl {
    const override = String.fromEnvironment("API_BASE_URL", defaultValue: "");
    if (override.isNotEmpty) return override;

    if (Platform.isAndroid) return _androidEmulatorBaseUrl;
    if (Platform.isIOS) return _iosSimulatorBaseUrl;

    return _deviceBaseUrl;
  }
}
