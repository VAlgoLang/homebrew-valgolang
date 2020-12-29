class Manimdsl < Formula
  desc "A command line tool to animate data structures using Manim"
  homepage "https://github.com/ManimDSL/ManimDSLCompiler"
  url "https://github.com/ManimDSL/ManimDSLCompiler/releases/download/latest/brew_zip.zip"
  sha256 "c582ec6abdb3fbd6ab92b102e16258f0926c11d835fc1ac8b43eb46f208f2d47"
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
