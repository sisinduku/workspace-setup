describe file("/home/kitchen/.vimrc") do
  it { should exist  }
end

describe file("/home/kitchen/.zshrc") do
  it { should exist  }
end
