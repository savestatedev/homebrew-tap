class Savestate < Formula
  desc "Time Machine for AI — encrypted backup, restore, and migration for AI agent state"
  homepage "https://savestate.dev"
  url "https://registry.npmjs.org/@savestate/cli/-/cli-0.1.1.tgz"
  sha256 "852ab18c60166f52da4c179e5311a7deeb3df29a9c0bcc5a85c04d2253590c18"
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
