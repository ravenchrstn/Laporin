import PostText from './PostText';
import PostHeader from './PostHeader';
import PostImage from './PostImage';
import PostFooter from './PostFooter';

export default function Post() {
    return (
        <div className="w-full py-5 border-t-neutral-600 border-t-1 mx-auto 
        sm-630:w-3/4
        md-835:w-65/100
        lg:mx-0 lg:w-65/100">
            <PostHeader/>
            <PostText/>
            <PostImage/>
            <PostFooter/>
        </div>
    )
}