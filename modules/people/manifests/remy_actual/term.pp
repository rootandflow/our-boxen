class people::remy_actual::term {

  notify { 'class people::remy_actual::term declared': }

  ## iTerm2
  # install
  include iterm2::stable

  # color schemes
  include iterm2::colors::solarized_light
  include iterm2::colors::solarized_dark

  # fonts
  $fonts="/Users/${::boxen_user}/Library/Fonts"
  file { "Inconsolata-dz\sfor\sPowerline.otf":
    ensure => 'present',
    path   => "${fonts}/Inconsolata-dz\sfor\sPowerline.otf",
    source => "/Users/${::boxen_user}/dotfiles/term/fonts/InconsolataDz/Inconsolata-dz\sfor\sPowerline.otf"
  }

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
