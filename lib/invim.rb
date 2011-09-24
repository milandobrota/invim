require "invim/version"

module Invim

  FILE = '/tmp/invim.tmp'

  def invim
    system empty_file
    system capture_terminal_text
    system open_file
  end

  private

  def empty_file
    "> #{FILE}"
  end

  def open_file
    "/Applications/MacVim.app/Contents/MacOS/Vim + #{FILE}"
  end

  def capture_terminal_text
    # figure out how to suppress spaces in shell heredoc
    <<-COMMAND
osascript <<END
  set the_filepath to "#{FILE}" 
  set the_file to POSIX file the_filepath
  tell application "Terminal"
    tell front window
      set the_text to history of selected tab as text
    end
  end

  open for access the_file with write permission
  write the_text to the_file
  close access the_file
END
    COMMAND
  end

end

Object.send(:include, Invim)
