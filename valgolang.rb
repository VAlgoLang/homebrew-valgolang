class Valgolang < Formula
  desc "A command line tool to animate data structures using Manim"
  homepage "https://github.com/VAlgoLang/VAlgoLang"
  url "https://github.com/VAlgoLang/VAlgoLang/releases/download/latest/brew_zip.zip"
  sha256 "96665c779f06bed2cd9d30d8a2070be13df0ce8efcdf73f3b1d843d0ed287cb0"
  version "latest"

  depends_on "cairo"
  depends_on "sox"
  depends_on "ffmpeg"
  depends_on "python3"

  bottle :unneeded

  def install
    system "/usr/local/bin/brew", "install", "--cask", "mactex"
    system "/usr/local/bin/pip3", "install", "manimlib"    
    inreplace "valgolang", "##PREFIX##", "#{prefix}"
    prefix.install "compiler.jar"
    bin.install "valgolang"
  end
end
