cask "dnie" do
  version "1.6.7"

  if Hardware::CPU.intel?
    sha256 "9958018827196f7de45f0cbc88b1eb18edf5aace75827083df9a12bd61754fe6"
    url "https://www.dnielectronico.es/descargas/software_MACOS/libpkcs11-dnie-#{version}_x64.pkg"
    pkg "libpkcs11-dnie-#{version}_x64.pkg", allow_untrusted: true
  else
    sha256 "c5c06f63bb9295692585cd34a93825aa1b027a278f04dc01b690f9cfc6298bc6"
    url "https://www.dnielectronico.es/descargas/software_MACOS/libpkcs11-dnie-#{version}_arm64.pkg"
    pkg "libpkcs11-dnie-#{version}_arm64.pkg", allow_untrusted: true
  end

  name "Driver PKCS#11 del DNIe"
  homepage "https://www.dnielectronico.es/"

  uninstall pkgutil: [
    "libpkcs11-dnie",
  ]
end
