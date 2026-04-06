require "language/node"

class LlamaindexLiteparse < Formula
  desc "Open-source PDF parsing with spatial text extraction and OCR processing"
  homepage "https://github.com/run-llama/liteparse#readme"
  url "https://registry.npmjs.org/@llamaindex/liteparse/-/liteparse-1.4.5.tgz"
  sha256 "8bef0fc2e291d2d18bd6798e69e9d03e9a92895b5533bf28517c94ed1a813aa3"
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
