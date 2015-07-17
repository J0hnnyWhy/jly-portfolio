class ExperiencesController < ApplicationController
  def new
    @skill = Skill.find(params[:skill_id])
    @experience = @skill.experiences.new
  end

  def create
    @skill = Skill.find(params[:skill_id])
    @experience = @skill.experiences.new(experience_params)
    if @experience.save
       flash[:notice] = "experience successfully added!"
      redirect_to skill_path(@experience.skill)
    else
      render :new
    end
end

  def edit
    @skill = Skill.find(params[:skill_id])
    @experience = Experience.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:skill_id])
    @experience = Experience.find(params[:id])
    if @experience.update(experience_params)
      flash[:notice] = "experience successfully updated!"
      redirect_to skill_path(@experience.skill)
    else
      render :edit
    end
  end

    def destroy
      @skill = Skill.find(params[:skill_id])
      @experience = Experience.find(params[:id])
      @experience.destroy
      redirect_to skill_path(@experience.skill)
    end

private def experience_params
  params.require(:experience).permit(:description)
 end
end
