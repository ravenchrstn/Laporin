import PostText from './PostText';
import PostHeader from './PostHeader';
import PostImage from './PostImage';
import PostFooter from './PostFooter';

export default function Post() {
    return (
        <div className="first:mt-6 bg-background-post g-red-500 border-t-1 border-t-neutral-600/60">
            <div className="my-5 g-red-500 g-blue-200 mx-auto
            screen-630:w-65/100 screen-630:px-0
            screen-831:w-55/100
            lg:w-45/100
            xl:w-6/10
            screen-1753:w-45/100">
                <PostHeader imgProps="size-10" rightProps="g-red-500 text-neutral-200 flex-col" className="gap-5 px-5 screen-630:px-0"/>
                <PostText h1Props="text-[18px] mt-3" textProps="text-[13px] mt-2" anchorProps="text-[11.5px] px-5 screen-630:px-0" className="px-5 screen-630:px-0"/>
                <PostImage/>
                <PostFooter className="mt-4 px-5 screen-630:px-0"/>
            </div>
        </div>
    )
}