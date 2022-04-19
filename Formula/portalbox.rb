class Portalbox < Formula
  desc "PortalBox client"
  homepage "https://www.portalbox.app"
  license "MIT"
  version "0.1.0"
  
  on_macos do
    url "https://github.com/portalbox-app/portalbox/releases/download/v#{version}/portalbox-#{version}-macos-x64.tar.gz"
    sha256 "671b9117ec3ac65bd8bc9d992d8191c249d54ae1628691e7931766c24fc26af0"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/portalbox-app/portalbox/releases/download/v#{version}/portalbox-#{version}-linux-x64.tar.gz"
      sha256 "0371960515dc4a39c57b4cc85b5dc593bb349a9253d715e8dd79b1e3faa5280f"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"client"
  end

  test do
    system "false"
  end
end
