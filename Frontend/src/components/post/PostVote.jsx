import Upvote from "../buttons/Upvote"
import Downvote from "../buttons/Downvote"

export default function PostVote() {
    return (
        <div className="h-full flex gap-3">
            <div className="flex h-full items-center gap-2">
                <Upvote/>
                <p className="pt-[1px] flex text-white text-[12px] font-medium">51.2k</p>
            </div>
            <div className="flex h-full items-center">
                <Downvote/>
            </div>        
        </div>
    )
}