#!/bin/bash
date
function nameparam() {
	if [[ $1 == "" ]]; then
		local input=""
		read -p "${2}:" input
		eval "$2=\"$(echo $input)\""
	else
		eval "$2=\"$(echo $1)\""
	fi
}

nameparam "$1" "ukraina"
nameparam "$2" "_1plus1"
nameparam "$3" "inter"
nameparam "$4" "stb"
nameparam "$5" "ictv"
nameparam "$6" "newchannel"
nameparam "$7" "pryamiy"
nameparam "$8" "_112"
nameparam "$9" "espresso"
nameparam "${10}" "_24"
nameparam "${11}" "newsone"

[ "${ukraina}" ] && ffmpeg -i "${ukraina}" -c copy -flags +global_header -f segment -segment_time 600 -segment_format_options movflags=+faststart -reset_timestamps 1 -bsf:a aac_adtstoasc ukraina/ukraina_%d.mp4 1>/dev/null 2>&1 &

[ "${_1plus1}" ] && ffmpeg -i "${_1plus1}" -c copy -flags +global_header -f segment -segment_time 600 -segment_format_options movflags=+faststart -reset_timestamps 1 -bsf:a aac_adtstoasc 1plus1/1plus1_%d.mp4 1>/dev/null 2>&1 &

[ "${inter}" ] && ffmpeg -i "${inter}" -c copy -flags +global_header -f segment -segment_time 600 -segment_format_options movflags=+faststart -reset_timestamps 1 -bsf:a aac_adtstoasc inter/inter_%d.mp4 1>/dev/null 2>&1 &

[ "${stb}" ] && ffmpeg -i "${stb}" -c copy -flags +global_header -f segment -segment_time 600 -segment_format_options movflags=+faststart -reset_timestamps 1 -bsf:a aac_adtstoasc stb/stb_%d.mp4 1>/dev/null 2>&1 &

[ "${ictv}" ] && ffmpeg -i "${ictv}" -c copy -flags +global_header -f segment -segment_time 600 -segment_format_options movflags=+faststart -reset_timestamps 1 -bsf:a aac_adtstoasc ictv/ictv_%d.mp4 1>/dev/null 2>&1 &

[ "${newchannel}" ] && ffmpeg -i "${newchannel}" -c copy -flags +global_header -f segment -segment_time 600 -segment_format_options movflags=+faststart -reset_timestamps 1 -bsf:a aac_adtstoasc newchannel/newchannel_%d.mp4 1>/dev/null 2>&1 &

[ "${pryamiy}" ] && ffmpeg -i "${pryamiy}" -c copy -flags +global_header -f segment -segment_time 600 -segment_format_options movflags=+faststart -reset_timestamps 1 -bsf:a aac_adtstoasc pryamiy/pryamiy_%d.mp4 1>/dev/null 2>&1 &

[ "${_112}" ] && ffmpeg -i "${_112}" -f segment -segment_time 600 -segment_format_options movflags=+faststart -reset_timestamps 1 -bsf:a aac_adtstoasc 112/112_%d.mp4 1>/dev/null 2>&1 &

[ "${espresso}" ] && ffmpeg -i "${espresso}" -c copy -flags +global_header -f segment -segment_time 600 -segment_format_options movflags=+faststart -reset_timestamps 1 -bsf:a aac_adtstoasc espresso/espresso_%d.mp4 1>/dev/null 2>&1 &

[ "${_24}" ] && ffmpeg -i "${_24}" -c copy -flags +global_header -f segment -segment_time 600 -segment_format_options movflags=+faststart -reset_timestamps 1 -bsf:a aac_adtstoasc 24/24_%d.mp4 1>/dev/null 2>&1 &

[ "${newsone}" ] && ffmpeg -i "${newsone}" -c copy -flags +global_header -f segment -segment_time 600 -segment_format_options movflags=+faststart -reset_timestamps 1 -bsf:a aac_adtstoasc newsone/newsone_%d.mp4 1>/dev/null 2>&1 &

date
