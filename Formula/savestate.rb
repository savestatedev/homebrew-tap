class Savestate < Formula
  desc "Time Machine for AI — encrypted backup, restore, and migration for AI agent state"
  homepage "https://savestate.dev"
  url "https://registry.npmjs.org/@savestate/cli/-/cli-0.7.0.tgz"
  sha256 "c8a469849b45579bc7efffb9d739b1232f78af38993e49e2d90c2598c41ace33"
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
