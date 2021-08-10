# frozen_string_literal: true
class Rfd < Formula
  include Language::Python::Virtualenv

  desc 'view RedFlagDeals.com from the command line'
  homepage 'https://forums.redflagdeals.com'
  license 'GNU General Public License v3.0'
  url 'https://files.pythonhosted.org/packages/36/59/976d82315cd277ee0594799db8e045b763ce8aef17a3dd3283d2489e2afd/rfd-0.7.2.tar.gz'
  sha256 '4a71dce31fa0259c8702fdd76cbcf938e3363245754a96ad38b6ed982885bc51'
  version '0.7.2'

  depends_on 'python@3.9'

  resource 'beautifulsoup4' do
    url 'https://files.pythonhosted.org/packages/6b/c3/d31704ae558dcca862e4ee8e8388f357af6c9d9acb0cad4ba0fbbd350d9a/beautifulsoup4-4.9.3.tar.gz'
    sha256 '84729e322ad1d5b4d25f805bfa05b902dd96450f43842c4e99067d5e1369eb25'
  end

  resource 'certifi' do
    url 'https://files.pythonhosted.org/packages/6d/78/f8db8d57f520a54f0b8a438319c342c61c22759d8f9a1cd2e2180b5e5ea9/certifi-2021.5.30.tar.gz'
    sha256 '2bbf76fd432960138b3ef6dda3dde0544f27cbf8546c458e60baf371917ba9ee'
  end

  resource 'charset-normalizer' do
    url 'https://files.pythonhosted.org/packages/e7/4e/2af0238001648ded297fb54ceb425ca26faa15b341b4fac5371d3938666e/charset-normalizer-2.0.4.tar.gz'
    sha256 'f23667ebe1084be45f6ae0538e4a5a865206544097e4e8bbcacf42cd02a348f3'
  end

  resource 'click' do
    url 'https://files.pythonhosted.org/packages/21/83/308a74ca1104fe1e3197d31693a7a2db67c2d4e668f20f43a2fca491f9f7/click-8.0.1.tar.gz'
    sha256 '8c04c11192119b1ef78ea049e0a6f0463e4c48ef00a30160c704337586f3ad7a'
  end

  resource 'colorama' do
    url 'https://files.pythonhosted.org/packages/1f/bb/5d3246097ab77fa083a61bd8d3d527b7ae063c7d8e8671b1cf8c4ec10cbe/colorama-0.4.4.tar.gz'
    sha256 '5941b2b48a20143d2267e95b1c2a7603ce057ee39fd88e7329b0c292aa16869b'
  end

  resource 'idna' do
    url 'https://files.pythonhosted.org/packages/cb/38/4c4d00ddfa48abe616d7e572e02a04273603db446975ab46bbcd36552005/idna-3.2.tar.gz'
    sha256 '467fbad99067910785144ce333826c71fb0e63a425657295239737f7ecd125f3'
  end

  resource 'requests' do
    url 'https://files.pythonhosted.org/packages/e7/01/3569e0b535fb2e4a6c384bdbed00c55b9d78b5084e0fb7f4d0bf523d7670/requests-2.26.0.tar.gz'
    sha256 'b8aa58f8cf793ffd8782d3d8cb19e66ef36f7aba4353eec859e74678b01b07a7'
  end

  resource 'soupsieve' do
    url 'https://files.pythonhosted.org/packages/c8/3f/e71d92e90771ac2d69986aa0e81cf0dfda6271e8483698f4847b861dd449/soupsieve-2.2.1.tar.gz'
    sha256 '052774848f448cf19c7e959adf5566904d525f33a3f8b6ba6f6f8f26ec7de0cc'
  end

  resource 'urllib3' do
    url 'https://files.pythonhosted.org/packages/4f/5a/597ef5911cb8919efe4d86206aa8b2658616d676a7088f0825ca08bd7cb8/urllib3-1.26.6.tar.gz'
    sha256 'f57b4c16c62fa2760b7e3d97c35b255512fb6b59a259730f36ba32ce9f8e342f'
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    cmd_output = shell_output("#{bin}/rfd --version")
    assert_match "rfd v#{version}", cmd_output
  end
end
