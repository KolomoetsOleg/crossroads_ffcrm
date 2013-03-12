if defined?(FatFreeCRM::Application)
  require FatFreeCRM.root.join('config', 'environments', 'production')
  FatFreeCRM::Application.configure do
    # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
    # the I18n.default_locale when a translation can not be found)
    config.i18n.fallbacks = false

    # See everything in the log (default is :info)
    config.log_level = :debug

    # Full error reports
    config.consider_all_requests_local = true

    # Tell Action Mailer not to deliver emails to the real world.
    # The :file delivery method accumulates sent emails tmp/mail
    config.action_mailer.delivery_method = :file
  end
end
