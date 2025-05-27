import Search from "./icons/Search";

export default function Searchbar({className}) {
    return (
        <div className={`${className} relative flex items-center`}>
            <input type="text" className="peer pl-[50px] pr-6 w-full h-11 rounded-3xl border-1 font-extralight   border-neutral-600 outline-none text-[13px] text-neutral-100
            not-placeholder-shown:font-light not-placeholder-shown:text-white not-placeholder-shown:px-6 bg-neutral-700/30 
            " placeholder="Search Username or Message..."></input>
            <Search className="absolute left-5.5 w-[18px] aspect-1/1 peer-not-placeholder-shown:hidden"/>
        </div>
    )
}