class Portalbox < Formula
  desc "PortalBox client"
  homepage "https://www.portalbox.app"
  license "MIT"
  version "0.1.0"
  
  on_macos do
    url "https://github.com/portalbox-app/portalbox/releases/download/v#{version}/portalbox-#{version}-macos-x64.tar.gz"
    sha256 "3ecfb6973b6fb11094cbefe04ea24de67941428ce6d21e57c549dbc95f84838f"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/portalbox-app/portalbox/releases/download/v#{version}/portalbox-#{version}-linux-x64.tar.gz"
      sha256 "4a0eff78a29e32505941ff742a60b96ec48a531b59c6288bfe13472a50e8e369"
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
