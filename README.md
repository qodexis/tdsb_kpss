# TDSB KPSS

KPSS sınavı için hazırlanmış Flutter mobil uygulaması.

## iOS IPA Oluşturma (Mac Gerekmez)

### 1. Codemagic (Önerilen)
1. [codemagic.ai](https://codemagic.ai) sitesine girin
2. GitHub ile giriş yapın
3. Bu repository'i seçin
4. Flutter iOS build ayarlarını yapın
5. IPA dosyasını indirin

### 2. GitHub Actions
```bash
# GitHub'a push yapın
git add .
git commit -m "iOS build"
git push
```
Sonra GitHub Actions sekmesinden IPA indirin.

## Geliştirme

### iOS Test (Windows'ta)
```bash
# iOS boyutunda test
flutter run -d chrome
# veya main.dart'da TestApp() kullanın
```

### Android Test
```bash
flutter run -d android
```

### Web Test
```bash
flutter run -d web-server
```

## Özellikler
- 📱 iOS ve Android uyumlu
- 🌙 Karanlık tema
- 📚 KPSS dersleri
- ⏰ Geri sayım sayaçları
- 📸 Fotoğrafla soru çözme
