class Portalbox < Formula
  desc "PortalBox client"
  homepage "https://www.portalbox.app"
  license "MIT"
  version "0.1.0"
  
  on_macos do
    url "https://github.com/portalbox-app/portalbox/releases/download/v#{version}/portalbox-#{version}-macos-x64.tar.gz"
    sha256 "f3a79e1cb1f40d315b66b2a29803fe465088f59d8cccaa31dc0ff862b19f756f"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/portalbox-app/portalbox/releases/download/v#{version}/portalbox-#{version}-linux-x64.tar.gz"
      sha256 "215eb3444d30e2d6a40520ba89efaf4d666399dea6c5bb63eaa076886e99c836"
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
