class NotionCli < Formula
  desc "A CLI for the Notion API"
  homepage "https://github.com/mimo-3/notion-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mimo-3/notion-cli/releases/download/v#{version}/notion-cli-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/mimo-3/notion-cli/releases/download/v#{version}/notion-cli-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "notion"
  end

  test do
    assert_match "notion-cli", shell_output("#{bin}/notion --version")
  end
end
