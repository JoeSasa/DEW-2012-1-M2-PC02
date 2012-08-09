class Tweet < ActiveRecord::Base

Twitter.configure do |config|
      config.consumer_key = 'dOWzxQdW0vfVyaiTSQcKqg'
      config.consumer_secret = 'dqMKsBFgfwha5yBt29R7J9IeMJWXSeNH3vtwKRkU0c'
      config.oauth_token = '485317814-QCCxtuCvfF2eZmE8MM13551ZQDPyHSrsINfuCWv1'
      config.oauth_token_secret = 'os9BBzpZZNxDgKgOkVmwDrOIabd1735QgGGZ7WFHUo'
end

  def read_text
    return "sin status" if self.status.blank?
    Twitter.status(self.status).text
  end

  def read_message
    return "sin user" if self.user.blank?
    Twitter.user_timeline(self.user).first.text
  end
  
  def update_status
/return "sin update" if self.message.blank?/
Twitter.update(self.message)
  end

end
