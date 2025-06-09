import Home from './icons/Home';
import Complaint from './icons/Complaint';
import Search from './icons/Search';
import Notification from './icons/Notification';
import Profile from './icons/Profile';
import ManageComplaint from './icons/ManageComplaint';

export const userMenus = [
    {   
        name: "Home",
        image: Home,
        props: "h-full mx-auto",
        page: "Home"
    },
    {   
        name: "Complaint",
        image: Complaint,
        props: "h-full mx-auto",
    },
    {   
        name: "Explore",
        image: Search,
        props: "h-full mx-auto"
    },
    {   
        name: "Notifications",
        image: Notification,
        props: "h-full mx-auto"
    },
    {   
        name: "Profile",
        image: Profile,
        props: "h-full mx-auto"
    }
]

export const policeMenus = [
    ...userMenus.slice(0, 1),
    {
        name: "Manage Complaints",
        image: ManageComplaint,
        props: "h-full mx-auto",
        page: "ManageComplaints"
    },
    ...userMenus.slice(1)
];