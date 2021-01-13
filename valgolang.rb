class Valgolang < Formula
  desc "A command line tool to animate data structures using Manim"
  homepage "https://github.com/VAlgoLang/VAlgoLang"
  url "https://github.com/VAlgoLang/VAlgoLang/releases/download/latest/brew_zip.zip"
  sha256 "22a8ed2882b72ec6207a4620b9a03146adc3a66a2d35d6e0c901f4f59802f135"
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
