# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Vpngate < Formula
  desc "a client for vpngate.net"
  homepage "https://github.com/davegallant/homebrew-public"
  version "0.2.1"

  on_macos do
    on_intel do
      url "https://github.com/davegallant/vpngate/releases/download/v0.2.1/vpngate_0.2.1_darwin_amd64.tar.gz"
      sha256 "0c839aa115c297541bc368008350a43b01d8c7c3bad4e6b49de960faf0eafa09"

      def install
        bin.install "vpngate"
      end
    end
    on_arm do
      url "https://github.com/davegallant/vpngate/releases/download/v0.2.1/vpngate_0.2.1_darwin_arm64.tar.gz"
      sha256 "f046308b36d7a44404698df9a5ad36a52dfe4fa49406a811fc601c966054577c"

      def install
        bin.install "vpngate"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/davegallant/vpngate/releases/download/v0.2.1/vpngate_0.2.1_linux_amd64.tar.gz"
        sha256 "f2c2ec423c68d05a31241b76b8cb0e7e197f6fc0f0afe418c61260dfc94eb52b"

        def install
          bin.install "vpngate"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/davegallant/vpngate/releases/download/v0.2.1/vpngate_0.2.1_linux_arm64.tar.gz"
        sha256 "2c74a430183d6b6919bc2c4c7e0acd1d4b59de15857084883bce2ad9897e9dcd"

        def install
          bin.install "vpngate"
        end
      end
    end
  end
end
