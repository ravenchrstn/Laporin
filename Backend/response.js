const response = (res, statusCode, message, data, excludeId)  => {
    const response = {
        statusCode,
        message,
        data,
        excludeId
    }
    res.status(statusCode).json(Object.fromEntries(Object.entries(response).filter(([_, value]) => value != null)))
}

module.exports = response;