cask "dnie" do
  version "1.5.3"
  sha256 "2322553fcbec6674e7d56a5d758547e1ede334eb0f4e5703f4794f2d5815cc3a"

  url "https://www.dnielectronico.es/descargas/software_MACOS/libpkcs11-dnie-#{version}.dmg"
  name "Driver PKCS#11 del DNIe"
  homepage "https://www.dnielectronico.es/"

  pkg "libpkcs11-dnie-#{version}.pkg", allow_untrusted: true

  uninstall pkgutil: [
    "libpkcs11-dnie",
  ]
end
