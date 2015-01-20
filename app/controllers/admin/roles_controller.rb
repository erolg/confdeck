class Admin::RolesController < Admin::AdminController
  before_filter :set_conference

  def index

  end

  def create
    Conferences::UpdateConferenceRolesService.new
      .call(@conference, roles_params[:conference_admins], roles_params[:conference_users])

    respond_to do |format|
      format.html { redirect_to admin_roles_path, notice: t("roles.updated")}
    end
  end

  private

  def roles_params
    params.permit(conference_admins: [], conference_users: [])
  end

  def set_conference
    @conference = @current_conference
  end
end