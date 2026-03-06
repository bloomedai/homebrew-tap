class Omaship < Formula
  desc "CLI for provisioning and managing Omaship ships"
  homepage "https://omaship.com"
  url "https://rubygems.org/downloads/omaship-0.2.2.gem"
  sha256 "eb87ce1dc5aedd08d0cd22d654114db533d727cdd05c426a72ef2a7fa66133e2"
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
