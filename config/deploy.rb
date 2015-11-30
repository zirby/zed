set :application, 'zed'
set :repo_url, 'git@github.com:zirby/zed.git'

set :ssh_user, 'zirby'
server 'vps221759.ovh.net', user: fetch(:ssh_user), roles: %w{web app db}

set :scm, :git

set :format, :pretty
set :log_level, :info
# set :log_level, :debug

set :composer_install_flags, '--no-dev --prefer-dist --no-interaction --optimize-autoloader'

set :linked_files, %w{app/config/parameters.yml}
set :linked_dirs, %w{app/logs web/uploads}

set :keep_releases, 3

after 'deploy:finishing', 'deploy:cleanup'