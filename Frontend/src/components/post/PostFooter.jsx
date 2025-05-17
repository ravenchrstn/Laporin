import PostVote from './PostVote';
import PostComment from './PostComment';
import PostShare from './PostShare';

export default function PostFooter() {
    return (
        <div className="flex flex-row w-full h-[42px] px-6 mt-4 gap-4 
        sm-630:mx-auto sm-630:px-0
        lg:px-6">
            <div className="w-fit h-full px-4 rounded-full bg-gray-600/30">
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