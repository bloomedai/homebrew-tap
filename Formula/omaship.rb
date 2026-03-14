class Omaship < Formula
  desc "CLI for provisioning and managing Omaship ships"
  homepage "https://omaship.com"
  url "https://rubygems.org/downloads/omaship-0.4.0.gem"
  sha256 "03cc9ecce4c44a37f9fa8e5a82cd8fc57af850accd43e82f2d48a848bd4655c2"
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
