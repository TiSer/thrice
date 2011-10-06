# Model for including custom site variables
# Config file is /config/application.yml
class ApplicationSettings < Settingslogic
  source "#{Rails.root}/config/application.yml"
  namespace Rails.env
end
