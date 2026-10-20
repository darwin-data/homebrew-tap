# Generated from the v0.3.0 release of darwin-data/lamarck. To update: change the
# version in the four URLs and the four sha256 values from the release `.sha256` files.
class Lamarck < Formula
  desc "Nature footprint of your Claude Code sessions: climate, water, pollution, land"
  homepage "https://github.com/darwin-data/lamarck"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/darwin-data/lamarck/releases/download/v0.3.0/lamarck-aarch64-apple-darwin.tar.gz"
      sha256 "4b95e920dcc1a9875efefdb06ab4789ea6bdfc38f18aea64ead9ceb2cf7f9a8c"
    end
    on_intel do
      url "https://github.com/darwin-data/lamarck/releases/download/v0.3.0/lamarck-x86_64-apple-darwin.tar.gz"
      sha256 "70f62341a0201af29ff89e3b52aa04e85c29ad3276b85285566dfbe94805649c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darwin-data/lamarck/releases/download/v0.3.0/lamarck-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7061f560130293a7be9ae9b3f63870f1c06cbf9ad1d29b5288eb82c37f2c7996"
    end
    on_intel do
      url "https://github.com/darwin-data/lamarck/releases/download/v0.3.0/lamarck-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d316ce884247dd7576ecee941f21691f4198e2818036fd7cd1aa43a1080e1cd6"
    end
  end

  def install
    bin.install "lamarck"
  end

  def caveats
    <<~EOS
      Add the nature footprint to your Claude Code status line:
        lamarck install-statusline
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lamarck --version")
  end
end
