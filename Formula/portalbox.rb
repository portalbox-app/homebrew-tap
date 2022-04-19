class Portalbox < Formula
  desc "PortalBox client"
  homepage "https://www.portalbox.app"
  license "MIT"
  version "0.0.1"
  
  on_macos do
    url "https://github.com/portalbox-app/portalbox/releases/download/v#{version}/portalbox-#{version}-macos-x64.tar.gz"
    sha256 "1aa01d06ab1a030ae74ed6f8b998a739338b26366e7b2f9b0a4db3976f97dcaf"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/portalbox-app/portalbox/releases/download/v#{version}/portalbox-#{version}-linux-x64.tar.gz"
      sha256 "8c903c57beddf8c3d155ed656f26d8e066d9aa960b5bbd62f9d2624c2d172f2a"
    end
  end

  def install
    bin.install "client"
    bin.install Dir["wwwroot"]
    bin.install Dir["website"]
  end

  test do
    system "false"
  end
end
