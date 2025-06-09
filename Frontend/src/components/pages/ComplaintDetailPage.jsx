import { useEffect, useRef, useState } from "react";
import Footer from "../Footer";
import { ThreeGridImages } from "../GridImages";
import { ChatBubble } from "../icons/ChatBubble";
import Note from "../icons/Note";
import LeftSidebar from "../LeftSidebar";
import PostHeader from "../post/PostHeader";
import PostContent from "../post/PostContent";
import ScrollToTop from "../icons/ScrollToTop";
import AssignedUnit from "../AssignedUnit";

export default function ComplaintDetailPage({userMenus, policeMenus}) {
    const complaintDetailRef = useRef();
    const notesRef = useRef();
    const responsesRef = useRef();

    return (
        <div className="min-h-dvh flex flex-col g-blue-200 screen-831:flex-row">
            <LeftSidebar className="xl:w-sidebar-width" userMenus={userMenus} policeMenus={policeMenus}/>
            <button className="fixed flex aspect-1/1 bottom-20 right-5 p-2 rounded-full bg-white hover:bg-white-hover transition text-2xl z-999 shadow-white shadow-[0px_0px_7px_0px] cursor-pointer screen-831:hidden" onClick={
                () => {
                    window.scrollTo({top:0, behavior:'smooth'})
                }
            }>
                <ScrollToTop className="size-10 my-white my-auto fill-black g-blue-500"/>
            </button>
            
            <div className="relative flex-1 mt-15 g-blue-500 flex flex-col gap-1 mx-[3%] screen-831:mx-[5%]">
                <div className="g-blue-500 max-w-[750px] g-red-500 mx-7 lg:mx-auto lg:w-full">
                    <h1 className="font-bold text-[20px]/6.5">Kecolongan di daerah Kemanggisan akibat Kemacetan yang terlalu panjang</h1>
                    <span className="block text-[12px] font-medium text-neutral-200 leading-none mt-2"> Reported at: 02 May 2025</span>
                </div>
                {/* deskripsi lengkap (done)
                        gambar complaint (done)
                        pin status
                        tanggal report (done)
                        akses ke chat + berapa banyak chat yang belum dibaca
                        mark as a (done)
                        mark as b (done)
                        report complaint (done)
                        add notes (done)
                        add response + tanggal responded (done)
                */}
                <div className="pt-6 mt-7 flex flex-col rounded-t-3xl bg-charcoal-black shadow-neutral-600 shadow-[0px_0px_5px_1px] flex-1 lg:mx-[calc((100%-750px)/2-25px)]">
                    <div className="mx-7 mb-2 g-blue-500 max-w-[750px]">
                        <h2 className="text-red-500 font-bold text-[19px] leading-none">Need Attention!</h2>
                        <h3 className="text-[11px] font-bold mt-1 leading-none text-neutral-200">Deadline at: 05 May 2025</h3>
                    </div>
                    <AssignedUnit className="mx-7 my-3 max-w-[750px]"/>
                    
                    <div className="flex max-w-[750px] g-green-900 justify-between flex-col sm:flex-row mx-7 mb-5 mt-3 gap-6">
                        <div className="flex flex-col gap-2 mt g-blue-500 text-neutral-200 w-fit max-w-[750px]">
                            {/* lg:mx-auto lg:mt-0 lg:mb-0 2xl:mt-3 2xl:mb-4 2xl:mx-7 */}
                            <span className="text-[15px] font-bold text-neutral-200 leading-none block g-red-500">Navigation</span>
                            <div className="flex flex-col gap-4 mt-1">
                                <button className="underline hover:text-neutral-200/80 transition w-fit font-medium text-sm leading-none cursor-pointer" onClick={
                                    () => {
                                        complaintDetailRef.current.scrollIntoView({behavior:'smooth'})
                                    }
                                }>Complaint Detail</button>
                                <button className="underline hover:text-neutral-200/80 transition w-fit font-medium text-sm leading-none cursor-pointer" onClick={
                                    () => {
                                        notesRef.current.scrollIntoView({behavior:'smooth'})
                                    }
                                }>Notes</button>
                                <button className="underline hover:text-neutral-200/80 transition w-fit font-medium text-sm leading-none cursor-pointer" onClick={
                                    () => {
                                        responsesRef.current.scrollIntoView({behavior:'smooth'})
                                    }
                                }>Responses</button>
                            </div>
                        </div>
                        
                        <div className="flex flex-col gap-2 g-blue-900 text-neutral-200 max-w-[750px]">
                            {/* lg:mx-auto lg:mt-0 lg:mb-0 2xl:mt-2 2xl:mb-4 2xl:mx-7 */}
                            <span className="text-[15px] font-bold text-neutral-200 leading-none block">Action</span>
                            <div className="flex mt-1 gap-20 g-indigo-500">
                                <div className="flex flex-col gap-4">
                                    <a href="" className="underline hover:text-neutral-200/80 transition w-fit font-medium text-sm leading-none g-red-500">Mark as A</a>
                                    <a href="" className="underline hover:text-neutral-200/80 transition w-fit font-medium text-sm leading-none">Mark as B</a>
                                </div>
                                <div className="flex flex-col gap-4"> 
                                    <a href="" className="underline hover:text-neutral-200/80 transition w-fit font-medium text-sm leading-none g-red-500">Open Chat</a>
                                    <a href="" className="underline hover:text-neutral-200/80 transition w-fit font-medium text-sm leading-none">Report Complaint</a>    
                                </div>
                            </div>
                        </div>
                    </div>
                    

                    <div ref={complaintDetailRef} className="w-full h-[1px] bg-neutral-800"></div>
                    <div className="mx-7 mt-4 g-blue-500 max-w-[750px] lg:mx-auto">
                        <h2 className="text-xl font-extrabold h-fit text-neutral-200 leading-none">Complaint Detail</h2>
                        <PostContent h1Props="hidden" textProps="text-neutral-200 mt-2 text-sm" anchorProps="text-[13px]" assignedUnit="hidden"/>
                        <ThreeGridImages className="mt-3 h-80"/>
                    </div>
                    
                    <div ref={notesRef} className="w-full h-[1px] mt-6 mb-4 bg-neutral-800"></div>
                    <div className="mx-7 g-red-200 mb-5 max-w-[750px] g-red-500 lg:mx-auto 2xl:mx-7">
                        <h2 className="text-xl font-extrabold g-blue-500 h-fit text-neutral-200 leading-none">Notes</h2>
                        <div className="w-full flex flex-col g-red-500 mt-4 h-fit max-h-51 overflow-y-auto border-y-1 border-neutral-600 text-neutral-200">
                            <div className="flex flex-col gap-1 px-4 py-3">
                                <PostHeader imgProps="size-6" dateProps="hidden" rightProps="g-red-500 text-neutral-200" className="h-fit gap-2"/>
                                <span className="block text-[12px]">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem iusto assumenda ipsa ipsum dignissimos quos at exercitationem, minus possimus sunt?</span>
                            </div>
                            <div className="border-t-1 border-t-neutral-600"></div>
                            <div className="flex flex-col gap-1 px-4 py-3">
                                <PostHeader imgProps="size-6" dateProps="hidden" rightProps="g-red-500" className="h-fit gap-2"/>
                                <span className="block text-[12px]">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem iusto assumenda ipsa ipsum dignissimos quos at exercitationem, minus possimus sunt?</span>
                            </div>
                        </div>
                        <div className="relative">
                            <input type="text" placeholder="Write a note" className="w-full peer bg-charcoal-black outline-none mt-5 rounded-full pl-10 h-9 text-[11px] text-neutral-100 placeholder-shown:text-neutral-200/50 not-placeholder-shown:pl-5 not-placeholder-shown:text-neutral-200"></input>
                            <Note className="peer-placeholder-shown:block hidden absolute top-51/100 size-4.5 left-3.5 stroke-neutral-200/50 stroke-2"/>
                        </div>
                    </div>

                    <div ref={responsesRef} className="w-full h-[1px] bg-neutral-800"></div>
                    <div className="mx-7 mt-5 mb-5 max-w-[750px] lg:mx-auto">
                        <h2 className="text-xl font-extrabold g-blue-500 h-fit text-neutral-200 leading-none">Responses</h2>
                        <div className="w-full flex flex-col g-red-500 mt-4 h-fit max-h-51 overflow-y-auto border-y-1 border-neutral-600 text-neutral-200">
                            <div className="flex flex-col gap-1 px-4 py-3">
                                <PostHeader imgProps="size-6" dateProps="hidden" rightProps="g-red-500 text-neutral-200" className="h-fit gap-2"/>
                                <span className="block text-[12px]">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem iusto assumenda ipsa ipsum dignissimos quos at exercitationem, minus possimus sunt?</span>
                            </div>
                            <div className="border-t-1 border-t-neutral-600"></div>
                            <div className="flex flex-col gap-1 px-4 py-3">
                                <PostHeader imgProps="size-6" dateProps="hidden" rightProps="g-red-500" className="h-fit gap-2"/>
                                <span className="block text-[12px]">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem iusto assumenda ipsa ipsum dignissimos quos at exercitationem, minus possimus sunt?</span>
                            </div>
                        </div>
                        <div className="relative">
                            <input type="text" placeholder="Write a response" className="w-full peer bg-charcoal-black outline-none mt-5 rounded-full pl-10 h-9 text-[11px] text-neutral-100 placeholder-shown:text-neutral-200/50 not-placeholder-shown:pl-5 not-placeholder-shown:text-neutral-200"></input>
                            <ChatBubble className="peer-placeholder-shown:block hidden absolute top-51/100 size-4.5 left-3.5 stroke-neutral-200/50 stroke-2"/>
                        </div>
                    </div>
                </div>
            </div>
            <Footer userMenus={userMenus} policeMenus={policeMenus} lassName="mt-auto"/>
        </div>
    )
}

