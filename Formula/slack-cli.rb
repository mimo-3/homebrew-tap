class SlackCli < Formula
  desc "CLI for the Slack Web API"
  homepage "https://github.com/mimo-3/slack-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mimo-3/slack-cli/releases/download/v0.3.0/slack-cli-aarch64-apple-darwin.tar.gz"
      sha256 "dce2352f00e2b710062aa9046c63109d5f6b41c05f1e4aeb2377822ac5b19f83"
    end
    on_intel do
      url "https://github.com/mimo-3/slack-cli/releases/download/v0.3.0/slack-cli-x86_64-apple-darwin.tar.gz"
      sha256 "5650af2fe2ecece201e9c9c3009c9ca69eaf32a4a422c291e701061f5ba84afb"
    end
  end

  def install
    bin.install "slack-cli"
  end

  test do
    assert_match "slack-cli", shell_output("#{bin}/slack-cli --version")
  end
end
