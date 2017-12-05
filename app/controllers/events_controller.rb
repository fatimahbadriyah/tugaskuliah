class EventsController < ApplicationController

	#new member
	def new
		@event = Event.new
	end

	#get
	def show
		@event = Event.find(params[:id])
	end

	#post
	def create
		event = Event.new(resource_params)
		if event.save
			render plain: 'berhasil menyimpan data member baru'
		else
			render 'new'
		end
	end

	#get
	def edit
		@event = Event.find(params[:id])		
	end	

	#patch/put
	def update
		event = Event.find(params[:id])
		event.update(resource_params)		
		render plain: 'berhasil mengubah data event'
	end
	
	#delete
	def destroy
		event = Event.find(params[:id])
		event.destroy
		render plain: 'berhasil menghapus data event'
	end

	private
		def resource_params
			params.require(:event).permit(:judul, :tgl_awal, 
				:tgl_akhir, :gambar, :no_tlp, 
				:pelaksana, :lokasi, :jenis_event, :sasaran, 
				:ketentuan)
		end	
	
end