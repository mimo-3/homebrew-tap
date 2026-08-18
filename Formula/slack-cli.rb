class SlackCli < Formula
  desc "CLI for the Slack Web API"
  homepage "https://github.com/mimo-3/slack-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mimo-3/slack-cli/releases/download/v0.1.0/slack-cli-aarch64-apple-darwin.tar.gz"
      sha256 "a8bafb41a8edca8e0a0e522fb1fa74c0e9a847480e5affcf5fe52600e7eed910"
    end
    on_intel do
      url "https://github.com/mimo-3/slack-cli/releases/download/v0.1.0/slack-cli-x86_64-apple-darwin.tar.gz"
      sha256 "339d071a7fd7a156b371bb02c5f87e64404cf3640ac1194452ede2e791090eed"
    end
  end

  def install
    bin.install "slack-cli"
  end

  test do
    assert_match "slack-cli", shell_output("#{bin}/slack-cli --version")
  end
end
