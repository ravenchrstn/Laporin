import PostInputBox from '../PostInputBox';
import Post from '../post/Post';
import Footer from '../Footer';
import LeftSidebar from '../LeftSidebar';
import RightSidebar from '../RightSidebar';

export default function HomePage({userMenusWithProps, adminMenusWithProps}) {
    return (
        <div className="bg-charcoal-black font-inter lg:flex mx-auto">
            <LeftSidebar userMenusWithProps={userMenusWithProps} adminMenusWithProps={adminMenusWithProps} className="xl:w-sidebar-width"/>
            <main className="flex flex-col py-6 mx-auto
            screen-630:w-3/4
            screen-831:w-6/10
            lg:w-45/100
            xl:w-35/100
            screen-1753:w-3/10">
                <PostInputBox/>
                <Post/>
                <Post/>
            </main>
            <RightSidebar className="hidden xl:flex"/>
            <Footer userMenusWithProps={userMenusWithProps} adminMenusWithProps={adminMenusWithProps}/>
        </div>
    )
} 