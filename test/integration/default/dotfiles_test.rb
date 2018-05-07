describe file("/home/kitchen/.vimrc") do
  it { should exist }
  its('owner') { should eq 'kitchen'}
end

describe file("/home/kitchen/.zshrc") do
  it { should exist }
  its('owner') { should eq 'kitchen'}
end

