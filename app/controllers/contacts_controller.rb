class ContactsController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def new
    @contact = Contact.new
    respond_with(@contact)
  end

  def edit
  end

  def create
    @contact = Contact.new(contact_params)
    respond_to do |format|
      if @contact.save
        ContactMailer.contact_data(@contact).deliver!
        ContactMailer.thanks(@contact).deliver!
        format.html {redirect_to root_path, notice: 'Contact was successfully created.' }
      else
        respond_with(@contact)
      end
    end
  end

  private
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:full_name, :email, :subject, :body)
    end
end
