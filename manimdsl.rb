class Manimdsl < Formula
  desc "A command line tool to animate data structures using Manim"
  homepage "https://github.com/ManimDSL/ManimDSLCompiler"
  url "https://github.com/ManimDSL/ManimDSLCompiler/releases/download/latest/brew_zip.zip"
  sha256 "a3a750087f80be7ebe99f4350d8f9262a8bd004b1f86af89aed0711dd3329850"
  version "latest"

  depends_on "cairo"
  depends_on "sox"
  depends_on "ffmpeg"
  depends_on "python3"

  bottle :unneeded

  def install
    system "/usr/local/bin/brew", "install", "--cask", "mactex"
    system "/usr/local/bin/pip3", "install", "manimlib"    
    inreplace "manimdsl", "##PREFIX##", "#{prefix}"
    prefix.install "compiler.jar"
    bin.install "manimdsl"
  end
end
