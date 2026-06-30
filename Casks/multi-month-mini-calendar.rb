cask "multi-month-mini-calendar" do
  version "0.0.3"
  sha256 "70bd1a6223285a355a74261a8d4f15847db109032228663d2e9f0e5f4ce5bf8a"

  url "https://github.com/kujiy/multi-month-mini-calendar/releases/download/v#{version}/Multi-Month-Mini-Calendar.zip"
  name "Multi-Month Mini Calendar"
  desc "Read-only menu bar calendar that shows multiple months at once"
  homepage "https://github.com/kujiy/multi-month-mini-calendar"

  depends_on macos: :sequoia

  app "Multi-Month Mini Calendar.app"

  caveats <<~EOS
    #{token} is ad-hoc signed (not notarized), so macOS Gatekeeper may block
    it on first launch. If it does, run:

      xattr -dr com.apple.quarantine "/Applications/Multi-Month Mini Calendar.app"
  EOS
end
