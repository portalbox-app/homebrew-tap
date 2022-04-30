class Portalbox < Formula
  desc "PortalBox client"
  homepage "https://www.portalbox.app"
  license "MIT"
  version "0.1.0"
  
  on_macos do
    url "https://github.com/portalbox-app/portalbox/releases/download/v#{version}/portalbox-#{version}-macos-x64.tar.gz"
    sha256 "06f3da59e0d16e74b1d53aea94d7826dfd74c45718fd453fbf3db74309bf7bc5"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/portalbox-app/portalbox/releases/download/v#{version}/portalbox-#{version}-linux-x64.tar.gz"
      sha256 "5d844b1c231bb89d5081f64bd7f1a98d78ecf147e5208a5e217e00856d8d1b1e"
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
