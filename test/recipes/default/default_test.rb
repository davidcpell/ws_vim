if os[:family] == 'redhat'
  describe package('vim-enhanced') do
    it { should be_installed }
  end
else
  describe package('vim') do
    it { should be_installed }
  end
end

describe file('/home/david/.vim/colors/molokai.vim') do 
  it { should be_file }
end
