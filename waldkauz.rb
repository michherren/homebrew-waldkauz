# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Waldkauz < Formula
  desc "Redpanda Console Kafka client as a single static binary."
  homepage "https://github.com/michherren/waldkauz"
  version "0.0.7"
  license "MIT"
  depends_on :macos

  on_macos do
    url "https://github.com/michherren/waldkauz/releases/download/v0.0.7/waldkauz_0.0.7_Darwin_x86_64.tar.gz"
    sha256 "6fb345f3b75dc0d2df4adeba16c830575e1b1176de7c6a432aab3b4e3b2abbbc"

    def install
      bin.install "waldkauz"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Waldkauz
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  def caveats; <<~EOS
    Start the binary and follow the install instructions
  EOS
  end
end
