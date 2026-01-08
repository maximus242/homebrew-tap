class Grokcode < Formula
  include Language::Python::Virtualenv

  desc "An agentic CLI coding assistant powered by xAI's Grok API"
  homepage "https://github.com/maximus242/grokcode"
  url "https://github.com/maximus242/grokcode/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "2de695e7b2777b6d610288dcd2a48a0b83c7c9066e35c0d8137d2744f00f4621"
  license "MIT"

  depends_on "python@3.11"

  resource "openai" do
    url "https://files.pythonhosted.org/packages/a8/cc/225d0f3583a498ab8fe0be7788f987f876a5de8910a0eb6d2e2a091c0079/openai-1.82.0.tar.gz"
    sha256 "2dd037969f4071a504fe97a9a04c5dccc0066148bc566d628e6271003dc6a044"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/ab/3a/0316b28d0761c6734d6bc14e770d85506c986c85ffb239e688eebd273c12/rich-13.9.4.tar.gz"
    sha256 "439594978a49a09530cff7ebc4b5c7103ef57c5a1f4e9c4d5c0d8ed12b3e0d3a"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/bb/6e/9d084c929dfe9e3bfe0c6a47e31f78a25c54627d64a66e884a8bf5474f1c/prompt_toolkit-3.0.48.tar.gz"
    sha256 "d6623ab0477a80df74e646bdbc93621143f5caf104206aa29294d53de1a03d90"
  end

  resource "keyring" do
    url "https://files.pythonhosted.org/packages/f6/24/64447b13df6a0e2797b4b4e2d6c7d54e4f0f0c2d30e9f6c8e6e8f8a6d5f8/keyring-25.5.0.tar.gz"
    sha256 "4c753b3ec91717fe713c4edd522c3eb0c0e5e4b0a5d6ca5f2c939f8e4c6f1d8a"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Grok Code v", shell_output("#{bin}/grokcode --version")
  end
end
