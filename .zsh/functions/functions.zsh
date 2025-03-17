# Function for colormapping
function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}


# function for compress media files
compress_media() {
    if [[ $# -lt 2 ]]; then
        echo "Usage: compress_media <input_file> <output_file> [bitrate/quality]"
        echo "Example: compress_media input.mp4 output.mp4 2M"
        return 1
    fi

    local input_file="$1"
    local output_file="$2"
    local bitrate_or_quality="${3:-2M}" # Default bitrate is 2M if not specified

    if [[ ! -f "$input_file" ]]; then
        echo "Error: Input file '$input_file' not found!"
        return 1
    fi

    echo "Compressing '$input_file' to '$output_file' with bitrate/quality: $bitrate_or_quality..."

    ffmpeg -i "$input_file" -b:v "$bitrate_or_quality" -b:a 128k "$output_file" -y

    if [[ $? -eq 0 ]]; then
        echo "Compression successful! File saved as '$output_file'."
    else
        echo "Compression failed!"
    fi
}
# compress_media input.mp4 output.mp4 1M


# function for windows title 
function set_win_title(){
    echo -ne "\033]0; msi@localhost: $PWD \007"
}
precmd_functions+=(set_win_title)


# function for creating new markdown file in obsidian/00_inbox directory
vn(){
  local filename="$1"
  if [[ -z "$filename" ]]; then
    echo "Usage: vn <filename>"
    return 1
  fi
  #use your own path <filepath>
  nano "00_inbox/${filename}.md" # enter file-name and directly start writing
}

# function for git checkout
function gsw() {
    local branch=$1
    if [ -z "$branch" ]; then
        echo "Usage: gsw <branch_name>"
        return 1
    fi
    git checkout $branch
    if [ $? -eq 0 ]; then
        echo "Switched to branch $branch"
    else
        echo "Failed to switch branch"
    fi
}

# function for ip
function get_ip(){
   # It can be thm or htb IP
   tunnel_ip=`ifconfig tun0 2>/dev/null | grep netmask | awk '{print $2}'`
   # Use eth0 as default IP,
   default_ip=`ifconfig eth0 2>/dev/null | grep netmask | awk '{print $2}'`
   if [[ $tunnel_ip == *"10."* ]]; then
      echo $tunnel_ip
   else
      echo $default_ip
   fi
}

# function for converting webp media
convert_webp() {
  for i in *
  do
  if [[ "${i##*.}" == "webp" ]]; then
      echo "WEBP FILE => $i"
      # show filename
      filename="${i%.*}"
      # show Extension
      extension="${i##*.}"
      ## webp converter
      ffmpeg -i "$filename" "$filename.png"
    fi
  done
}

# function for backing-up files
