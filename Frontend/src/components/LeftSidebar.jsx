import Home from './buttons/Home';
import Complaint from './buttons/Complaint';
import Search from './buttons/Search';
import Notification from './buttons/Notification';
import Profile from './buttons/Profile';
import User from './buttons/User';
import Ellipsis from './buttons/Ellipsis';

export default function LeftSidebar() {
    const menus = [
        {   
            name: "Home",
            image: <Home/>
        },
        {   
            name: "Complaint",
            image: <Complaint/>
        },
        {   
            name: "Explore",
            image: <Search/>
        },
        {   
            name: "Notifications",
            image: <Notification/>
        },
        {   
            name: "Profile",
            image: <Profile/>
        }
    ]

    const bottomMenus = [
        {
            name: "More",
            image: <Ellipsis/>
        },
        {
            name: "Nama User",
            image: <User/>
        }
    ]
    return (
        <aside className="w-15 top-0 sticky h-dvh hidden font-inter border-r-1 border-neutral-600/60
        lg:block    
        xl:w-sidebar-width">
            <div className="flex flex-col w-full h-full">
                <a href="" className="w-fit text-white font-extrabold text-2xl mt-12 ml-16 hidden xl:block">Laporin</a>
                <nav className="w-full h-full flex flex-col mt-12 justify-between">
                    <ul className="flex flex-col text-white font-light text-[15px] gap-3 xl:gap-0">
                        {menus.map((item) => (
                            <li key={item.name} className="flex gap-4">
                                <div className="flex w-8/10 rounded-full cursor-pointer aspect-1/1 mx-auto
                                xl:py-4 xl:pl-3 xl:pr-6 xl:w-fit xl:aspect-auto xl:ml-11 xl:gap-4
                                hover:bg-neutral-700/50">
                                    <div className="w-9 flex justify-center mx-auto">
                                        {item.image}
                                    </div>
                                    <p className="items-center
                                    hidden xl:flex">
                                        {item.name}
                                    </p>
                                </div>
                                
                            </li>
                        ))}
                    </ul>
                    <ul className="flex flex-col mb-7 gap-2 text-[15px] text-white font-light">
                        {bottomMenus.map((item) => (
                            <li key={item.name} className="flex">
                                <div className="flex w-8/10 mx-auto justify-center cursor-pointer rounded-full aspect-1/1
                                xl:ml-11 xl:py-2 xl:pl-3 xl:pr-6 xl:w-fit xl:aspect-auto xl:gap-4 hover:bg-neutral-700/50">
                                    <div className="w-9 my-auto xl:my-0">
                                        {item.image}
                                    </div>
                                    <p className="hidden items-center cursor-pointer
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