class Savestate < Formula
  desc "Time Machine for AI — encrypted backup, restore, and migration for AI agent state"
  homepage "https://savestate.dev"
  url "https://registry.npmjs.org/@savestate/cli/-/cli-0.2.0.tgz"
  sha256 "1279717edb7445d136237fd9136173c4b3a653066b2313b63c69e3f5e3b88ba5"
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
