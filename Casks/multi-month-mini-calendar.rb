cask "multi-month-mini-calendar" do
  version "0.0.6"
  sha256 "0cad5e2e44b8c3b1a05997adae8c327ff069b973a2c57a8da05ae89e486515e1"

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
      open "/Applications/Multi-Month Mini Calendar.app"
  EOS
end
