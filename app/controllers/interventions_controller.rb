class InterventionsController < ApplicationController
  before_action :set_intervention, only: %i[ show edit update destroy ]
  require 'zendesk_api'
  # GET /interventions or /interventions.json
  def index
    @intervention = Intervention.all
  end

  # GET /interventions/1 or /interventions/1.json
  def show
    if current_user
      if Employee.exists?(email: current_user.email)
        @intervention = Intervention.new
      else
        redirect_to root_path, notice: "Access Denied"
      end
    else
      redirect_to new_user_session_path, notice: 'You need to be logged in'
    end
  end

  def new
    if current_user
      if Employee.exists?(email: current_user.email)
        @intervention = Intervention.new
      else
        redirect_to root_path, notice: "Access Denied"
      end
    else
      redirect_to new_user_session_path, notice: 'You need to be logged in'
    end
  end

  # GET /interventions/new
  # def new
  #   @intervention = Intervention.new
  # end

  def get_building
    @building = Building.where(customer_id: params[:customerID])
      respond_to do |format|
          format.json {
              render json: {buildings: @building}
          }
      end
  end

  def get_battery
    @battery = Battery.where(building_id: params[:buildingID])
      respond_to do |format|
          format.json {
              render json: {batteries: @battery}
          }
      end
  end

  def get_column
    @column = Column.where(battery_id: params[:batteryID])
      respond_to do |format|
          format.json {
              render json: {columns: @column}
          }
      end
  end

  def get_elevator
    @elevator = Elevator.where(column_id: params[:columnID])
      respond_to do |format|
          format.json {
              render json: {elevators: @elevator}
          }
      end
  end

  # GET /interventions/1/edit
  def edit
  end

  # POST /interventions or /interventions.json
  def create
    @intervention = Intervention.new(intervention_params)

    respond_to do |format|
      if @intervention.save
        format.html { redirect_to @intervention, notice: "Intervention was successfully created." }
        format.json { render :show, status: :created, location: @intervention }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @intervention.errors, status: :unprocessable_entity }
      end
    end

    client = ZendeskAPI::Client.new do |config|
      # Mandatory:
    
      config.url = "https://godlyapex.zendesk.com/api/v2" # e.g. https://yoursubdomain.zendesk.com/api/v2
    
      # Basic / Token Authentication
      config.username = "cool.coke@hotmail.com"
    
      # Choose one of the following depending on your authentication choice
      # config.token = ENV['ZENDESK_CONFIG_TOKEN']
      config.password = ENV['ZENDESK_PASSWORD']
    
      # # OAuth Authentication
      # config.access_token = ENV['ZENDESK_ACCESS_TOKEN']

      # Optional:
    
      # Retry uses middleware to notify the user
      # when hitting the rate limit, sleep automatically,
      # then retry the request.
      config.retry = true
    
      # Raise error when hitting the rate limit.
      # This is ignored and always set to false when `retry` is enabled.
      # Disabled by default.
      config.raise_error_when_rate_limited = false
    
      # Logger prints to STDERR by default, to e.g. print to stdout:
      require 'logger'
      config.logger = Logger.new(STDOUT)
    
      # Disable resource cache (this is enabled by default)
      config.use_resource_cache = false
    
      # Changes Faraday adapter
      # config.adapter = :patron
    
      # Merged with the default client options hash
      # config.client_options = {:ssl => {:verify => false}, :request => {:timeout => 30}}
    
      # When getting the error 'hostname does not match the server certificate'
      # use the API at https://yoursubdomain.zendesk.com/api/v2
    
      # Change retry configuration (this is disabled by default)
      config.retry_on_exception = true
    
      # Error codes when the request will be automatically retried. Defaults to 429, 503
      config.retry_codes = [ 429 ]

    end

    ZendeskAPI::Ticket.new(client, :id => 1, :priority => "urgent") # doesn't actually send a request, must explicitly call #save!
    ZendeskAPI::Ticket.create!(client, :type => "problem", :subject => "The customer of ID #{@intervention.customer_id}", :comment => { :value =>
        "The customer of ID #{@intervention.customer_id} has an intervention request for his building #{@intervention.building_id}.
          Intervention information: 
          Intervention ID: #{@intervention.id}
          Customer ID: #{@intervention.customer_id}
          Building ID: #{@intervention.building_id}
          Battery ID: #{@intervention.battery_id}
          Column ID: #{@intervention.column_id}
          Elevator ID: #{@intervention.elevator_id}
          Result: #{@intervention.result}
          Report: #{@intervention.report}
          Intervention Status: #{@intervention.status_opt}"
    
          }, :submitter_id => @intervention.author, :priority => "urgent")
    # ZendeskAPI::Ticket.find!(client, :id => 1)
    # ZendeskAPI::Ticket.destroy!(client, :id => 1)
  end

  # PATCH/PUT /interventions/1 or /interventions/1.json
  def update
    respond_to do |format|
      if @intervention.update(intervention_params)
        format.html { redirect_to @intervention, notice: "Intervention was successfully updated." }
        format.json { render :show, status: :ok, location: @intervention }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @intervention.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interventions/1 or /interventions/1.json
  def destroy
    @intervention.destroy
    respond_to do |format|
      format.html { redirect_to interventions_url, notice: "Intervention was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intervention
      @intervention = Intervention.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def intervention_params
      params.require(:intervention).permit(:author, :customer_id, :building_id, :battery_id, :column_id, :elevator_id, :employee_id, :intervention_start_date_time, :intervention_end_date_time, :result, :report, :status_opt)
    end
end
