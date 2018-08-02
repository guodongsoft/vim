function! Test()
ruby <<EOS
  require '~/.vim/script/ruby/test'
  rubytest()
EOS
endfunction

command! Test :call Test()
