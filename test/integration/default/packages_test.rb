describe package('zsh') do
  it { should be_installed  }
end

describe package('wget') do
  it { should be_installed  }
end

describe package('git') do
  it { should be_installed  }
end

describe package('postgresql') do
  it { should be_installed  }
end
