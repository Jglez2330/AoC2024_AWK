{
    left[NR] = $1
    right[NR] = $2
}
END{
    asort(left)
    asort(right)
    total = 0
    for(i = 0; i < length(left); i++){
        if (left[i+1] > right[i+1]){
            total += left[i+1] - right[i+1]
        }else{
            total += right[i+1] - left[i+1]
        }
    }
    print total
}
