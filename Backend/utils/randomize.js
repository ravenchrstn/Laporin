function randomizeArray(array) {
    for (let i = array.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1))

        [array[i], array[j]] = [array[j], array[i]]
    }
    return array;
}

function randomizeArrayWithLimit(array, limit) {
    let newArray = [];
    // console.log("limit: " + limit)
    // console.log("array: " + array)
    while (newArray.length < limit) {
        const j = Math.floor(Math.random() * array.length);
        if (!newArray.includes(array[j])) newArray.push(array[j]);
    }
    
    
    return newArray;
}

module.exports = { randomizeArray, randomizeArrayWithLimit }