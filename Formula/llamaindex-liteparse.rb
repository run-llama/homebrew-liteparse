require "language/node"

class LlamaindexLiteparse < Formula
  desc "Open-source PDF parsing with spatial text extraction and OCR processing"
  homepage "https://github.com/run-llama/liteparse#readme"
  url "https://registry.npmjs.org/@llamaindex/liteparse/-/liteparse-1.4.4.tgz"
  sha256 "dcdcc82f5bdcd8551d2bb0538383c5ac071dac6a30bb333011354a92191e1ee6"
  license "Apache-2.0"

  livecheck do
    url :stable
  end

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
