autocmd BufNewFile,BufRead PKGBUILD set filetype=sh
autocmd BufNewFile,BufRead /var/log/*.log,/var/log/*.log.*,/var/log/old/*.log.* set filetype=messages
autocmd BufNewFile,BufRead /var/log/pacman.log set filetype=pacmanlog
autocmd BufNewFile,BufRead /var/log/boot set filetype=bootlog
autocmd BufNewFile,BufRead /var/log/httpd/*error_log,/var/log/httpd/old/*error_log.* set filetype=apachelog
autocmd BufNewFile,BufRead /var/log/httpd/*access_log,/var/log/httpd/old/*access_log.* set filetype=httplog
autocmd BufNewFile,BufRead /srv/mysql/*.err,/lib/mysql/*.err,/home/virtualbox/data/*/mysql/*.err set filetype=mysqllog
