cask "kugoumusic" do
  version "3.1.2"
  sha256 "ebd5fd97a9de3881711d4493c7a67406cf1e8f37995119309198a690d762f4c3"

  url "https://downmini.kugou.com/mac/Kugou_V#{version}.dmg"
  name "Kugou Music"
  desc "Digital music service"
  homepage "https://www.kugou.com/"

  disable! date: "2024-03-03", because: "download artifact behind signed url"

  depends_on macos: ">= :high_sierra"

  app "KugouMusic.app"

  caveats do
    requires_rosetta
  end
end
