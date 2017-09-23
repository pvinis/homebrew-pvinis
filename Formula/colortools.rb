class Colortools < Formula
  desc "List of shell scripts to print system colors and true colors."
  homepage "https://github.com/pvinis/colortools"
  url "https://github.com/pvinis/colortools/releases/download/v1.1/colortools-1.1.zip"
  sha256 "8b8220fa6e37890930c72830ae04ccb3bf35125f8f7365e40351f4772ab13789"

  def install
    bin.install Dir["./*"]
  end

  test do
    assert_match "TRUECOLOR", shell_output("#{bin}/colortools-true")
  end
end
