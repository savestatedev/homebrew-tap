class Savestate < Formula
  desc "Time Machine for AI — encrypted backup, restore, and migration for AI agent state"
  homepage "https://savestate.dev"
  url "https://registry.npmjs.org/@savestate/cli/-/cli-0.9.0.tgz"
  sha256 "5c6d2ea785eeae3f1048a2f71d3e0070cfbcb59fe1336403b2875317c69fd8c4"
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
