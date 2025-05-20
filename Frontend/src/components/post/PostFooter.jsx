import PostVote from './PostVote';
import PostComment from './PostComment';
import PostShare from './PostShare';

export default function PostFooter() {
    return (
        <div className="flex flex-row w-[calc(100%-64px)] h-[42px] mt-4 gap-4 mx-auto
        sm-630:w-[calc(100%-32px)]
        md-835:w-[calc(100%-48px)]
        lg:w-[calc(100%-32px)]">
            <div className="w-fit h-full px-6 rounded-full bg-gray-600/30">
                <PostVote/>
            </div>
            <div className="w-fit h-full px-[17px] cursor-pointer rounded-full bg-gray-600/30 hover:bg-gray-600/50">
                <PostComment/>
            </div>
            <div className="w-fit h-full px-[17px] cursor-pointer rounded-full bg-gray-600/30 hover:bg-gray-600/50">
                <PostShare/>
            </div>
        </div>
    )
}