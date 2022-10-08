class PagesController < ApplicationController
  def home; end

  def contact
    @contact = Contact.new
  end

  def create_contact
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_path, notice: 'Thanks for contacting us!'
    else
      render :contact
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:full_name, :email, :phone, :message)
  end
end
