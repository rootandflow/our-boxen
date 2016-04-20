class people::remy_actual::term {

  notify { 'class people::remy_actual::term declared': }

  # Install and configure iterm2

  include iterm2::stable
  include iterm2::colors::solarized_light



}
