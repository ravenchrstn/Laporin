import Share from "../icons/Share";

export default function PostShare() {
    return (
        <div className="flex h-full items-center gap-2">
            <Share/>
            <p className="pt-[1px] flex text-white text-[13px] font-medium">Share</p>
        </div>
    )
}