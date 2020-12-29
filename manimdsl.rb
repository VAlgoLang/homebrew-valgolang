class ManimDSL < Formula
  desc "A command line tool to animate data structures using Manim"
  homepage "https://github.com/ManimDSL/ManimDSLCompiler"
  url "https://github.com/ManimDSL/ManimDSLCompiler/releases/download/latest/compiler.jar"
  sha256 "2e826dd914a2526d5e585c151b80f2907a7f1d3841c310593109174553d007b3"
  version "latest"

  depends_on "cairo"
  depends_on "sox"
  depends_on "ffmpeg"
  depends_on :mactex

  bottle :unneeded

  def install
    bin.install "manimdsl"
  end
end
