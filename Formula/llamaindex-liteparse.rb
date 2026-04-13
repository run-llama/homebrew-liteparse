require "language/node"

class LlamaindexLiteparse < Formula
  desc "Open-source PDF parsing with spatial text extraction and OCR processing"
  homepage "https://github.com/run-llama/liteparse#readme"
  url "https://registry.npmjs.org/@llamaindex/liteparse/-/liteparse-1.5.0.tgz"
  sha256 "071dbe06cf76212a55608bd49036f5579c722282890be96287c97ab806d86de2"
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
