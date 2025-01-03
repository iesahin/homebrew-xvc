class Xvc < Formula
  desc 'Xvc: An MLOps tool to manage data and pipelines similar to DVC'
  homepage 'https://xvc.dev'
  url 'https://github.com/iesahin/xvc/archive/refs/tags/v0.6.13.tar.gz'
  sha256 '01bee5d840eefec7be1f52cc75546e1ffd7e332dfac83d875655f84e61e3a9f6'
  license 'GPL-3.0'

  depends_on 'rust' => :build

  def install
    system 'cargo', 'install', '--features', 'reflink', *std_cargo_args
  end

  test do
    system "#{bin}/xvc", '--version'
  end
end
