class rootandflow::environment {

  notify { 'class rootandflow::environment declared': }

  if $::operatingsystem == 'Darwin' {
    include osx::global::enable_keyboard_control_access
  }

  include firefox

}
