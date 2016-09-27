describe file(File.join('/home', 'david', '.vim', 'autoload', 'pathogen.vim')) do 
  it { should be_file }
end

plugins = %w(
  ctrlp.vim rainbow vim-bundler vim-commentary vim-endwise vim-hashicorp-tools vim-rails vim-rspec 
  vim-ruby vim-surround vim-tmux-navigator
)

plugins.each do |plugin|
  describe directory("/home/david/.vim/bundle/#{plugin}") do 
    it { should be_directory }
  end
end

