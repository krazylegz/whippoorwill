class CommentatorsController < ApplicationController
  # GET /commentators
  # GET /commentators.xml
  def index
    @commentators = Commentator.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @commentators }
    end
  end

  # GET /commentators/1
  # GET /commentators/1.xml
  def show
    @commentator = Commentator.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @commentator }
    end
  end

  # GET /commentators/new
  # GET /commentators/new.xml
  def new
    @commentator = Commentator.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @commentator }
    end
  end

  # GET /commentators/1/edit
  def edit
    @commentator = Commentator.find(params[:id])
  end

  # POST /commentators
  # POST /commentators.xml
  def create
    @commentator = Commentator.new(params[:commentator])

    respond_to do |format|
      if @commentator.save
        flash[:notice] = 'Commentator was successfully created.'
        format.html { redirect_to(@commentator) }
        format.xml  { render :xml => @commentator, :status => :created, :location => @commentator }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @commentator.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /commentators/1
  # PUT /commentators/1.xml
  def update
    @commentator = Commentator.find(params[:id])

    respond_to do |format|
      if @commentator.update_attributes(params[:commentator])
        flash[:notice] = 'Commentator was successfully updated.'
        format.html { redirect_to(@commentator) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @commentator.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /commentators/1
  # DELETE /commentators/1.xml
  def destroy
    @commentator = Commentator.find(params[:id])
    @commentator.destroy

    respond_to do |format|
      format.html { redirect_to(commentators_url) }
      format.xml  { head :ok }
    end
  end
end
