import PostContent from './PostContent';
import PostHeader from './PostHeader';
import PostImage from './PostImage';
import PostFooter from './PostFooter';
import { useEffect, useState } from 'react';
import axios from 'axios';

export default function Post({postData}) {
    const {
        id,
        headline,
        text,
        user_id,
        upvote_count,
        downvote_count,
        created_at,
        is_edited,
        edited_at
    } = postData;

    // console.log("postData dengan user_id", user_id , " adalah", postData)

    const postHeaderData = {
        user_id,
        created_at
    }

    // console.log("postHeaderData:", postHeaderData)

    const postContentData = {
        // assignedUnit: 
        headline, 
        text,
        is_edited,
        edited_at
    }

    // console.log("id aslinya itu:", id)

    const postImageData = {
        id
    }

    const [comments, setComments] = useState([])
    const fetchComments = async (post_id) => {
        const response = await axios.get(`http://localhost:3000/comments/getcommentsbypostid?id=${post_id}`)
        const comments = response.data.data
        setComments(comments)
    } 
    
    useEffect(() => {
        fetchComments(id)
    }, [])
    
    const postFooterData = {
        upvote_count,
        downvote_count,
        comment_count: comments.length
    }

    // console.log("postHeader data sebelum:", postHeaderData)

    return (
        <div className="first:mt-6 g-red-500 g-red-500 border-t-1 border-t-neutral-600/60">
            <div className="my-5 g-red-500 g-blue-200 mx-auto
            screen-630:w-65/100 screen-630:px-0
            screen-831:w-55/100
            lg:w-45/100
            xl:w-6/10
            screen-1753:w-45/100">
                <PostHeader imgProps="size-10" rightProps="g-red-500 text-neutral-200 flex-col justify-center" className="gap-5 px-5 screen-630:px-0" postHeaderData={postHeaderData}/>
                <PostContent h1Props="text-[18px] mt-6" textProps="text-[13px] mt-2" anchorProps="text-[11.5px] px-5 screen-630:px-0" className="px-5 screen-630:px-0" assignedUnitProps="px-5 mt-2 screen-630:px-0" postContentData={postContentData}/>
                <PostImage postImageData={postImageData}/>
                <PostFooter className="mt-4 px-5 screen-630:px-0" postFooterData={postFooterData}/>
            </div>
        </div>
    )
}