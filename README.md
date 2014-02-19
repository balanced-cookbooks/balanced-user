balanced-user
=============

[![Build Status](https://travis-ci.org/balanced-cookbooks/balanced-user.png?branch=master)](https://travis-ci.org/balanced-cookbooks/balanced-user)

Adding a new user
-----------------

Welcome to Balanced! To get your SSH user created just update `recipes/default.rb`
with a new `balanced_user` resource for yourself. If your Balanced and Github
usernames are the same, you can just do:

```ruby
balanced_user 'asmithee' do
  sudo true
end
```

Custom dotfiles
---------------

To add per-user dotfiles copy the file to `templates/default/<username>/<filename>`
and add `dotfiles %w{filename}` to your `balanced_user` resource in `recipes/default.rb`.

Resources
---------

### balanced_user

The `balanced_user` resource defines a system user for a Balanced employee.

```ruby
balanced_user 'username' do
  sudo true
  github_username 'username'
  ssh_keys ['ssh-rsa ...']
end
```

* `sudo` – Does this user have sudo access. *(default: false)*
* `github_username` – Github username to query for SSH keys. Set to `false` to disable. *(default: username)*
* `ssh_keys` – List of SSH keys to use in addition to auto-discovered keys. *(default: [])*

### balanced_deploy_user

The `balanced_user` resource defines a deploy user for Balanced.

```ruby
balanced_deploy_user 'username'
```

There are no attributes for `balanced_deploy_user`.
