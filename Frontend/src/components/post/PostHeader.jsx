export default function PostHeader() {
    return (
        <div className="flex w-full h-12 gap-5 items-center px-6 mx-auto 
        sm-630:px-0
        lg:px-6">
            <img className="w-10 h-10 rounded-full overflow-hidden " src="../../assets/anya.jpg" alt="profile picture"></img>
            <div className="flex flex-col gap-0.25 h-full justify-center">
                <a href="" className="text-[14px] text-neutral-200 hover:text-neutral-300">Raven Christian</a>
                <p className="text-neutral-500 text-[11px]">11 Des 12:26</p>
            </div>
        </div>
    )
}