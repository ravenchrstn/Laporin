import PostVote from './PostVote';
import PostComment from './PostComment';
import PostShare from './PostShare';

export default function PostFooter() {
    return (
        <div className="flex flex-row w-[calc(100%-64px)] h-[42px] mt-4 gap-4 mx-auto
        screen-630:w-[calc(100%-32px)]
        screen-831:w-[calc(100%-48px)]
        lg:w-[calc(100%-32px)]">
            <div className="w-fit h-full px-6 rounded-full bg-neutral-700/40">
                <PostVote/>
            </div>
            <div className="w-fit h-full px-[17px] cursor-pointer rounded-full bg-neutral-700/40 hover:bg-neutral-700/60 transition">
                <PostComment/>
            </div>
            <div className="w-fit h-full px-[17px] cursor-pointer rounded-full bg-neutral-700/40 hover:bg-neutral-700/60 transition">
                <PostShare/>
            </div>
        </div>
    )
}