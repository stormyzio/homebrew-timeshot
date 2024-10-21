class Timeshot < Formula
  desc "Cross-platform tool to create quick code backups and restore them in case of risky changes."
  homepage "https://github.com/stormyzio/timeshot"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/stormyzio/timeshot/releases/download/v1.0.0/timeshot-x86_64-macos.zip"
      sha256 "3660b72cc931887af9f76abff54a2d3230e198825c89be1e27605aee124bff2a"
    elsif Hardware::CPU.arm?
      url "https://github.com/stormyzio/timeshot/releases/download/v1.0.0/timeshot-aarch64-macos.zip"
      sha256 "97a34c6d5704a95c78d5a74a666e33e040c784cabb6ece93b818881bf5548095"
    end
  end

  def install
    bin.install "timeshot"
  end

  test do
    system "#{bin}/timeshot", "--help"
  end
end
