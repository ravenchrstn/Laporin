import Footer from "../Footer";
import Ellipsis from "../icons/Ellipsis";
import Pin from "../icons/Pin";
import Unpin from "../icons/Unpin";
import Searchbar from "../Searchbar";

export default function ManageComplaintsPage({userMenusWithProps, adminMenusWithProps}) {
    return (
        <div className="g-red-500 font-inter flex flex-col min-h-dvh">
            <main className="flex-1 g-red-500">
                <ManageComplaintHeader/>
                <Searchbar className="peer-not-placeholder-shown:hidden mx-8 mt-7"/>
                <div>
                    <DiscussionCard/>
                    <DiscussionCard/>
                    <DiscussionCard/>
                    <DiscussionCard/>
                    <DiscussionCard/>
                    <DiscussionCard/>
                </div>
            </main>
            <Footer userMenusWithProps={userMenusWithProps} adminMenusWithProps={adminMenusWithProps}
                    className="mt-auto"/>
        </div>
    )
}

function ManageComplaintHeader() {
    return (
        <div className="flex h-23 sticky top-0 justify-around bg-neutral-900 complaint-tab border-b-1 g-red-500 border-neutral-600/60 z-999">
            <div className="w-1/2 h-full flex flex-col complaint-tab-left g-purple-500 hover:bg-neutral-800 transition cursor-pointer">
                <span className="flex justify-center items-end w-full h-full g-blue-500 leading-none text-[16px] font-semibold pb-2.5">
                    Discussions
                </span>
                <span className="w-24 rounded-full h-[3px] mx-auto invisible bg-blue-600"></span>
            </div>
            <div className="w-1/2 h-full flex flex-col complaint-tab-left g-purple-500 hover:bg-neutral-800 transition cursor-pointer">
                <span className="flex justify-center items-end w-full h-full g-blue-500 leading-none text-[16px] font-semibold pb-2.5">
                    Complaints
                </span>
                <span className="w-22.5 rounded-full h-[3px] mx-auto block bg-blue-600"></span>
            </div>
        </div>
    )
}

function DiscussionCard() {
    const complaintMenus = [
        {
            Icon: Pin,
            Name: "Delete Complaint"
        },
        {
            Icon: Pin,
            Name: "Turn Off Officer Access"
        },
        {
            Icon: Pin,
            Name: "Make Complaint Private"
        },
        {
            Icon: Pin,
            Name: "Turn Off Comments"
        },
        {
            Icon: Pin,
            Name: "Pin Complaint to Top"
        },
        {
            Icon: Pin,
            Name: "Copy Complaint Link"
        },
        {
            Icon: Pin,
            Name: "Share Complaint"
        }
    ]
    return (
        <div className="flex g-red-500 mt-6 mx-8 first:mt-7 last:mb-3">
            <div className="min-w-1.5 rounded-full bg-red-700"></div>
            <div className="flex flex-col w-full g-yellow-600">
                <div className="mid-top flex g-slate-500 justify-between my-2 px-4 pr-0 gap-5">
                    <span className="h-fit flex-1 my-auto g-red-500 truncate text-[16px]/4 font-bold g-amber-300 hover:text-white-hover transition cursor-pointer">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Odit modi ad debitis vel laudantium mollitia omnis, aliquam consequuntur reprehenderit minima.
                    </span>
                    <div className="p-0.5 relative aspect-1/1 flex items-center cursor-pointer hover:bg-neutral-600/60 rounded-full transition g-sky-500">
                        <Ellipsis className="size-5 mx-auto g-red-500"/>
                        <div className="absolute top-full right-0 rounded-lg shadow-neutral-600 shadow-[0px_0px_12px_1px] w-70 bg-charcoal-black z-999">
                            {complaintMenus.map((item) => (
                                <>
                                <div className="g-blue-500 flex px-5 gap-5 hover:bg-neutral-600/60 transition py-4 first:mt-0">
                                    <item.Icon className="size-4.5 my-auto g-red-500"/>
                                    <span className="flex g-red-500 justify-center text-[15px] font-semibold leading-none">{item.Name}</span>
                                </div>
                                </>
                            ))}
                        </div>
                    </div>
                </div>
                <div className="mid-bottom flex g-blue-500 cursor-pointer hover:bg-neutral-600/60 transition p-4 pr-0">
                    <img src="../../../assets/anya.jpg" className="w-10 rounded-full aspect-1/1 my-auto mr-4"></img>
                    
                    <div className="flex min-w-0 gap-5">
                        <div className="flex flex-col min-w-0 justify-between mb-0.5 g-red-200">
                            <div id="topUserInformation" className="flex g-red-500 items-center gap-2.5">
                                <div id="userName" className="text-[15px] h-fit font-semibold g-slate-700 leading-none">
                                    Anya Forger
                                </div>
                                <div id="userComplaintDate" className="text-[11px] pt-[2px] stroke-white text-neutral-300/60 h-fit g-blue-500 font-light leading-none">
                                    May, 02 2025
                                </div>
                            </div>
                            <p className="truncate text-[12px] text-neutral-200 g-indigo-200 font-extralight leading-none">
                                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Maxime numquam tempore dolore pariatur corporis laborum ratione omnis, fugit quas commodi.
                            </p> 
                        </div>
                        
                        <div id="rightUserComplaintInformation" className="flex flex-col mb-0.5 justify-between g-sky-300">
                            <div className="w-6 h-fit relative justify-center g-red-900">
                                <Pin className="size-[14px] mx-auto hover:fill-white-hover"/>
                                {/* <Unpin/> */}
                                <div className="absolute right-0 rounded-lg shadow-neutral-600 shadow-[0px_0px_12px_1px] w-60 bg-charcoal-black hidden">
                                    <span className="flex g-red-500 hover:bg-neutral-600/60 transition justify-center text-[15px] font-bold py-2.5">Pin Chat</span>
                                </div>
                            </div>
                            
                            <span className="flex mx-auto text-[12px] b-blue-200 leading-none font-bold g-red-500">
                                10
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )   
}

function Complaints() {

}