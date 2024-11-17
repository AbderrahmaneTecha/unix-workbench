function count_files {
    echo $(ls -1 | wc -l)
}
file_count=$(count_files)

echo "Welcome to the Guessing Game!"
echo "Try to guess the number of files in the current directory."

while true; do
    read -p "Enter your guess: " user_guess


    if ! [[ $user_guess =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
        continue
    fi

    if (( user_guess < file_count )); then
        echo "Too low!"
    elif (( user_guess > file_count )); then
        echo "Too high!"
    else
        echo "Congratulations! You guessed it!"
        break
    fi
done
