export const formatDateToIndonesia = (created_at) => {
    return new Date(created_at).toLocaleString("id-ID", {
        timeZone: "Asia/Jakarta",
        day: "2-digit",
        month: "long",
        year: "numeric",
        hour: "2-digit",
        minute: "2-digit",
        hour12: false
    }).replace(".", ":").replace("pukul", "")
}