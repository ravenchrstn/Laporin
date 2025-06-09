import { userMenus, policeMenus } from "./Menus.jsx"

export default function Footer({className, setPage}) {
    return (
        <footer id="footer" className={`${className} w-full h-15 bottom-0 sticky bg-charcoal-black border-t-stone-700/75 border-t-1 flex justify-center
        screen-831:hidden`}>
            <nav className="flex justify-around w-full h-full cursor-pointer
            md:w-3/4 md:justify-between">
                {policeMenus.map(item => (
                    <div key={item.name} className="aspect-1/1 px-2 hover:bg-neutral-700/40 rounded-full">
                        <item.image className={item.props}/>
                    </div>
                ))}
            </nav>
        </footer>
    )
}