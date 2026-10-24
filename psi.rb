class Psi < Formula
  desc "Developer quality-of-life tool for codebase inspection and project initialization"
  homepage "https://github.com/0x251C08/psi"
  url "https://github.com/0x251C08/psi/releases/download/v0.1.0/psi-0.1.0.tar.gz"
  sha256 "32e3c16d68955280cb67f5f97fb032ef511732ced0a84305dad6e73e1b8b3a50"
  license "MIT"
  head "https://github.com/0x251C08/psi.git", branch: "main"

  depends_on "python@3.13"

  def install
    system Formula["python@3.13"].opt_bin/"python3", "-m", "pip", "install", "--no-deps", "--prefix=#{prefix}", buildpath
    bin.install_symlink Dir[prefix/"bin/*"]
  end

  test do
    system bin/"psi", "--help"
  end
end