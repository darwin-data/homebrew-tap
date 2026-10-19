# Generated from the v0.2.0 release of darwin-data/claude-nature. To update: change the
# version in the four URLs and the four sha256 values from the release `.sha256` files.
class ClaudeNature < Formula
  desc "Nature footprint of your Claude Code sessions: climate, water, pollution, land"
  homepage "https://github.com/darwin-data/claude-nature"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/darwin-data/claude-nature/releases/download/v0.2.0/claude-nature-aarch64-apple-darwin.tar.gz"
      sha256 "f5010d5107a7297592ff5af20a7049c4e30e4303a1003d90722a609a808b5b1f"
    end
    on_intel do
      url "https://github.com/darwin-data/claude-nature/releases/download/v0.2.0/claude-nature-x86_64-apple-darwin.tar.gz"
      sha256 "698d33f1298076d83b1d31fbfe37ee551820c4bce0435e2ffc3112bb611604b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darwin-data/claude-nature/releases/download/v0.2.0/claude-nature-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1b1efe28db6190835cdaabaf58b049eac3ef6381e46a2299e120c15ecd7faf6b"
    end
    on_intel do
      url "https://github.com/darwin-data/claude-nature/releases/download/v0.2.0/claude-nature-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2de0e136131f2c5f250365b9a0ad7f5f013ba62c7a7ecf5571b85e38b24b6572"
    end
  end

  def install
    bin.install "claude-nature"
  end

  def caveats
    <<~EOS
      Add the nature footprint to your Claude Code status line:
        claude-nature install-statusline
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claude-nature --version")
  end
end
