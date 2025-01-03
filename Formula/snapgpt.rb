class Snapgpt < Formula
  include Language::Python::Virtualenv

  desc "Create readable snapshots of your codebase for AI assistants"
  homepage "https://github.com/halfprice06/snapgpt"
  url "https://files.pythonhosted.org/packages/source/s/snapgpt/snapgpt-0.2.0.tar.gz"
  sha256 "ee9fd53d300aeeb67ced189bfefdc52317289cdfa026a7189a5e22400f1545e3"
  license "MIT"

  pour_bottle? do
    reason "The bottle requires no compilation"
    satisfy { true }
  end

  depends_on "python@3.12"

  resource "pathlib" do
    url "https://files.pythonhosted.org/packages/source/p/pathlib/pathlib-1.0.1.tar.gz"
    sha256 "6940718dfc3eff4258203ad5021090933e5c04707d5ca8cc9e73c94a7894ea9f"
  end

  resource "termcolor" do
    url "https://files.pythonhosted.org/packages/source/t/termcolor/termcolor-2.5.0.tar.gz"
    sha256 "998d8d27da6d48442e8e1f016119076b690d962507531df4890fcd2db2ef8a6f"
  end

  resource "pyperclip" do
    url "https://files.pythonhosted.org/packages/source/p/pyperclip/pyperclip-1.8.2.tar.gz"
    sha256 "105254a8b04934f0bc84e9c24eb360a591aaf6535c9def5f29d92af107a9bf57"
  end

  def install
    virtualenv = virtualenv_create(libexec, "python3.12")
    virtualenv.pip_install resources
    virtualenv.pip_install buildpath
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system bin/"snapgpt", "--help"
  end
end
