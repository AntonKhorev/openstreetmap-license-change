require 'oauth2'

module Auth
  def self.access_token(y)
    client = OAuth2::Client.new y["oauth2"]["client_id"],
                                nil,
                                { :site => y["oauth2"]["site"],
                                  :raise_errors => false,
                                  :connection_opts =>{ :request => { :open_timeout => 320, :read_timeout => 320 } } }

    OAuth2::AccessToken.new(client, y["oauth2"]["token"])
  end
end
