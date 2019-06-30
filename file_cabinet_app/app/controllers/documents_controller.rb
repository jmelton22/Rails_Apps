class DocumentsController < ApplicationController
  def index

  end

  def show

  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(doc_params)

    if @document.save
      redirect_to @document
    else
      render 'new'
    end
  end

  def edit

  end

  def update

  end

  def destroy
  end
end

private
  def doc_params
    params.require(:document).permit(:title, :body)
  end

  def find_doc

  end
