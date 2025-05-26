export default function PostHeader({className}) {
    return (
        <div className={`${className} flex w-full h-12 gap-5 items-center mx-auto`}>
            <img className="w-10 h-10 rounded-full overflow-hidden " src="../../assets/anya.jpg" alt="profile picture"></img>
            <div className="flex flex-col gap-0.25 h-full justify-center">
                <a href="" className="text-[14px] text-neutral-200 transition hover:text-neutral-300">Raven Christian</a>
                <p className="text-neutral-500 text-[11px]">11 Des 12:26</p>
            </div>
        </div>
    )
}