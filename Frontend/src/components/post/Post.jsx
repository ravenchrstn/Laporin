import PostText from './PostText';
import PostHeader from './PostHeader';
import PostImage from './PostImage';
import PostFooter from './PostFooter';

export default function Post() {
    return (
        <div className="w-full py-5 mt-6 bg-background-post rounded-2xl mx-auto">
            <PostHeader/>
            <PostText/>
            <PostImage/>
            <PostFooter/>
        </div>
    )
}