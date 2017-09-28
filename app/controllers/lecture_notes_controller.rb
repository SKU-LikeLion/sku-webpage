class LectureNotesController < ApplicationController
  before_action :set_lecture_note, only: [:show, :edit, :update, :destroy]
  # GET /lecture_notes
  # GET /lecture_notes.json
  def index
    @lecture_notes = LectureNote.order('created_at DESC').page params[:page]
  end

  # GET /lecture_notes/1
  # GET /lecture_notes/1.json
  def show
  end

  # GET /lecture_notes/new
  def new
    @lecture_note = LectureNote.new
  end

  # GET /lecture_notes/1/edit
  def edit
  end

  # POST /lecture_notes
  # POST /lecture_notes.json
  def create
    @lecture_note = LectureNote.new(lecture_note_params)

    respond_to do |format|
      if @lecture_note.save
        format.html { redirect_to @lecture_note, notice: 'Lecture note was successfully created.' }
        format.json { render :show, status: :created, location: @lecture_note }
      else
        format.html { render :new }
        format.json { render json: @lecture_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lecture_notes/1
  # PATCH/PUT /lecture_notes/1.json
  def update
    respond_to do |format|
      if @lecture_note.update(lecture_note_params)
        format.html { redirect_to @lecture_note, notice: 'Lecture note was successfully updated.' }
        format.json { render :show, status: :ok, location: @lecture_note }
      else
        format.html { render :edit }
        format.json { render json: @lecture_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lecture_notes/1
  # DELETE /lecture_notes/1.json
  def destroy
    @lecture_note.destroy
    respond_to do |format|
      format.html { redirect_to lecture_notes_url, notice: 'Lecture note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lecture_note
      @lecture_note = LectureNote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lecture_note_params
      params.require(:lecture_note).permit(:title, :content, :image)
    end
end
