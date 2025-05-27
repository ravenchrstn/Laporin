import Share from "../icons/Share";

export default function PostShare() {
    return (
        <div className="flex h-full g-red-500 items-center gap-1.5">
            <Share className="size-5"/>
            <p className="pt-[1px] flex text-white text-[13px] font-medium">Share</p>
        </div>
    )
}