class PagesController < ApplicationController
	def index
	end

	def proyectos
	end

	def modelos_ficha
	end

	def proyectos_ficha
	end

	def contacto
		 @contact = Contact.new
	end

	def create_contact
	  @contact = Contact.new(contact_params)

	  respond_to do |format|
	    if @contact.save
	      format.html { redirect_to @contact, notice: 'Contact was successfully created.' }
	      format.json { render :show, status: :created, location: @contact }
	    else
	      format.html { render :new }
	      format.json { render json: @contact.errors, status: :unprocessable_entity }
	    end
	  end
	end

	def quienes_somos
	end

	def financiamiento
	end

	def proceso_compra
	end

	def new
	end

	def edit
	end 

	def edificio_toscana
	end

	def edificio_piamonte
	end

	def parque_condominio_ligure
	end

	def edificio_montecastello
	end

	private

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:name, :email, :phone, :subject, :message)
    end
	
end