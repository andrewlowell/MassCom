class MasscomController < ApplicationController

  def send_texts
    @client = Twilio::REST::Client.new Figaro.env.account_sid, Figaro.env.auth_token
    message = params[:message]
    Contact.all.each do |num|
#      puts params.inspect
      if params.key?("contact_#{num.id}")
        begin
          @client.messages.create(
          from: Figaro.env.from_number,
          to: "+1#{num.number}",
          body: "#{message}"
          )
        rescue Twilio::REST::RequestError => e
          puts e.message
        end
      end
    end
    redirect_to root_path
  end

end
