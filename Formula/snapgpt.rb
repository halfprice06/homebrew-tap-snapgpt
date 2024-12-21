class Snapgpt < Formula
  include Language::Python::Virtualenv

  desc "Create readable snapshots of your codebase for AI assistants"
  homepage "https://github.com/halfprice06/snapgpt"
  url "https://files.pythonhosted.org/packages/source/s/snapgpt/snapgpt-0.1.0.tar.gz"
  sha256 "43e67e91322ceb4c0ddec2c4d8d6e0ceaea3e34b86c075920bbc91821c51d7df"
  license "MIT"

  depends_on "python@3.11"

  resource "pathlib" do
    url "https://files.pythonhosted.org/packages/source/p/pathlib/pathlib-1.0.1.tar.gz"
    sha256 "6940718dfc3eff4258203ad5021090933e5c04707d5ca8cc9e73c94a7894ea9f"
  end

  resource "termcolor" do
    url "https://files.pythonhosted.org/packages/source/t/termcolor/termcolor-2.5.0.tar.gz"
    sha256 "998d8d27da6d48442e8e1f016119076b690d962507531df4890fcd2db2ef8a6f"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"snapgpt", "--help"
  end
end
