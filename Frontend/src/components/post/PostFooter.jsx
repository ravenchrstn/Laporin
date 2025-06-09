import PostVote from './PostVote';
import PostComment from './PostComment';
import PostShare from './PostShare';

export default function PostFooter({className, postFooterData}) {
    const { upvote_count, downvote_count, comment_count } = postFooterData
    const postVoteData = {
        upvote_count,
        downvote_count
    }

    // console.log("comment_count: " + comment_count)

    return (
        <div className={`${className} flex gap-4`}>
            <div className="w-fit h-full px-5 py-3 rounded-full bg-neutral-700/40">
                <PostVote postVoteData={postVoteData}/>
            </div>
            <div className="w-fit h-full px-5 py-3 cursor-pointer rounded-full bg-neutral-700/40 hover:bg-neutral-700/60 transition">
                <PostComment comment_count={comment_count}/>
            </div>
            <div className="w-fit h-full px-5 py-3 cursor-pointer rounded-full bg-neutral-700/40 hover:bg-neutral-700/60 transition">
                <PostShare/>
            </div>
        </div>
    )
}