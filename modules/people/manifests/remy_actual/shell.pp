class people::remy_actual::shell {

  notify { 'class people::remy_actual::shell declared': }

  # Changes the default shell to the zsh version we get from Homebrew
  # Uses the osx_chsh type out of boxen/puppet-osx
  osx_chsh { $::boxen_user:
    shell   => "${boxen::config::homebrewdir}/bin/zsh",
    require => Package['zsh'],
  }

  file_line { 'add zsh to /etc/shells':
    path    => '/etc/shells',
    line    => "${boxen::config::homebrewdir}/bin/zsh",
    require => Package['zsh'],
  }

}
