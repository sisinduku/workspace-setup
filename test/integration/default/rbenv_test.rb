describe file('/home/kitchen/.rbenv/versions') do 
  it { should exist }
end

describe bash('sudo -H -u kitchen bash -c "source /etc/profile.d/rbenv.sh && rbenv global"') do
  its('stdout') { should include('2.5.1')  }
end

