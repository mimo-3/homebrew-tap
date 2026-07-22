class NotionCli < Formula
  desc "A CLI for the Notion API"
  homepage "https://github.com/mimo-3/notion-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mimo-3/notion-cli/releases/download/v0.2.1/notion-cli-aarch64-apple-darwin.tar.gz"
      sha256 "51fff2eeabd3a82b69d6c80cb6d0789c59fe443dde0beff4797f663084bf6b35"
    end
    on_intel do
      url "https://github.com/mimo-3/notion-cli/releases/download/v0.2.1/notion-cli-x86_64-apple-darwin.tar.gz"
      sha256 "2b4eca7aa37f5aff26814492cc3ef9163f92866ec9e7ec4555cdb94a34feefa3"
    end
  end

  def install
    bin.install "notion"
  end

  test do
    assert_match "notion-cli", shell_output("#{bin}/notion --version")
  end
end
