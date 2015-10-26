These are my WordPress syncs. Current syncs are:

develop - This is a basic sync so that we can run the normal travis tests. This is on a one minute cron.
codecov - This uses a differnt travis.yml that generates codecoverage. It is on a one hour cron.  


All of these syncs use the official wordpress git mirrors - https://make.wordpress.org/core/2014/01/15/git-mirrors-for-wordpress/
Each repo has two remotes.  origin which is the official git mirror and github which is the github repo that it goes to.

Have ideas for more syncs or an improvement to the exisiting syncs? open an issue and/or submit a PR.


