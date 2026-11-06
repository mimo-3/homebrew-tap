class SlackCli < Formula
  desc "CLI for the Slack Web API"
  homepage "https://github.com/mimo-3/slack-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mimo-3/slack-cli/releases/download/v0.2.1/slack-cli-aarch64-apple-darwin.tar.gz"
      sha256 "2619c19c545ee12265d61dd29cb854f7ea2ee89459efccad06194f61ebb35654"
    end
    on_intel do
      url "https://github.com/mimo-3/slack-cli/releases/download/v0.2.1/slack-cli-x86_64-apple-darwin.tar.gz"
      sha256 "addb2180005bf31deef103037af06581b5ed45854126c1a1edb0627e522e1dd4"
    end
  end

  def install
    bin.install "slack-cli"
  end

  test do
    assert_match "slack-cli", shell_output("#{bin}/slack-cli --version")
  end
end
