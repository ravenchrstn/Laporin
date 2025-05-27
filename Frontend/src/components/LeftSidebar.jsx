import User from './icons/User';
import Ellipsis from './icons/Ellipsis';

export default function LeftSidebar({className, userMenusWithProps, adminMenusWithProps}) {
    const bottomMenus = [
        {
            name: "More",
            image: 
            <div className="bg-r">
                <div></div>
                <Ellipsis className="mx-auto size-7"/>
            </div>
        },
        {
            name: "Nama User",
            image: <User/>
        }
    ]

    return (
        <aside className={`${className} w-15 top-0 sticky h-dvh hidden font-inter border-r-1 border-neutral-600/60
        screen-831:block`}>
            <div className="flex flex-col w-full h-full">
                <a href="" className="w-fit text-white font-extrabold text-2xl mt-23 ml-16 hidden xl:block">Laporin</a>
                <nav className="w-full h-full flex flex-col mt-12 justify-between">
                    <ul className="flex flex-col text-white font-light text-[15px] gap-3 xl:gap-0">
                        {userMenusWithProps.map((item) => (
                            <li key={item.name} className="flex gap-4 transition">
                                <div className="flex w-8/10 rounded-full cursor-pointer aspect-1/1 mx-auto
                                xl:py-4 xl:pl-3 xl:pr-6 xl:w-fit xl:aspect-auto xl:ml-11 xl:gap-4
                                hover:bg-neutral-700/50 transition">
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
                    <ul className="flex flex-col mb-7 gap-2 text-[13.5px] text-white font-light">
                        {bottomMenus.map((item) => {
                            let widthSelection = "w-8/10";
                            if (item.name === bottomMenus[1].name) widthSelection = "w-9/10";
                            return (
                                <li key={item.name} className="flex">
                                    <div className={`${widthSelection} flex mx-auto justify-center cursor-pointer rounded-full aspect-1/1 g-red-500
                                    xl:ml-11 xl:py-2 xl:pl-3 xl:pr-6 xl:w-fit xl:aspect-auto xl:gap-4 hover:bg-neutral-700/50 transition`}>
                                        <div className="w-9 my-auto xl:my-0 g-green-500">
                                            {item.image}
                                        </div>
                                        <p className="hidden g-blue-200 items-center cursor-pointer
                                        xl:flex">
                                            {item.name}
                                        </p>
                                    </div>
                                </li>
                            );
                            })}
                    </ul>
                </nav>
            </div>
        </aside>
    )
}