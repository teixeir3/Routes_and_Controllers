class ContactsController < ApplicationController

  def create
    contact=Contact.new(params[:contact])

    if contact.save
      render :json => contact
    else
      render :json => contact.errors.full_messages, :status => :unprocessable_entity
    end
  end

  def show
    render :json => Contact.find(params[:id])
  end

  def update
    contact = Contact.find(params[:id])

    contact.update_attributes(params[:contact])
    render :json => contact
  end

  def destroy
    render :json => Contact.find(params[:id]).delete
  end

  def index
    if params.has_key?(:user_id)
      contact = Contact.where(:user_id => params[:user_id])
    else
      contact = Contact.all
    end

    render :json => contact
  end
end
