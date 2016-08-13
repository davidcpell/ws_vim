if os[:family] == 'centos'
  describe package('vim-enhanced') do 
    it { should be_installed }
  end
else
  describe package('vim') do 
    it { should be_installed }
  end
end
