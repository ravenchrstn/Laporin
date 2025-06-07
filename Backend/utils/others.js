exports.getFieldsValues = (data) => {
    let fields = []
    let values = []

    Object.entries(data).forEach(([key, value]) => {
        if (value !== undefined) {
            fields.push(key)
            values.push(value)
        }
    })

    return {fields, values}
}

exports.cleanKeysValues = (data) => {
    const cleanedData = Object.fromEntries(
        Object.entries(data).filter(([_, value]) => value !== null && value !== undefined)
    )

    const keys = Object.keys(cleanedData)
    const values = Object.values(cleanedData)

    return {keys, values}
}