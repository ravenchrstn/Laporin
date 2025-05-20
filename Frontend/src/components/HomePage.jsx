import PostInputBox from './PostInputBox';
import Post from './post/Post';
import Footer from './Footer';
import LeftSidebar from './LeftSidebar';
import RightSidebar from './RightSidebar';

export default function HomePage() {
    return (
        <div className="w-full bg-charcoal-black font-inter lg:flex mx-auto">
            <LeftSidebar/>
            <main className="flex flex-col pt-6 mx-auto
            sm-630:w-3/4
            md-835:w-6/10
            lg:w-45/100
            xl:flex-1 xl:mx-12">
                <PostInputBox/>
                <Post/>
                <Post/>
            </main>
            <RightSidebar className="hidden xl:flex"/>
            <Footer/>
        </div>
    )
} 