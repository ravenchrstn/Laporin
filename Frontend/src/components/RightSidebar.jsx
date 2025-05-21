import Comment from "./buttons/Comment"
import Search from "./buttons/Search"
import Upvote from "./buttons/Upvote"
import Chevron from "./Chevron"

export default function RightSidebar({className}) {
    return (
        <div className={`top-0 sticky w-sidebar-width h-dvh ${className} flex flex-col py-6 mr-[calc((100%-35%-50%)/3)]
        screen-1753:mr-[calc((100%-30%-50%)/3)]`}>
            <div className="relative flex">
                <input type="text" placeholder="Search..." className="peer w-full h-12 outline-0 font-normal text-neutral-400 rounded-[8px] border-2 border-neutral-600 pl-[46px] focus:border-neutral-500 
                not-placeholder-shown:px-5 not-placeholder-shown:text-white not-placeholder-shown:font-medium bg-neutral-700/30"></input>
                <Search className="absolute left-4 w-[20px] peer-not-placeholder-shown:hidden"/>
            </div>
            
            <div className="flex flex-col rounded-[14px] mt-6">
                <h1 className="text-white text-[25px] font-extrabold mt-5 mx-6">Trending Now</h1>
                <div className="mt-4 text-white bg-neutral-700/20 rounded-2xl py-6 px-3 flex flex-col">
                    <TrendingPostItem/> 
                    <TrendingPostItem/> 
                    <TrendingPostItem/>
                    <TrendingPostItem/> 
                    <TrendingPostItem/> 
                </div>
            </div>
            <footer className="h-fit text-neutral-500 text-xs mt-3 mx-6">
                <div className="flex gap-4 transition">
                    <a href="" className="hover:text-neutral-500/90">About</a>
                    <a href="" className="hover:text-neutral-500/90">Help</a>
                    <a href="" className="hover:text-neutral-500/90">Privacy Policy</a>
                    <a href="" className="hover:text-neutral-500/90">Language</a>
                </div>
                <p className="pt-2">© 2025 Laporin</p>
            </footer>
        </div>
    )
}

function TrendingPostItem() {
    return (
        <>
            <div className="group flex hover:bg-neutral-700/40 cursor-pointer p-3 rounded-2xl transition">
                <div className="flex-1 flex flex-col h-fit gap-2">
                    <a href="" className="group-hover:text-white-hover text-[15px] w-fit font-medium">Pelecehan di Sumatera Selatan</a>
                    <div className="flex gap-5 w-fit font-extralight text-[12px]">
                        <div className="flex gap-[5px]">
                            <Upvote className="w-[16px] h-[16px]"/>
                            <p className="">62.4k</p>
                        </div>
                        <div className="flex gap-[5px]">
                            <Comment className="w-[16px] h-[16px]"/>
                            <p className="">214</p>
                        </div>
                    </div>
                </div> 
                <Chevron className="group-hover:stroke-white-hover h-full"/>
            </div> 
        </>
    )
}