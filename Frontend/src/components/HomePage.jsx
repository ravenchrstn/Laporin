import PostInputBox from './PostInputBox';
import Post from './post/Post';
import Footer from './Footer';

export default function HomePage() {
    return (
        <div className="w-full bg-charcoal-black font-inter lg:flex">
            <aside className="w-13/100 top-0 sticky h-dvh hidden border-r-neutral-600 border-r-1 lg:block">
                <navbar className="w-5 h-full flex ml-auto">
                    ts
                </navbar>
            </aside>
            <main className="flex flex-col w-full">
                <PostInputBox/>
                <Post/>
                <Post/>
            </main>
            <Footer/>
        </div>
    )
} 