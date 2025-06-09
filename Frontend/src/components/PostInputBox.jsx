import TextareaAutosize from 'react-textarea-autosize';
import ImageButton from './icons/Image';
import VideoButton from './icons/Video';
import DropDown from './DropDown';
import { useState } from 'react';
import axios from 'axios';

export default function PostInputBox({posts, setPosts}) {
    const [inputText, setInputText] = useState("")
    const [postType, setPostType] = useState("Laporan")

    const clickPost = async (text, type) => {
        if (postType === "Postingan") {
            const response = await axios.post("http://localhost:3000/posts/create", {
                user_id: 1,
                post_type: "post",
                text: inputText,
                headline: "udah gila kali ya" // dibuat default
            })
            const addedPost = response.data.data
            // console.log(addedPost)
            setPosts(prevPosts => [addedPost, ...prevPosts])
        } else if (postType === "Laporan") {
            const response = await axios.post("http://localhost:3000/complaints/create", {
                // post_id = [kalau nnti button ada buat ubah2]
                user_id: 1,
                description: inputText,
                severity: "critical", // dibuat default dlu aja
                is_anonymous: true, // dibuat default
                headline: "hayooo" // dibuat default
            })
            const addedComplaint = response.data.data
            // console.log(addedPost)
            // setPosts(prevPosts => [addedPost, ...prevPosts])
        }
    }

    // const { post_id = null, status = "pending", description, severity, is_anonymous = true, user_id, is_resolved = false, headline, message_id = null, complaint_police_unit_id = null, is_edited = 0 } = req.body

    // const { user_id, text, is_edited = 0, upvote_count = 0, post_type, is_deleted = 0, headline = "", downvote_count = 0 } = req.body

    // const fetchPosts = async () => {
    //     const response = await axios.post(endpoint, {
    //         excludedIds,
    //         limit: 5
    //     })
    //     const posts = response.data.data
    //     setPosts(posts)
    // }

    // useEffect(() => {
    //     fetchPosts()
    // }, [])

    return (
        <div className="w-full flex flex-col gap-4 mx-auto bg-background-post rounded-2xl">
            <DropDown postType={postType} setPostType={setPostType}/>
            <TextareaAutosize
            placeholder="Lagi mikirin apa?" 
            spellCheck={false}
            className="post-input-area w-full text-[14px] text-white outline-none placeholder-neutral-500 placeholder:text-[14px] px-2 resize-none react-textarea-autosize border-b-1 border-neutral-600/60 pb-4 g-red-500"
            onChange={(e) => setInputText(e.target.value)} 
            minRows={2}/>
            <div className="flex h-fit justify-between px-2">
                <div className="flex gap-7">
                    <ImageButton className="my-auto hover:stroke-white-hover"/>
                    <VideoButton className="my-auto hover:stroke-white-hover"/>
                </div>
                <div className="w-full h-full flex justify-evenly my-auto gap-8">
                    <div className="post-type my-auto flex-1 h-65/100 ">
                        
                    </div>
                    <button className="cursor-pointer text-black font-bold bg-white w-21 h-8 rounded-full text-[16px] hover:bg-gray-300 transition flex" onClick={clickPost}>
                        <p className="h-full flex items-center mx-auto">Post</p>
                    </button>
                </div>
            </div>
        </div>
    )
}