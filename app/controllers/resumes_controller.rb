class ResumesController < ApplicationController

  add_breadcrumb "Resumes", :resumes_path

  def index
      @resumes = Resume.all
      add_breadcrumb "index", "", :title => "Back to the Index"
   end

   def new
      @resume = Resume.new
   end

   def create
      @resume = Resume.new(resume_params)

      if @resume.save
         redirect_to resumes_path, notice: "The resume #{@resume.name} has been uploaded."
      else
         render "new"
      end
   end

   def edit
     @resume = Resume.find(params[:id])
   end

   def destroy
      @resume = Resume.find(params[:id])
      @resume.destroy
      redirect_to resumes_path, notice:  "The resume #{@resume.name} has been deleted."
   end

   private
      def resume_params
      params.require(:resume).permit(:name, :attachment)
   end
end
