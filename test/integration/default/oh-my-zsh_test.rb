describe directory('/home/kitchen/.oh-my-zsh') do
  it { should exist }
end

describe directory('/home/kitchen/.oh-my-zsh/custom/themes/spaceship-prompt') do
  it { should exist }
end

describe file('/home/kitchen/.oh-my-zsh/custom/themes/spaceship.zsh-theme') do
  it { should exist }
end
