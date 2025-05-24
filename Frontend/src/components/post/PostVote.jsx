import Upvote from "../icons/Upvote"
import Downvote from "../icons/Downvote"

export default function PostVote() {
    return (
        <div className="h-full flex gap-3">
            <div className="flex h-full items-center gap-2">
                <Upvote className={"transition cursor-pointer hover:stroke-neutral-300"}/>
                <p className="pt-[1px] flex text-white text-[12px] font-medium">51.2k</p>
            </div>
            <div className="flex h-full items-center">
                <Downvote/>
            </div>        
        </div>
    )
}