class MembersController < ApplicationController
	
	#index
	def index
	end
	#new member
	def new
		@member = Member.new
	end

	#get
	def show
		@member = Member.find(params[:id])
	end

	#post
	def create
		member = Member.new(resource_params)
		if member.save
			render plain: 'berhasil menyimpan data member baru'
		else
			render 'new'
		end
	end

	#get
	def edit
		@member = Member.find(params[:id])		
	end	

	#patch/put
	def update
		member = Member.find(params[:id])
		member.update(resource_params)		
		render plain: 'berhasil mengubah data member'
	end
	
	#delete
	def destroy
		member = Member.find(params[:id])
		member.destroy
		render plain: 'berhasil menghapus data member'
	end

	private
		def resource_params
			params.require(:member).permit(:nama, :alamat, 
				:email, :password, :no_tlp)
		end	
	
end