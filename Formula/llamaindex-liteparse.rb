require "language/node"

class LlamaindexLiteparse < Formula
  desc "Open-source PDF parsing with spatial text extraction and OCR processing"
  homepage "https://github.com/run-llama/liteparse#readme"
  url "https://registry.npmjs.org/@llamaindex/liteparse/-/liteparse-1.0.1.tgz"
  sha256 "7cd093b45716ea257c19c9d4b651b42d81cdb679b0d555074017464e384e5be5"
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
