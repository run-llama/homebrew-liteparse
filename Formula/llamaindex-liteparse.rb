require "language/node"

class LlamaindexLiteparse < Formula
  desc "Open-source PDF parsing with spatial text extraction and OCR processing"
  homepage "https://github.com/run-llama/liteparse#readme"
  url "https://registry.npmjs.org/@llamaindex/liteparse/-/liteparse-1.4.0.tgz"
  sha256 "d68ea1b51c3c81f7fa206f2d5e2ba3ad0ec0377969341717cbea8d9805b7f1bc"
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
