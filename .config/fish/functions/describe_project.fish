function describe_project --description 'Describe pwd project for AI'
  set lang $argv[1]
  echo "$lang"
  tree --gitignore
  find (pwd) -type f -name "*.$lang" -exec fish -c 'echo (realpath {}); echo "```$lang"; cat {}; echo "```"' \;
end
