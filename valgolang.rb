class Valgolang < Formula
  desc "A command line tool to animate data structures using Manim"
  homepage "https://github.com/VAlgoLang/VAlgoLang"
  url "https://github.com/VAlgoLang/VAlgoLang/releases/download/latest/valgolang-macos-latest"
  sha256 "1bc658f073d9eee5fce87a10490e8c37a7ec2864f9560c9d989eef4c11889591"
  version "latest"

  depends_on "cairo"
  depends_on "sox"
  depends_on "ffmpeg"
  depends_on "python3"

  bottle :unneeded

  def install
    system "/usr/local/bin/brew", "install", "--cask", "mactex"
    system "/usr/local/bin/pip3", "install", "manimlib"    
    bin.install "valgolang-macos-latest" => "valgolang"
  end
end
