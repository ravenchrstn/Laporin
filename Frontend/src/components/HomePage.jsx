import PostInputBox from './PostInputBox';
import Post from './post/Post';
import Footer from './Footer';
import LeftSidebar from './LeftSidebar';
import RightSidebar from './RightSidebar';
import Home from './buttons/Home';
import Complaint from './buttons/Complaint';
import Search from './buttons/Search';
import Notification from './buttons/Notification';
import Profile from './buttons/Profile';
import ManageComplaint from './buttons/ManageComplaint';

export default function HomePage() {
    const userMenus = [
        {   
            name: "Home",
            image: Home
        },
        {   
            name: "Complaint",
            image: Complaint
        },
        {   
            name: "Explore",
            image: Search
        },
        {   
            name: "Notifications",
            image: Notification
        },
        {   
            name: "Profile",
            image: Profile
        }
    ]

    const homeIndex = userMenus.findIndex((item) => item.name === "Home");
    const adminMenus = [
        ...userMenus.slice(0, homeIndex + 1),
        {
            name: "Manage Complaints",
            image: ManageComplaint
        },
        ...userMenus.slice(homeIndex + 1)
    ];

    const userMenuProps = {
        "Home": "h-full mx-auto",
        "Complaint": "h-full mx-auto",
        "Explore": "h-full mx-auto",
        "Notifications": "h-full mx-auto",
        "Profile": "h-full mx-auto"
    }

    const adminMenuProps = {
        "Home": "h-full mx-auto",
        "Complaint": "h-full mx-auto",
        "Manage Complaints": "h-full mx-auto",
        "Explore": "h-full mx-auto",
        "Notifications": "h-full mx-auto",
        "Profile": "h-full mx-auto"
    }

    const userMenusWithProps = userMenus.map(item => {
        return {
            ...item,
            props: userMenuProps[item.name]
        }
    });

    const adminMenusWithProps = adminMenus.map(item => {
        return {
            ...item,
            props: adminMenuProps[item.name]
        }
    });

    return (
        <div className="w-full bg-charcoal-black font-inter lg:flex mx-auto">
            <LeftSidebar userMenusWithProps={userMenusWithProps} adminMenusWithProps={adminMenusWithProps}/>
            <main className="flex flex-col py-6 mx-auto
            sm-630:w-3/4
            md-835:w-6/10
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