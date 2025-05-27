import './tailwind.css'
import HomePage from './components/pages/HomePage';
import Home from './components/icons/Home';
import Complaint from './components/icons/Complaint';
import Search from './components/icons/Search';
import Notification from './components/icons/Notification';
import Profile from './components/icons/Profile';
import ManageComplaint from './components/icons/ManageComplaint';
import ManageComplaintsPage from './components/pages/ManageComplaintsPage';
import Testing from './components/Testing';

export default function App() {
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
    // <HomePage userMenusWithProps={userMenusWithProps}
    //           adminMenusWithProps={adminMenusWithProps}/>
    <ManageComplaintsPage userMenusWithProps={userMenusWithProps}
                        adminMenusWithProps={adminMenusWithProps}/>
    // <Testing/>
    )
}