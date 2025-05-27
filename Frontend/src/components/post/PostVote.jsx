import Upvote from "../icons/Upvote"
import Downvote from "../icons/Downvote"

export default function PostVote() {
    return (
        <div className="flex w-full h-full gap-4 g-blue-500">
            <div className="flex my-auto g-red-500 gap-2">
                <Upvote className={"transition cursor-pointer hover:stroke-neutral-300"}/>
                <p className="pt-[1px] flex text-white text-[12px] font-medium">51.2k</p>
            </div>
            <div className="flex h-fit my-auto g-amber-200 items-center">
                <Downvote/>
            </div>        
        </div>
    )
}