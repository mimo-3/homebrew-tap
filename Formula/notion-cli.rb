class NotionCli < Formula
  desc "A CLI for the Notion API"
  homepage "https://github.com/mimo-3/notion-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mimo-3/notion-cli/releases/download/v0.2.0/notion-cli-aarch64-apple-darwin.tar.gz"
      sha256 "d6aefd28909b615c649247659f0fd0d37e0e3f5a86a221c5c1d7c9ffe1cdef19"
    end
    on_intel do
      url "https://github.com/mimo-3/notion-cli/releases/download/v0.2.0/notion-cli-x86_64-apple-darwin.tar.gz"
      sha256 "a487a0a316d146a465c6c0f955baae9be40bfc9d979ad63b5b783f26a954eba6"
    end
  end

  def install
    bin.install "notion"
  end

  test do
    assert_match "notion-cli", shell_output("#{bin}/notion --version")
  end
end
