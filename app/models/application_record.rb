class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

def send_devise_notification(notification, *args)
  devise_mailer.send(notification, self, *args).deliver_later
end

end
