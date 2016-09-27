#
# Cookbook Name:: ws-vim
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'vim'

directory '/home/david/.vim/colors' do 
  recursive true
end

remote_file '/home/david/.vim/colors/molokai.vim' do 
  source 'https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim'
end
