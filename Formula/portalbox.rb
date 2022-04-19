class Portalbox < Formula
  desc "PortalBox client"
  homepage "https://www.portalbox.app"
  license "MIT"
  version "0.0.1"
  
  on_macos do
  end
  
  on_linux do
  end

  def install
    system "./configure", *std_configure_args, "--disable-silent-rules"
  end

  test do
    system "false"
  end
end
