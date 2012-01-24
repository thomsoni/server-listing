class ServersController < ApplicationController

  before_filter :authenticate_user!, :except => [:index] 

  def auth_check(authusers)
    if authusers.nil? == false and
     ((authusers.include? current_user.username) or current_user.admin.eql?("true"))
      return true
    else 
      return false
    end
  end

 
  def get_server_digest_string(servername)

    digest_obj = Serverdigest.find(:all, :conditions => { :servername => servername } ).first
    if digest_obj == nil
      raise "Could not obtain decryption digest for this server."
    end
    return digest_obj["digest"]

  end

 
  def generate_encrypt(servername, crypted_info)

    digest_string = get_server_digest_string(servername)
    digest = Digest::SHA1.hexdigest(digest_string)
    encryptor = ActiveSupport::MessageEncryptor.new(digest)
    final_string = encryptor.encrypt(crypted_info)
    return final_string  
  
  end


 
  def generate_decrypt(servername, crypted_info)

    digest_string = get_server_digest_string(servername)
    digest = Digest::SHA1.hexdigest(digest_string)
    decryptor = ActiveSupport::MessageEncryptor.new(digest)
    final_string = decryptor.decrypt(crypted_info)

    return final_string

  end

  # GET /servers
  # GET /servers.json
  def index
    @servers = Server.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @servers }
    end
  end

  # GET /servers/1
  # GET /servers/1.json
  def show
    @server = Server.find(params[:id])

    # decrypt our cryptinfo if user authorized to this server
    if auth_check(@server.authenticated)
      @auth_this_server = true
    end 

    # decrypt server's cryptinfo and reassign to object
    if @server["cryptinfo"].nil? == false
      final_string = generate_decrypt(@server.name, @server.cryptinfo)
      @server.cryptinfo = final_string
    end

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @server }
    end

    rescue Exception => e
	flash[:notice] = e.message

  end

  # GET /servers/new
  # GET /servers/new.json
  def new
    @server = Server.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @server }

    end
  end

  # GET /servers/1/edit
  def edit
    @server = Server.find(params[:id])
  
    #is user authorized to view this server's sensitive info? also applies if set as "admin"
    if auth_check(@server.authenticated)
      @auth_this_server = true
    end 

    if @server["cryptinfo"] != nil

      # get the digest for this server
      final_string = generate_decrypt(@server["name"], @server["cryptinfo"])
      @server["cryptinfo"] = final_string
    end

    rescue Exception => e
      flash[:notice] = e.message


  end

  # POST /servers
  # POST /servers.json
  def create
    @server = Server.new(params[:server])

  # generate a digest string
    digest_string = "#{@server["name"]}#{@server["ip"]}"

  # assign digest to new record in digests db
    @digest_obj = Serverdigest.new(:servername => @server["name"], :digest => digest_string)


    @server["updated_by"] = current_user.username

    respond_to do |format|
      if @server.save and @digest_obj.save
        format.html { redirect_to @server, notice: 'Server was successfully created.' }
        format.json { render json: @server, status: :created, location: @server }
      else
        format.html { render action: "new" }
        format.json { render json: @server.errors, status: :unprocessable_entity }
      end
    end

    rescue Exception => e
      flash[:notice] = e.message

  end

  # PUT /servers/1
  # PUT /servers/1.json
  def update
    @server = Server.find(params[:id])

    # only attempt encryption if new data received
    if params[:server][:cryptinfo].nil? == false

      # get the digest for this server
      final_string = generate_encrypt(@server["name"], params[:server][:cryptinfo])
      params[:server][:cryptinfo] = final_string   
    end

    @server["updated_by"] = current_user.username
    
    respond_to do |format|
      if @server.update_attributes(params[:server])
        format.html { redirect_to @server, notice: 'Server was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @server.errors, status: :unprocessable_entity }
      end
    end

    rescue Exception => e
      flash[:notice] = e.message

  end

  # DELETE /servers/1
  # DELETE /servers/1.json
  def destroy
    @server = Server.find(params[:id])
    @server.destroy

    #destroy corresponding digest link
    @digest = Serverdigest.find(:all, :conditions => { :servername => @server["name"] } ).first
    if @digest != nil
      @digest.destroy
    end

    respond_to do |format|
      format.html { redirect_to servers_url, notice: 'Server was successfully deleted.' }
      format.json { head :ok }
    end
  end
end
