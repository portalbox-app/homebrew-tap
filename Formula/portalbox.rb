class Portalbox < Formula
  desc "PortalBox client"
  homepage "https://www.portalbox.app"
  license "MIT"
  version "0.1.0"
  
  on_macos do
    url "https://github.com/portalbox-app/portalbox/releases/download/v#{version}/portalbox-#{version}-macos-x64.tar.gz"
    sha256 "2e6459aa15fcdc7e54c2195f5ee7355c23aa4a64f667764a44a5f6abc4555a36"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/portalbox-app/portalbox/releases/download/v#{version}/portalbox-#{version}-linux-x64.tar.gz"
      sha256 "05d786c632d1278329dc44a7ec005dd78c29d61fcd34d5b9021279f4f44292f9"
    end
  end

  def install
    libexec.install Dir["*"]
    (bin/"portalbox").write_env_script(libexec/"portalbox", :PORTALBOX_RUNTIME_DIR => libexec)
  end

  test do
    system "false"
  end
end
