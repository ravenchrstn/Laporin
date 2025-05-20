export default function RightSidebar({className}) {
    return (
        <div className={`top-0 sticky w-sidebar-width h-dvh ${className} pt-6 mr-12`}>
            <input type="text" placeholder="Search" className="search w-full outline-0 h-12 font-extralight text-neutral-400 rounded-[8px] border-1 border-neutral-600 pl-5 appearance-none"></input>
        </div>
    )
}