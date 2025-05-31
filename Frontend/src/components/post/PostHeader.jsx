export default function PostHeader({className, dateProps, imgProps, rightProps}) {
    return (
        <div className={`${className} flex w-full h-12 items-center mx-auto`}>
            <img className={`rounded-full overflow-hidden ${imgProps}`} src="../../assets/anya.jpg" alt="profile picture"></img>
            <div className={`flex gap-0.25 h-full ${rightProps}`}>
                <a href="" className="text-[14px] transition hover:text-neutral-300">Raven Christian</a>
                <p className={`${dateProps} text-neutral-500 text-[11px]`}>11 Des 12:26</p>
            </div>
        </div>
    )
}