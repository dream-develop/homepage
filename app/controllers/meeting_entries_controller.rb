class MeetingEntriesController < ApplicationController
  def index
    redirect_to new_meeting_entry_path
  end

  def new
    @meeting_entry = MeetingEntry.new
    @meetings = Meeting.where(display: true)
  end

  def create
    @meeting_entry = MeetingEntry.new(meeting_entry_params)

    if @meeting_entry.save
      redirect_to meeting_entries_confirmation_path
    else
      @meetings = Meeting.where(display: true)
      render :new
    end
  end

  def agreement
  end

  def confirmation
  end

  private
  def meeting_entry_params
    params.require(:meeting_entry).permit(:meeting_id, :family_name, :first_name, :family_kana, :first_kana, :phone, :email, :purpose, :note, :agreement)
  end
end
