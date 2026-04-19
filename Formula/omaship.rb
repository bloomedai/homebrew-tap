class Omaship < Formula
  desc "CLI for provisioning and managing Omaship ships"
  homepage "https://omaship.com"
  url "https://rubygems.org/downloads/omaship-0.6.0.gem"
  sha256 "dd1a1907f515582bfcff1653054972d3244f26588c247a7f15e903cd7d368c04"
  license "Proprietary"

  depends_on "ruby"

  def install
    ENV["GEM_HOME"] = libexec
    system "gem", "install", cached_download, "--no-document", "--install-dir", libexec
    (bin/"omaship").write_env_script(libexec/"bin/omaship", GEM_HOME: ENV["GEM_HOME"], GEM_PATH: ENV["GEM_HOME"])

    (bash_completion/"omaship").write Utils.safe_popen_read(bin/"omaship", "complete", "bash")
    (zsh_completion/"_omaship").write Utils.safe_popen_read(bin/"omaship", "complete", "zsh")
    (fish_completion/"omaship.fish").write Utils.safe_popen_read(bin/"omaship", "complete", "fish")
  end

  test do
    assert_match "omaship", shell_output("#{bin}/omaship --help")
  end
end
