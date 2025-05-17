import Home from "./buttons/Home"
import Complaint from "./buttons/Complaint"
import Search from './buttons/Search';
import Notification from "./buttons/Notification";
import Profile from "./buttons/Profile";

export default function Footer() {
    return (
        <footer className="w-full h-15 bottom-0 sticky bg-charcoal-black border-t-stone-700/75 border-t-1 flex justify-center
        lg:hidden">
            <nav className="flex justify-around w-full h-full
            sm-630:w-3/4 sm:justify-between">
                <Home/>
                <Complaint/>
                <Search/>
                <Notification/>
                <Profile/>
            </nav>
            
        </footer>
    )
}