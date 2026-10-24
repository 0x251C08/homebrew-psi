class Psi < Formula
  desc "Developer quality-of-life tool for codebase inspection and project initialization"
  homepage "https://github.com/0x251C08/psi"
  url "https://github.com/0x251C08/psi/releases/download/v0.1.0/psi-0.1.0-py3-none-any.whl"
  sha256 "6975aeb6e0b44ec01700572cc61f8488901cb43b6ced783dc3f85ea79b4ed0de"
  license "MIT"
  head "https://github.com/0x251C08/psi.git", branch: "main"

  depends_on "python@3.13"

  def install
    venv = libexec/"venv"
    system Formula["python@3.13"].opt_bin/"python3", "-m", "venv", venv
    system venv/"bin/pip", "install", "--no-deps", "--no-index", cached_download
    bin.install_symlink Dir[venv/"bin/*"]
  end

  test do
    system bin/"psi", "--help"
  end
end