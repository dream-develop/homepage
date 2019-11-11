class MeetingEntriesController < ApplicationController
  def new
    @meeting_entry = MeetingEntry.new
  end

  def create
    @meeting_entry = MeetingEntry.new(meeting_entry_params)

    respond_to do |format|
      if @meeting_entry.save
        format.html { redirect_to root_path, notice: 'Meeting entry was successfully created.' }
      else
        format.html { redirect_to root_path }
        format.json { render json: @meeting_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  def agreement
  end

  private
  def meeting_entry_params
    params.require(:meeting_entry).permit(:meeting_id, :family_name, :first_name, :family_kana, :first_kana, :phone, :email, :purpose, :note, :agreement)
  end
end
