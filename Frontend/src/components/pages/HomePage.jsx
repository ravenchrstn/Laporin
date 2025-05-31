import PostInputBox from '../PostInputBox';
import Post from '../post/Post';
import Footer from '../Footer';
import LeftSidebar from '../LeftSidebar';
import RightSidebar from '../RightSidebar';

export default function HomePage({userMenusWithProps, adminMenusWithProps}) {
    return (
        <div className="bg-charcoal-black font-inter screen-831:flex mx-auto">
            <LeftSidebar userMenusWithProps={userMenusWithProps} adminMenusWithProps={adminMenusWithProps} className="xl:w-sidebar-width"/>
            <main className="flex flex-1 flex-col mx-auto">
                <div className="mx-auto w-full g-red-200 mt-6 px-5
                screen-630:w-65/100 screen-630:px-0
                screen-831:w-55/100
                lg:w-45/100
                xl:w-6/10
                screen-1753:w-45/100">
                    <PostInputBox/>
                </div>
                <div>
                    <Post/>
                    <Post/>
                </div>
            </main>
            <RightSidebar className="hidden w-27/100 xl:flex"/>
            <Footer userMenusWithProps={userMenusWithProps} adminMenusWithProps={adminMenusWithProps}/>
        </div>
    )
} 