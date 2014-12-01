require "formula"

# Homebrew formula for Tune Control.

class TuneControl < Formula
  homepage "http://tomekwojcik.github.io/tune-control/"
  url "https://github.com/tomekwojcik/tune-control/archive/v1.0.tar.gz"
  sha1 "81dce64146dc8cb04058199bc71d9cc9b28a57d8"

  def install
    system "xcodebuild -configuration Release -target tune-control -resultBundlePath #{buildpath}/_tmp/result BUILD_ROOT=#{buildpath}/_tmp/build BUILD_DIR=#{buildpath}/_tmp/build OBJROOT=#{buildpath}/_tmp/build PRECOMP_DESTINATION_DIR=#{buildpath}/_tmp/build SHARED_PRECOMPS_DIR=#{buildpath}/_tmp/build BUILT_PRODUCTS_DIR=#{buildpath}/_tmp/build SYMROOT=#{buildpath}/_tmp/build"

    bin.install "_tmp/build/Release/tune-control"
    prefix.install "LICENSE"
    prefix.install "README.rst"
  end

  test do
    system "#{bin}/tune-control"
  end
end
