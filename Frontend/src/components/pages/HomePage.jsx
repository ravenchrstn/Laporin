import PostInputBox from '../PostInputBox';
import Post from '../post/Post';
import Footer from '../Footer';
import LeftSidebar from '../LeftSidebar';
import RightSidebar from '../RightSidebar';
import { useEffect, useState } from 'react';
import axios from 'axios';

export default function HomePage({setPage}) {
    const [posts, setPosts] = useState([])
    const endpoint = "http://localhost:3000/posts/"
    let excludedIds = []
    const fetchPosts = async () => {
        const response = await axios.post(endpoint, {
            excludedIds,
            limit: 5
        })
        const posts = response.data.data
        setPosts(posts)
        console.log(posts)
    }

    useEffect(() => {
        fetchPosts()
    }, [])

    return (
        <div className="bg-charcoal-black font-inter screen-831:flex mx-auto">
            <LeftSidebar className="xl:w-sidebar-width" setPage={setPage}/>
            <main className="flex flex-1 flex-col mx-auto">
                <div className="mx-auto w-full g-red-200 mt-6 px-5 z-990
                screen-630:w-65/100 screen-630:px-0
                screen-831:w-55/100
                lg:w-45/100
                xl:w-6/10
                screen-1753:w-45/100">
                    <PostInputBox setPosts={setPosts}/>
                </div>
                <div>
                    {posts.map((post) => (
                        <Post postData={post}/>
                    ))}
                </div>
            </main>
            <RightSidebar className="hidden w-27/100 xl:flex"/>
            <Footer setPage={setPage}/>
        </div>
    )
} 