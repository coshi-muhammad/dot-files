#!/usr/bin/sh

language="$(hyprctl devices |hyprctl devices | awk '/Keyboard/ {system_info=$0; while(getline > 0 && $0 !~ /main: /) system_info=system_info "\n" $0; system_info=system_info "\n" $0; if(system_info ~ /main: yes/) print system_info}'| awk -F': ' '/active keymap/ {print $2}')"

language_short=""

if [[(( $language == "English (US)"))]]; then
  language_short="EN"
elif [[(( $language == "Arabic"))]]; then 
  language_short="AR"
fi

result_json="{\"language\":\"$language\",\"language-short\":\"$language_short\"}"
# echo $language
# echo $language_short
echo $result_json
