class Valgolang < Formula
  desc "A command line tool to animate data structures using Manim"
  homepage "https://github.com/VAlgoLang/VAlgoLang"
  url "https://github.com/VAlgoLang/VAlgoLang/releases/download/latest/brew_zip.zip"
  sha256 "3269dbc308a7fd505da28dead1105100d6a9e14ed432c0bf59dfe583eb3d165f"
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
