augroup htc_config_ftdetect
  autocmd!
  autocmd BufNewFile,BufRead condor_config setfiletype htc-config
  autocmd BufNewFile,BufRead condor_config.local setfiletype htc-config
  autocmd BufNewFile,BufRead /etc/condor/config.d/* setfiletype htc-config
  autocmd BufNewFile,BufRead /etc/condor-ce/config.d/* setfiletype htc-config
augroup END
