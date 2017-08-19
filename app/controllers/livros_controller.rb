class LivrosController < ApplicationController

	def new
	end

	def create
		# render plain: params[:livro].inspect

		@livro = Livro.new(livro_params)

		@livro.save
		redirect_to @livro
	end

	def show
		@livro = Livro.find(params[:id])
	end

	def index
		@livros = Livro.all
	end

	def update
	  @livro = Livro.find(params[:id])
	 
	  if @livro.update(livro_params)
	    redirect_to @livro
	  else
	    render 'edit'
	  end
	end

	def edit
		@livro = Livro.find(params[:id])
	end

	def destroy
	  @livro = Livro.find(params[:id])
	  @livro.destroy
	 
	  redirect_to livros_path
	end

	private
		def livro_params
			params.require(:livro).permit(:titulo, :autor, :edicao, :condicao, :descricao, :imagem)
		end

end
