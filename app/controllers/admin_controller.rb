class AdminController < ApplicationController
	def dashboard
	end
	def dataAdmin
		@admins = Administrator.all
	end
	def dataMember
		@members = Member.all
	end
	def dataVisitor
		@visitors = Visitor.all
	end
	def dataEvent
		@events = Event.all
	end
end