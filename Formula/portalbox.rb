class Portalbox < Formula
  desc "PortalBox client"
  homepage "https://www.portalbox.app"
  license "MIT"
  version "0.1.0"
  
  on_macos do
    url "https://github.com/portalbox-app/portalbox/releases/download/v#{version}/portalbox-#{version}-macos-x64.tar.gz"
    sha256 "06b90e9c78a1cd8de272bfa93b9031321159c55a9229c81db23ab05a0ede598e"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/portalbox-app/portalbox/releases/download/v#{version}/portalbox-#{version}-linux-x64.tar.gz"
      sha256 "5bbb9a9c7764af7a6a0030090d9302c09509d756615318f4d55e6e48e46c5a57"
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
