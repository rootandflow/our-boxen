class people::remy_actual {

  notify { 'class people::remy_actual declared': }

  include people::remy_actual::shell
  include people::remy_actual::term

# include people::remy_actual::apps
# include people::remy_actual::configs

}
