class Omaship < Formula
  desc "CLI for provisioning and managing Omaship ships"
  homepage "https://omaship.com"
  url "https://rubygems.org/downloads/omaship-0.2.1.gem"
  sha256 "8b9daf715b27b4af51a4891970b4ae00a337f2e4aced094a8e79592306aa9c40"
  license "Proprietary"

  depends_on "ruby"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "install", cached_download, "--no-document", "--install-dir", libexec
    (bin/"omaship").write_env_script(libexec/"bin/omaship", GEM_HOME: ENV["GEM_HOME"], GEM_PATH: ENV["GEM_HOME"])
  end

  test do
    assert_match "omaship", shell_output("#{bin}/omaship --help")
  end
end
