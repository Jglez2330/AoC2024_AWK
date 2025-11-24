{
    right[NR] = $1
    if (left[$2] == ""){
        left[$2] = 1
    }else{
        left[$2] = left[$2] + 1
    }
}

END {
total=0
for(i = 1; i <= length(right); i++){
    j = right[i]
    if (left[j] != ""){
        total = total + j*left[j]
    }
}
print total
}
