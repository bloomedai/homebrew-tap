class Omaship < Formula
  desc "CLI for provisioning and managing Omaship ships"
  homepage "https://omaship.com"
  url "https://rubygems.org/downloads/omaship-0.5.0.gem"
  sha256 "90ffe1b6d690dfe9b534fa4100bd804423704348d73cf253071521a116ff2f6f"
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
