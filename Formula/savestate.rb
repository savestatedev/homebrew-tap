class Savestate < Formula
  desc "Time Machine for AI — encrypted backup, restore, and migration for AI agent state"
  homepage "https://savestate.dev"
  url "https://registry.npmjs.org/@savestate/cli/-/cli-0.8.0.tgz"
  sha256 "66d6924e941964f56a5944719025aeb3a1aba2358aadce1fa70bd8ed8d002a1b"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "savestate", shell_output("#{bin}/savestate --help")
  end
end
