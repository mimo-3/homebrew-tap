class NotionCli < Formula
  desc "A CLI for the Notion API"
  homepage "https://github.com/mimo-3/notion-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mimo-3/notion-cli/releases/download/v0.3.0/notion-cli-aarch64-apple-darwin.tar.gz"
      sha256 "8ff51f44e47f9a661934ac4f951ecf50cceb97d8d41a0a8f3378ff7fa8faa2b7"
    end
    on_intel do
      url "https://github.com/mimo-3/notion-cli/releases/download/v0.3.0/notion-cli-x86_64-apple-darwin.tar.gz"
      sha256 "b2dea6cfcdd87f76a30959601cd7150c9335cd5330a2755a778873ad5710cf63"
    end
  end

  def install
    bin.install "notion"
  end

  test do
    assert_match "notion-cli", shell_output("#{bin}/notion --version")
  end
end
