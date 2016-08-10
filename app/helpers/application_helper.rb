module ApplicationHelper

  def unread_messages
    conversations = Conversation.where("sender_id = ? OR receiver_id = ?", current_user.id, current_user.id)
    total_unread = 0

    conversations.each do |conversation|
      
      unread = conversation.messages.where("user_id != ? AND read = ?", current_user.id, false).count

      total_unread += unread

    end 

    return total_unread 
  
  end

end
