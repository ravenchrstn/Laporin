import { useEffect, useState } from "react";
import Footer from "../Footer";
import Ban from "../icons/Ban";
import { ChatBubble, Response } from "../icons/ChatBubble";
import Ellipsis from "../icons/Ellipsis";
import Link from "../icons/Link";
import ClosedLock from "../icons/Lock";
import Pin from "../icons/Pin";
import Share from "../icons/Share";
import Trash from "../icons/Trash";
import Unpin from "../icons/Unpin";
import Searchbar from "../Searchbar";
import LeftSidebar from "../LeftSidebar";
import PostHeader from "../post/PostHeader";
import PostText from "../post/PostText";
import Chevron, { BuiltChevron } from "../icons/Chevron";
import PostFooter from "../post/PostFooter";
import Upvote from "../icons/Upvote";
import Comment from "../icons/Comment";
import Bookmark from "../icons/Bookmark";
import { LeftArrow, RightArrow } from "../icons/Arrow";
import XMark from "../icons/XMark";
import { ThreeGridImages } from "../GridImages";

export default function ManageComplaintsPage({userMenusWithProps, adminMenusWithProps}) {
    let discussionCardIds = [1, 2, 3, 4, 5, 6];

    const [activeTab, setActiveTab] = useState("Complaints");
    const [focusImage, setFocusImage] = useState(null);
    useEffect(() => {
        window.scrollTo({ top: 0, behavior: "smooth" });
    }, [activeTab])

    useEffect(() => {
        if (focusImage) document.body.style.overflow = "hidden";
        else document.body.style.overflow = "auto";

        return (() => document.body.style.overflow = "auto"); 
    }, [focusImage])
    
    
    let content = {
        "Discussions":  <DiscussionsTab discussionCardIds={discussionCardIds} setFocusImage={setFocusImage}/>,
        "Complaints":   <ComplaintTab setFocusImage={setFocusImage}/>
    };

    return (
        <div className="g-red-500 font-inter flex flex-col min-h-dvh">
            <main className="screen-831:flex g-red-500">
                <div className={`${focusImage? "flex" : "hidden"} min-h-dvh fixed top-0 left-0 w-full h-dvh g-red-500 bg-neutral-900/80 z-999`}>
                    <ImageFocusFromGrid setFocusImage={setFocusImage}/>
                    <ImageFocusComment chevronClassName="hidden md:flex"/>
                </div>
                <LeftSidebar className="xl:w-sidebar-width" userMenusWithProps={userMenusWithProps} adminMenusWithProps={adminMenusWithProps}/>
                <div className="screen-831:flex-1 min-w-0 border-r-1 border-r-neutral-600/60">
                    <TabNavigator activeTab={activeTab} setActiveTab={setActiveTab}/>
                    <Searchbar className="peer-not-placeholder-shown:hidden mt-7 mx-[7.5dvw] screen-630:mx-[12dvw] md:mx-[17.5dvw] screen-831:mx-[20dvw] lg:mx-[3dvw] 2xl:mx-[4dvw]"/>
                    {content[activeTab]}
                </div>
                <InfoPanel className="hidden flex-1 lg:flex"/>
            </main>
            <Footer userMenusWithProps={userMenusWithProps} adminMenusWithProps={adminMenusWithProps} className="mt-auto"/>
        </div>
    )
}

function TabNavigator({activeTab, setActiveTab}) {
    return (
        <div className="flex h-23 sticky top-0 justify-around bg-neutral-900 complaint-tab border-b-1 g-red-500 border-neutral-600/60 z-998">
            <button className="w-1/2 h-full flex flex-col complaint-tab-left g-purple-500 hover:bg-neutral-800 transition cursor-pointer" onClick={() => {setActiveTab("Discussions")}}>
                <span className="flex justify-center items-end w-full h-full g-blue-500 leading-none text-[14px] font-semibold pb-2.5">
                    Discussions
                </span>
                <span className={`w-24 rounded-full h-[3px] mx-auto block bg-indigo-600 ${activeTab === "Discussions"? "visible" : "invisible"}`}></span>
            </button>
            <button className="w-1/2 h-full flex flex-col complaint-tab-left g-purple-500 hover:bg-neutral-800 transition cursor-pointer" onClick={() => {setActiveTab("Complaints")}}>
                <span className="flex justify-center items-end w-full h-full g-blue-500 leading-none text-[14px] font-semibold pb-2.5">
                    Complaints
                </span>
                <span className={`w-22.5 rounded-full h-[3px] mx-auto invisible bg-indigo-600 ${activeTab === "Complaints"? "visible" : "invisible"}`}></span>
            </button>
        </div>
    )
}

function DiscussionsTab({discussionCardIds, setFocusImage}) {
    return (
        <div className="g-red-500">
            {discussionCardIds.map((item) => (
                <DiscussionCard key={item} id={item} setFocusImage={setFocusImage}/>
            ))}
        </div>
    )
}

function DiscussionCard({id, setFocusImage}) {
    const complaintMenus = [
        {
            Icon: Trash,
            Name: "Delete Complaint"
        },
        {
            Icon: Ban,
            Name: "Turn Off Officer Access"
        },
        {
            Icon: ClosedLock,
            Name: "Make Complaint Private"
        },
        {
            Icon: ChatBubble,
            Name: "Turn Off Comments"
        },
        {
            Icon: Pin,
            Name: "Pin Complaint to Top"
        },
        {
            Icon: Link,
            Name: "Copy Complaint Link"
        },
        {
            Icon: Share,
            Name: "Share Complaint"
        }
    ]

    const [additionalMenuProps, setAdditionalMenuProps] = useState();

    useEffect(() => {
        const footer = document.getElementById("footer")
        const checkbox = document.getElementById(`ellipsis-toggle-${id}`);

        checkbox.addEventListener("change", () => {
            const menuHeight = 280;
            const rect = checkbox.getBoundingClientRect();
            const windowHeight = window.innerHeight;
            setAdditionalMenuProps("top-full");
            if (rect.bottom + menuHeight + footer.offsetHeight > windowHeight) setAdditionalMenuProps("bottom-full");
        })
    }, []);
    
    return (
        <div className="flex mt-8 first:mt-7 last:mb-6 bg-neutral-800/40 rounded-2xl mx-[7.5dvw] screen-630:mx-[12dvw] md:mx-[17.5dvw] screen-831:mx-[20dvw] lg:mx-[3dvw] 2xl:mx-[4dvw]">
            {/* <div className="min-w-2 rounded-full g-red-700"></div> */}
            <div className="flex flex-col min-w-0 w-full g-yellow-600">
                    <div className="mt-3 mx-6 flex justify-between items-center g-green-200">
                        <span className="text-[19px] font-extrabold text-red-500">
                            Need Attention!
                        </span>
                        <div className="w-6 h-fit relative justify-center g-red-900">
                            <input id={`pinCheckbox-${id}`} type="checkbox" className="peer sr-only"></input>
                            <label htmlFor={`pinCheckbox-${id}`} className="block peer-checked:hidden cursor-pointer">
                                <Pin className="size-[14px] mx-auto hover:fill-white-hover"/>
                            </label>
                            <label htmlFor={`pinCheckbox-${id}`} className="hidden peer-checked:block cursor-pointer">
                                <Unpin className="size-[14px] mx-auto hover:fill-white-hover"/>
                            </label>  
                        </div>
                    </div>
                    
                <div className="mid-top flex g-slate-500 justify-between mx-6 gap-5 g-amber-400">
                    <span className="h-fit flex-1 my-auto g-red-500 truncate text-[16px]/5 font-bold g-red-300 hover:text-white-hover transition cursor-pointer">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Odit modi ad debitis vel laudantium mollitia omnis, aliquam consequuntur reprehenderit minima.
                    </span>
                    <div className="h-full p-[0.5px] mr-[2px] relative aspect-1/1 flex items-center cursor-pointer hover:bg-neutral-600/60 rounded-full transition g-sky-500">
                        <input type="checkbox" id={`ellipsis-toggle-${id}`} className="peer sr-only"/>
                        <label htmlFor={`ellipsis-toggle-${id}`} className="g-red-500 h-full cursor-pointer">
                            <Ellipsis className="h-full aspect-1/1 g-blue-200"/>
                        </label>
                        <div id={`menu-${id}`} className={`absolute right-0 rounded-lg shadow-neutral-600 shadow-[0px_0px_12px_1px] w-70 bg-charcoal-black hidden peer-checked:block z-997 ${additionalMenuProps}`}>
                            {complaintMenus.map((item) => (
                                <div key={item.Name} className="g-blue-500 flex px-5 gap-5 hover:bg-neutral-600/60 transition py-3.5 first:mt-0 first:rounded-t-lg last:rounded-b-lg">
                                    <item.Icon className="size-5 my-auto g-red-500 stroke-white"/>
                                    <span className="flex h-fit g-red-500 justify-center text-[15px] font-semibold my-auto leading-none">{item.Name}</span>
                                </div>
                            ))}
                        </div>
                    </div>
                </div>
                <div className="flex flex-col mt-1.5 g-blue-500">
                    <div className="flex g-red-200 gap-4 mx-6 text-neutral-300/70">
                        <span className="leading-none text-[11px] h-fit g-red-500 font-extralight">Deadline at: May, 20 2025</span>
                    </div>
                    <div className="flex min-w-0 pl-6 pr-5.5 mt-2 p-0.5 gap-2 hover:bg-neutral-600/60 transition cursor-pointer g-red-500 items-center">
                        <Response className="size-5 g-red-200" color="white"/>
                        <span className="flex-1 text-[12px]/3 truncate font-light h-fit mb-[1.5px] g-red-200">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Tempora voluptate nesciunt accusamus alias dignissimos, aspernatur laudantium dolores architecto. Consequatur, ut.</span>
                        <span className="font-light text-[10px]/3 h-fit text-neutral-300/60 g-red-500 mb-[3px]">Last Updated: 17.10</span>
                    </div>
                </div>
                <ThreeGridImages className="mx-6 mt-2 h-60" setFocusImage={setFocusImage}/>
                {/* <div className="bg-neutral-600 h-[1px] mt-5"></div> */}
                <div className="mid-bottom flex g-blue-500 cursor-pointer hover:bg-neutral-600/60 transition p-3 mt-5 border-1 rounded-xl border-neutral-500/70">
                    <img src="../../../assets/anya.jpg" className="w-10 rounded-full aspect-1/1 my-auto mr-4"></img>
                    <div className="flex min-w-0 w-full gap-5 g-purple-400">
                        <div className="flex flex-col min-w-0 justify-between mb-0.5 g-red-200">
                            <div id="topUserInformation" className="flex g-red-500 items-center mt-0.5 gap-2.5">
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
                        
                        <div id="rightUserComplaintInformation" className="flex flex-col ml-auto mb-0.5 justify-end g-sky-300">
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

function ImageFocusFromGrid({chevronClassName, setFocusImage}) {
    // kalau ada post, tampilin comment juga
    // ukuran aspect ratio menentukan attribute props (md:mx-[5dvw]) (md:w-full md:max-w-[900px])
    return (
        <div className="flex flex-1 justify-center relative items-center g-red-500 md:w-auto">
            <button className="absolute top-2 right-1 p-2 rounded-full g-red-500 cursor-pointer bg-neutral-800/90 hover:bg-neutral-600/50" onClick={() => {setFocusImage(false)}}>
                <XMark className="size-4"/>
            </button>
            <div className="bg-blue-500 md:mx-[5dvw]">
                <div className="absolute left-2 top-1/2 bg-neutral-900 hover:bg-neutral-800/80 cursor-pointer transition rounded-full p-2 stroke-3">
                    <LeftArrow className="size-4 g-blue-200"/>
                </div>
                <img src="../../../assets/windahhh.jpg" className="bg-blue-500 md:w-full md:max-w-[900px]"></img>
                <div className="absolute right-2 top-1/2 bg-neutral-900 hover:bg-neutral-800/80 cursor-pointer transition rounded-full p-2 stroke-3">
                    <RightArrow className="size-4 g-blue-200"/>
                </div>
            </div>
            
        </div>
    )
}

function ImageFocusComment({className}) {
    return (
        <div className={`${className} w-95 bg-charcoal-black pt-7 hidden overflow-y-auto md:block`}>
            <div className="px-6">
                <PostHeader imgProps="size-10" rightProps="justify-center text-neutral-200 flex-col" className="gap-5"/>
                <div className="flex flex-col mt-2.5 g-red-500">
                    <PostText h1Props="text-[18px] font-extrabold g-blue-200" textProps="text-[12.5px] mt-2 g-yellow-200" anchorProps="text-xs mt-[1px] g-green-400"/>
                </div>
            </div>
            
            <div className="w-full h-12 mt-4 flex justify-between g-red-500 border-y-1 border-y-neutral-600">
                <div className="flex items-center g-red-500 mx-4">
                    <div className="p-2 hover:bg-neutral-600/60 cursor-pointer transition rounded-full g-red-500">
                        <Upvote className="size-4 g-blue-500"/>
                    </div>
                    <span className="text-[11px] mt-[3px] leading-none g-green-400">12.2k</span>
                </div>

                <div className="flex items-center g-red-500 mx-4">
                    <div className="p-2 hover:bg-neutral-600/60 cursor-pointer transition rounded-full g-red-500">
                        <Comment className="size-4 g-blue-500"/>
                    </div>
                    <span className="text-[11px] mt-[3px] leading-none g-green-400">12.2k</span>
                </div>

                <div className="flex items-center g-red-500 mx-4">
                    <div className="p-2 hover:bg-neutral-600/60 cursor-pointer transition rounded-full g-red-500">
                        <Bookmark className="size-4 g-blue-500"/>
                    </div>
                    <span className="text-[11px] mt-[3px] leading-none g-green-400">12.2k</span>
                </div>

                <div className="flex items-center g-red-500 mx-4">
                    <div className="p-2 hover:bg-neutral-600/60 cursor-pointer transition rounded-full g-red-500">
                        <Share className="size-4 g-blue-500"/>
                    </div>
                </div>
            </div>
            
            <div className="h-11 mx-5 rounded-full mt-5 border-1 border-neutral-600 g-red-500">
                <input type="text" placeholder="Join the conversation" className="w-full h-full outline-none px-6 text-[13px] text-white placeholder-shown:text-neutral-500"></input>
            </div>

            <div className="flex-1 g-red-100">
                <FocusImageCommentCard/>
                <FocusImageCommentCard/>
                <FocusImageCommentCard/>
            </div>
            
        </div>
    )
}

function FocusImageCommentCard({className, dateProps, message}) {
    let commentContent = <PostText className="mt-2" h1Props="hidden" textProps="text-[13px]" anchorProps="text-[12px] mt-1.5 leading-none"/>

    return (
        <div className={`${className} flex flex-col w-full first:mt-5 g-indigo-200 px-5 pt-5 pb-6 border-t-1 border-neutral-600`}>
            <div className="flex g-orange-500 gap-3">
                {/* <div className="block bg-red-500 w-10 h-full">
                    
                </div> */}
                <img className="w-10 h-10 rounded-full overflow-hidden" src="../../assets/anya.jpg" alt="profile picture"></img>
                <div className="flex flex-col flex-1 mt-1 g-blue-500">
                    <div className="flex gap-3 items-center g-green-400">
                        <a href="" className="text-[13px] text-neutral-200 transition leading-none hover:text-neutral-300 g-red-300">Raven Christian</a>
                        <p className={`${dateProps} text-neutral-500 text-[10px] mb-[1px] h-fit leading-none g-blue-400`}>11 Des 12:26</p>
                    </div>
                    {commentContent}
                    <ThreeGridImages className="mt-2"/>
                </div>
            </div>
        </div>
    )
}

function ComplaintTab({setFocusImage}) {
    return (
        <div className="g-red-200 mt-7">
            <ComplaintCard setFocusImage={setFocusImage}/>
            <ComplaintCard setFocusImage={setFocusImage}/>
            <ComplaintCard setFocusImage={setFocusImage}/>
            <ComplaintCard setFocusImage={setFocusImage}/>
        </div>
    )
}

function ComplaintCard({setFocusImage}) {
    return (
        <div className="border-t-1 border-t-neutral-600">
            <div className="g-red-500 mt-4 mb-6 mx-[7.5dvw] screen-630:mx-[12dvw] md:mx-[17.5dvw] screen-831:mx-[20dvw] lg:mx-[3dvw] 2xl:mx-[4dvw]">
                <div className="flex flex-col g-indigo-900">
                    <PostHeader imgProps="size-10" className="g-yellow-600 gap-5" rightProps="justify-center g-blue-500 text-neutral-200 flex-col"/>
                    <span className="mt-3 text-[15px] font-bold text-red-500">
                        Need Attention!
                    </span>
                    <PostText className="g-blue-500" h1Props="text-[16px]" textProps="text-[12.5px] mt-1" anchorProps="text-[11.5px]"/>
                    <ThreeGridImages className="mt-2.5 w-full h-60 g-teal-300" setFocusImage={setFocusImage}/>
                </div>

                <div id="buttons" className="flex mt-5 justify-between g-green-500">
                    <div className="flex gap-3">
                        <div id="assign-to-me-button" className="bg-white flex items-center w-fit cursor-pointer hover:bg-neutral-200 transition rounded-full px-4 py-3">
                            <span className="text-[11px] text-charcoal-black font-bold h-fit leading-none g-yellow-900">Assign to Me</span>
                        </div>
                        <div id="assign-to-me-button" className="bg-white flex items-center w-fit cursor-pointer hover:bg-neutral-200 transition rounded-full px-4 py-3">
                            <span className="text-[11px] text-charcoal-black font-bold h-fit leading-none g-yellow-900">Assign to Team</span>
                        </div>
                    </div>
                    
                    <div id="assign-to-me-button" className="bg-red-600 w-fit flex items-center cursor-pointer hover:bg-red-700 transition rounded-full px-4 py-3">
                        <span className="text-[11px] font-medium h-fit leading-none g-yellow-900">Report Complaint</span>
                    </div>
                </div>    
            </div>
        </div>
        
    )
}

function InfoPanel({className}) {
    return (
        <div className={`${className} flex flex-col sticky justify-center top-0 h-dvh g-red-500`}>
            <div className="flex flex-col w-fit g-red-200 h-fit mx-15 g-red-100">
                <span className="title font-extrabold text-2xl leading-none">Select a Discussion</span>
                <span className="description text-neutral-400 text-[13.5px] leading-none mt-3">Choose a discussion from the existing discussions tab.</span>
                <span className="text-neutral-400 text-[13.5px]/5.5 mt-1">Or you want to form a task group and collaborate with fellow officers?</span>
            </div>
            <div className="mt-3 px-5 py-2.5 mx-15 rounded-full bg-orange-600 w-fit cursor-pointer hover:bg-orange-700 transition">
                <span className="text-[13px] font-medium block">Form a Group Task</span>
            </div>
        </div>
    )
}