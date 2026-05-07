# KOBPAY Mobile

Flutter client for KOBPAY.

## Quick start
```powershell
flutter pub get
flutter run
```

## API base URL
Configured in `lib/core/config/app_config.dart`:
- Android emulator: defaults to `https://kobpay-codex-backend.onrender.com`
- iOS simulator: defaults to `https://kobpay-codex-backend.onrender.com`
- Physical device: defaults to `https://kobpay-codex-backend.onrender.com`

You can also override at runtime:
```powershell
flutter run --dart-define=API_BASE_URL=https://kobpay-codex-backend.onrender.com
```

Build an APK against the live Render backend:
```powershell
flutter build apk --release --dart-define=API_BASE_URL=https://kobpay-codex-backend.onrender.com
```

## Codemagic iOS
This repo includes `codemagic.yaml` in the repository root.

Workflows:
- `ios-unsigned`: builds iOS without code signing to verify the project compiles on Codemagic.
- `ios-app-store`: builds a signed IPA using Codemagic iOS signing.

Before running `ios-app-store`, update `APP_STORE_APPLE_ID` in `codemagic.yaml` and configure the `KOBPAY_APP_STORE_CONNECT` integration plus the matching iOS signing assets in Codemagic.
