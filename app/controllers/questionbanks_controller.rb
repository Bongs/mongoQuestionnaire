class QuestionbanksController < ApplicationController
  # GET /questionbanks
  # GET /questionbanks.json
  def index
    @questionbanks = Questionbank.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @questionbanks }
    end
  end

  # GET /questionbanks/1
  # GET /questionbanks/1.json
  def show
    @questionbank = Questionbank.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @questionbank }
    end
  end

  # GET /questionbanks/new
  # GET /questionbanks/new.json
  def new
    @questionbank = Questionbank.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @questionbank }
    end
  end

  # GET /questionbanks/1/edit
  def edit
    @questionbank = Questionbank.find(params[:id])
  end

  # POST /questionbanks
  # POST /questionbanks.json
  def create
    @questionbank = Questionbank.new(params[:questionbank])

    respond_to do |format|
      if @questionbank.save
        format.html { redirect_to @questionbank, notice: 'Questionbank was successfully created.' }
        format.json { render json: @questionbank, status: :created, location: @questionbank }
      else
        format.html { render action: "new" }
        format.json { render json: @questionbank.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /questionbanks/1
  # PUT /questionbanks/1.json
  def update
    @questionbank = Questionbank.find(params[:id])

    respond_to do |format|
      if @questionbank.update_attributes(params[:questionbank])
        format.html { redirect_to @questionbank, notice: 'Questionbank was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @questionbank.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questionbanks/1
  # DELETE /questionbanks/1.json
  def destroy
    @questionbank = Questionbank.find(params[:id])
    @questionbank.destroy

    respond_to do |format|
      format.html { redirect_to questionbanks_url }
      format.json { head :no_content }
    end
  end
end
