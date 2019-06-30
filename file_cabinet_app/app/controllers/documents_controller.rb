class DocumentsController < ApplicationController
  before_action :find_doc, only: [:show, :edit, :update, :destroy]

  def index
    @documents = Document.all.order('created_at DESC')
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
    if @document.update(doc_params)
      redirect_to @document
    else
      render 'edit'
    end
  end

  def destroy
    @document.destroy
    redirect_to documents_path
  end
end

private
  def doc_params
    params.require(:document).permit(:title, :body)
  end

  def find_doc
    @document = Document.find(params[:id])
  end
