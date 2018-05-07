describe directory('/home/kitchen/.vim') do 
  its('owner') { should eq 'kitchen'}
end

describe directory('/home/kitchen/.vim/bundle') do 
  its('owner') { should eq 'kitchen'}
end

describe file('/home/kitchen/.vim/colors/') do
  it { should exist }
  its('owner') { should eq 'kitchen' }
end

describe file('/home/kitchen/.vim/colors/solarized.vim') do
  it { should exist }
end

describe file('/home/kitchen/.vim/bundle/Vundle.vim') do
  it { should exist } 
end
