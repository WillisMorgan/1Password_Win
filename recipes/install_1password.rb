#
# Cookbook Name:: 1password
# Recipe:: onepassword_win
#
# Authors:  Morgan M Willis
# Copyright (c) 2016 Morgan M Willis, All Rights Reserved.

# Create a Windows version of the 1password cookbook from Chef Supermarket
# To nbe deployed on multiple units at a time.
#

include_recipe "windows"

        windows_package '1Password 4.6.1.616' do
          source 'https://d13itkw33a7sus.cloudfront.net/dist/1P/win4/1Password-4.6.1.616.exe'
          options
          installer_type :ex
          action :install
        end
