module SessionsHelper
  def log_out
    session.delete(:iser_id)
    @current_user= nil
  end
end
