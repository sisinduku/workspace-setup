describe directory('/home/kitchen/.oh-my-zsh') do
  it { should exist }
end

describe directory('/opt/fonts') do
  it { should exist  }
end

describe directory('/home/kitchen/.oh-my-zsh/custom/plugins/zsh-256color') do
  it { should exist  }
end

describe directory('/home/kitchen/.oh-my-zsh/custom/themes/spaceship-prompt') do
  it { should exist }
end

describe file('/home/kitchen/.oh-my-zsh/custom/themes/spaceship.zsh-theme') do
  it { should exist }
end
