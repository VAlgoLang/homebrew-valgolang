class Manimdsl < Formula
  desc "A command line tool to animate data structures using Manim"
  homepage "https://github.com/ManimDSL/ManimDSLCompiler"
  url "https://github.com/ManimDSL/ManimDSLCompiler/releases/download/latest/brew_zip.zip"
  sha256 "6705245f5bbb7e54d54eeba0eb9605f70e94924627abef2f079e965a64f49424"
  version "latest"

  depends_on "cairo"
  depends_on "sox"
  depends_on "ffmpeg"
  depends_on "python3"

  bottle :unneeded

  def install
    system "/usr/local/bin/brew", "install", "--cask", "mactex"
#     system "/usr/local/bin/pip3", "install", "manimlib"    
    inreplace "brew/manimdsl", "##PREFIX##", "#{prefix}"
    prefix.install "compiler.jar"
    bin.install "brew/manimdsl"
  end
end
