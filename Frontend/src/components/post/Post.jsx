import PostText from './PostText';
import PostHeader from './PostHeader';
import PostImage from './PostImage';
import PostFooter from './PostFooter';

export default function Post() {
    return (
        <div className="w-full mt-6 bg-background-post rounded-2xl mx-auto">
            <div className="my-5 g-red-500 mx-10
            lg:mx-8">
                <PostHeader/>
                <PostText h1Props="text-[18px] mt-3" textProps="text-[13px] mt-2" anchorProps="text-[11.5px]"/>
            </div>
            <PostImage/>
            <PostFooter className="my-3 mx-5"/>
        </div>
    )
}