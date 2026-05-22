# ⚔️ Vaquero Game — Android WebView APK

Proyecto Android que empaqueta un juego HTML5 como APK nativo.

## Características
- ✅ WebView fullscreen (sin barras de navegación, modo inmersivo sticky)
- ✅ Orientación portrait forzada
- ✅ Sonido habilitado sin gesto del usuario
- ✅ Funciona 100% offline (assets locales)
- ✅ Icono de katana (adaptive icon)
- ✅ Hardware acceleration activado
- ✅ Botón Atrás navega dentro del WebView

## Estructura
```
claude-appVAQUERO/
├── app/
│   └── src/main/
│       ├── assets/
│       │   └── index.html        ← 🎮 TU JUEGO VA AQUÍ
│       ├── java/com/vaquero/game/
│       │   └── MainActivity.java
│       ├── res/
│       │   ├── drawable/         ← Icono katana (vector)
│       │   ├── layout/
│       │   ├── mipmap-*/         ← Adaptive icons
│       │   └── values/
│       └── AndroidManifest.xml
├── build.gradle
└── settings.gradle
```

## Pasos para compilar

### 1. Agregar tu juego
Copia tu `index.html` y todos los archivos del juego a:
```
app/src/main/assets/
```
Si tu juego tiene subcarpetas (js/, img/, audio/), cópialas ahí también.

### 2. Abrir en Android Studio
1. Abre Android Studio
2. **File → Open** → selecciona la carpeta `claude-appVAQUERO`
3. Espera que sincronice Gradle

### 3. Compilar APK debug (para probar)
```
Build → Build Bundle(s) / APK(s) → Build APK(s)
```
El APK queda en: `app/build/outputs/apk/debug/app-debug.apk`

### 4. Compilar APK release (para distribuir)
```
Build → Generate Signed Bundle / APK → APK → seguir el wizard
```

### 5. Instalar en dispositivo
```bash
adb install app/build/outputs/apk/debug/app-debug.apk
```

## Personalización

| Qué cambiar | Archivo |
|---|---|
| Nombre de la app | `res/values/strings.xml` |
| Package ID | `app/build.gradle` → `applicationId` |
| Icono | `res/drawable/ic_launcher_foreground.xml` |
| Color de fondo de carga | `res/values/themes.xml` |
| Versión | `app/build.gradle` → `versionCode` / `versionName` |

## Requisitos
- Android Studio Hedgehog (2023.1.1) o superior
- JDK 17+
- Android SDK 34
- Dispositivo/emulador con Android 5.0+ (API 21)
