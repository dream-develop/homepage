class MeetingEntriesController < ApplicationController
  def new
    @meeting_entry = MeetingEntry.new
  end

  def create
    @meeting_entry = MeetingEntry.new(meeting_entry_params)

    if @meeting_entry.save
      redirect_to meeting_entries_confirmation_path
    else
      redirect_to root_path
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
