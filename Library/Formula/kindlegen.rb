require 'formula'

class Kindlegen < Formula
  homepage 'http://kindlegen.s3.amazonaws.com'
  url 'http://kindlegen.s3.amazonaws.com/KindleGen_Mac_i386_v2_9.zip'
  sha1 'bb84e75b38b120fb76bb7669a6ca2cab8c00fd64'

  def install
    bin.install 'kindlegen'
  end

  test do
    system "kindlegen"
  end

  def caveats
    <<-EOS.undent
      We agreed to the Kindle license for you.
      If this is unacceptable you should uninstall.
    EOS
  end
end
