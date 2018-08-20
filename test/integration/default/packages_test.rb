%w(
  zsh
  wget
  vim
  git
  tig
  postgresql
).each do |selected|
  describe package(selected) do
    it { should be_installed }
  end
end
