import Comment from "./icons/Comment"
import Search from "./icons/Search"
import Upvote from "./icons/Upvote"
import Chevron, { SmallLeftChevron, SmallRightChevron } from "./icons/Chevron"
import Searchbar from "./Searchbar"

export default function RightSidebar({className}) {
    return (
        <div className={`top-0 sticky h-dvh ${className} flex flex-col py-5 g-red-500 border-l-1 border-l-neutral-600/60`}>
            {/* mr-[calc((100%-35%-50%)/3)] */}
            {/* screen-1753:mr-[calc((100%-30%-50%)/3)] */}
            {/* <div className="relative flex">
                <input type="text" placeholder="Search..." className="peer w-full h-12 outline-0 font-normal text-neutral-400 rounded-2xl border-2 border-neutral-600 pl-[46px] focus:border-neutral-500 
                not-placeholder-shown:px-5 not-placeholder-shown:text-white not-placeholder-shown:font-medium bg-neutral-700/30"></input>
                <Search className="absolute left-4 w-[20px] peer-not-placeholder-shown:hi   dden"/>

                
            </div> */}
            <div className="px-[5%]">
                <Searchbar className=""/>
                <div className="flex flex-col rounded-[14px]">
                    <h1 className="text-white text-[24px] font-extrabold mt-5 pl-4">Trending Now</h1>
                    <div className="text-white bg-background-post rounded-2xl flex flex-col mt-2 gap-1">
                        <TrendingPostItem/> 
                        <TrendingPostItem/> 
                        <TrendingPostItem/>
                        <TrendingPostItem/> 
                        <TrendingPostItem/> 
                    </div>
                </div>
                <footer className="h-fit text-neutral-500 text-xs mt-3 ml-5">
                    <div className="flex gap-4 transition">
                        <a href="" className="hover:text-neutral-500/90">About</a>
                        <a href="" className="hover:text-neutral-500/90">Help</a>
                        <a href="" className="hover:text-neutral-500/90">Privacy Policy</a>
                        <a href="" className="hover:text-neutral-500/90">Language</a>
                    </div>
                    <p className="pt-2">© 2025 Laporin</p>
                </footer>
            </div>
        </div>
    )
}

function TrendingPostItem() {
    return (
        <>
            <div className="flex hover:bg-neutral-700/40 g-red-500 items-center cursor-pointer p-2 gap-2 rounded-2xl transition">
                <div className="flex-1 flex flex-col h-fit gap-2 pl-3">
                    <a href="" className="text-[15px] w-fit font-medium">Pelecehan di Sumatera Selatan</a>
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
                <SmallRightChevron className="size-4 fill-white"/>
            </div> 
        </>
    )
}