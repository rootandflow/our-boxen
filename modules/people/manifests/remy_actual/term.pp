class people::remy_actual::term {

  notify { 'class people::remy_actual::term declared': }

  ## iTerm2
  # install
  include iterm2::stable

  # color schemes
  include iterm2::colors::solarized_light
  include iterm2::colors::solarized_dark

  # set preferences from file

  $prefs_path = "/Users/${::boxen_user}/dotfiles/term"

  boxen::osx_defaults { 'Enable iterm preference loading':
    user   => $::boxen_user,
    domain => 'com.googlecode.iterm2',
    key    => 'LoadPrefsFromCustomFolder',
    value  => 1,
    type   => 'integer',
  } ->
  boxen::osx_defaults { 'Set iterm preference path':
    user   => $::boxen_user,
    domain => 'com.googlecode.iterm2',
    key    => 'PrefsCustomFolder',
    value  => $prefs_path,
    type   => 'string'
  }

}
