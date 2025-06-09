const response = ({res, statusCode, message, data, excludedIds, count})  => {
    const response = {
        statusCode,
        message,
        data,
        excludedIds,
        count
    }
    res.status(statusCode).json(Object.fromEntries(Object.entries(response).filter(([_, value]) => value != null)))
}

module.exports = response;