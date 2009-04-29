set :application, "downjustforme"
set :repository,  "git@github.com:tetsuo692/downjustforme.git"

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
set :deploy_to, "/var/www/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
# set :scm, :subversion
set :scm, :git
set :scm_passphrase, 'zbmp47alye'

ssh_options[:forward_agent] = true

role :app, "www.cixi.eu"
