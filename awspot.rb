class Awspot < Formula
  include Language::Python::Virtualenv

  desc "A command line tool for managing AWS Spot Resources."
  homepage "https://github.com/rob-dalton/awspot"
  url "https://github.com/rob-dalton/awspot/raw/master/awspot-0.1.tar.gz"
  sha256 "4e800a67dd9c4d3a91769cb2827ceb3daf8394e60cace309dfb9609a9ae5a6e6"
  version "0.1" 

  def install
    ENV.deparallelize
    prefix.install "ec2.py", "managers"
    system("python", "generate_script.py", "--prefix=#{prefix}")
    bin.install "awspot"
  end

  def post_install 
    system("chmod", "0555", "#{prefix}/bin/awspot")
  end

end 
