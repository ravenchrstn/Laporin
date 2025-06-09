import axios from "axios"
import { useEffect, useState } from "react"
import { formatDateToIndonesia } from "../../utils/formatDate"

export default function PostHeader({postHeaderData, className, dateProps, imgProps, rightProps}) {
    
    const {user_id, created_at} = postHeaderData
    // console.log("user idnya:", user_id)
    // console.log("postHeader data sesudah:", postHeaderData)
    const formattedDate = formatDateToIndonesia(created_at)
    const [user, setUser] = useState(null)

    const fetchUser = async (user_id) => {
        const response = await axios.get(`http://localhost:3000/users/getuserbyid?id=${user_id}`)
        const [user] = response.data.data
        // console.log("user yang di dapatkan: ", user)
        setUser(user)
    }

    useEffect(() => {
        fetchUser(user_id);
    }, [])

    return (
        <div className={`${className} flex w-full h-12 items-center mx-auto`}>
            <img className={`rounded-full overflow-hidden ${imgProps}`} src={`assets/user_profile_pictures/${user?.id}.jpg`} alt="profile picture"></img>
            <div className={`flex gap-0.25 h-full ${rightProps}`}>
                <a href="" className="text-[14px] font-semibold transition hover:text-neutral-300">{user?.username}</a>
                <p className={`${dateProps} text-neutral-500 text-[11px]`}>{formattedDate}</p>
            </div>
        </div>
    )
}