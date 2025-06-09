import User from './icons/User';
import Ellipsis from './icons/Ellipsis';
import Settings from './icons/Settings';
import Upvote from './icons/Upvote';
import Bookmark from './icons/Bookmark';
import Sun from './icons/Sun';
import { RightLeftArrow } from './icons/Arrow';
import Logout from './icons/Logout';
import { useEffect, useState } from 'react';
import { userMenus, policeMenus } from './Menus.jsx';

export default function LeftSidebar({className, setPage, user}) {
    const [isEllipsisMenuOpened, setIsEllipsisMenuOpened] = useState(false);

    const [menus, setMenus] = useState([])
    
    useEffect(() => {
        // if (user.role === "user") setMenus(userMenus)
        // else if (user.role === "police") setMenus(policeMenus)

        setMenus(policeMenus)
    }, [])

    const ellipsisMenus = [
        {
            name: "Settings",
            image: <Settings className="size-5 my-auto"/>,
            onClick: () => {
                // 
            }
        },
        {
            name: "Saved",
            image: <Bookmark className="size-5 my-auto"/>
        },
        {
            name: "Upvoted",
            image: <Upvote className="size-5 my-auto"/>
        },
        {
            name: "Switch to Light Mode",
            image: <Sun className="size-5 my-auto"/>
        },
        {
            name: "Switch Accounts",
            image: <RightLeftArrow className="size-5 my-auto g-red-500"/>
        },
        {
            name: "Logout",
            image: <Logout className="size-5 my-auto"/>
        }
    ]
    
    const bottomMenus = [
        {
            name: "More",
            menu: 
                <>
                    <div className={`absolute flex flex-col text-[15px] font-semibold rounded-xl bg-charcoal-black left-4.5 bottom-110/100 w-65 h-fit shadow-neutral-600 shadow-[0px_0px_12px_1px] z-999 ${isEllipsisMenuOpened? "flex" : "hidden"}`}>
                        {ellipsisMenus.map((item) => (
                            <div key={item.name} className="flex gap-6 last:rounded-b-xl first:rounded-t-xl hover:bg-neutral-600/60 transition px-6 py-3 cursor-pointer">
                                {item.image}
                                <span>{item.name}</span>
                            </div>
                        ))}
                    </div>
                    <div className="my-auto p-1 hover:bg-neutral-600/60 mx-auto xl:my-0 cursor-pointer rounded-full xl:p-0 g-red-500">
                        <Ellipsis className="size-8 g-blue-500"/>
                    </div>
                </>    
        },
        {
            name: "Nama User",
            menu: 
                <>
                    <div className="xl:my-0 cursor-pointerrounded-full xl:p-0">
                        <User className="size-9"/>
                    </div>
                </>
        }
    ]

    return (
        
        <aside className={`${className} w-15 top-0 sticky h-dvh hidden font-inter border-r-1 border-neutral-600/60 z-999
        screen-831:block`}>
            <div className="flex flex-col w-full h-full">
                <a href="" className="w-fit text-white font-extrabold text-2xl mt-23 ml-16 hidden xl:block">Laporin</a>
                <nav className="w-full h-full flex flex-col mt-12 justify-between">
                    <ul className="flex flex-col text-white font-light text-[15px] gap-3 xl:gap-0">
                        {menus.map((item) => (
                            <li key={item.name} className="flex gap-4 transition">
                                <div className="flex w-8/10 rounded-full cursor-pointer aspect-1/1 mx-auto
                                xl:py-4 xl:pl-3 xl:pr-6 xl:w-fit xl:aspect-auto xl:ml-11 xl:gap-4
                                hover:bg-neutral-600/60 transition" onClick={() => {
                                    setPage(item.page)
                                }}>
                                    <div className="w-9 flex justify-center mx-auto">
                                        <item.image className={item.props}/>
                                    </div>
                                    <p className="items-center
                                    hidden xl:flex">
                                        {item.name}
                                    </p>
                                </div>
                            </li>
                        ))}
                    </ul>
                    <ul className="flex flex-col mb-7 gap-4 text-[13.5px] text-white font-light g-red-500 relative">
                        {bottomMenus.map((item) => (
                            <li key={item.name} className="flex">
                                <div className={`w-7/10 flex g-red-500 mx-auto transition g-indigo-200 justify-center
                                xl:hover:bg-neutral-600/60 xl:cursor-pointer xl:rounded-full
                                xl:ml-11 xl:py-2 xl:pl-3 xl:pr-6 xl:w-fit xl:aspect-auto xl:gap-4`} onClick={ () => {
                                    //  && window.innerWidth >= 1024
                                    setIsEllipsisMenuOpened(false);
                                    if (item.name === "More" && !isEllipsisMenuOpened) setIsEllipsisMenuOpened(true);}}>
                                    {item.menu}
                                    <p className="hidden g-blue-200 my-auto items-center cursor-pointer
                                    xl:flex">
                                        {item.name}
                                    </p>
                                </div>
                            </li>
                        ))}
                    </ul>
                </nav>
            </div>
        </aside>
    )
}