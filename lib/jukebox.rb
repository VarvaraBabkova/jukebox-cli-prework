songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def play (songs)
  puts "Please enter a song name or number:"
  song = gets.chomp
  puts song
  if songs.include? (song)
    puts "Playing <#{song}>"
    return
  end
  if song >= 1 && song <= songs.size #(1..songs.length).include?(song)
    puts "Playing <#{songs[song - 1]}>"
    return
  end
  puts "Invalid input, please try again"
end
