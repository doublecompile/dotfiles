function fibseq {
    if [ "$#" -ne 2 ]; then
        echo "Sorry! You need two numbers. Try 'fibseq 1 1'"
        return 1;
    fi

    local l2
    local l1

    if [[ $1 =~ ^[0-9]+$ ]] && [[ $1 -gt -1 ]]; then
        l2=$1
    else
        echo "Argument 1 is not an integer!"
        return 1;
    fi
    if [[ $2 =~ ^[0-9]+$ ]] && [[ $2 -gt -1 ]]; then
        l1=$2
    else
        echo "Argument 2 is not an integer"
        return 1;
    fi

    echo $1
    echo $2
    for i in `seq 1 10`; do
        local now=$(expr $l2 + $l1)
        echo $now
        l2=$l1
        l1=$now
    done
}

trim() {
    local var="$*"
    var="${var#"${var%%[![:space:]]*}"}"
    var="${var%"${var##*[![:space:]]}"}"   
    printf '%s' "$var"
}
