# frozen_string_literal: true

class PublishersController < ApplicationController
  def index
    publishers = orchestrate_query(Publisher.all)
    embed_page_navigation(publishers)
    render serialize(publishers)
  end

  def show
    render serialize(publisher)
  end

  def create
    new_publisher = Publisher.new(publisher_params)
    if new_publisher.save
      render serialize(new_publisher).merge(status: :created, location: new_publisher)
    else
      unprocessable_entity!(new_publisher)
    end
  end

  def update
    if publisher.update(publisher_params)
      render serialize(publisher).merge(status: :ok)
    else
      unprocessable_entity!(publisher)
    end
  end

  def destroy
    publisher.destroy
    render status: :no_content
  end

  private

  def publisher
    @publisher ||= Publisher.find(params[:id])
  end

  def publisher_params
    params.require(:data).permit(:name)
  end
end
