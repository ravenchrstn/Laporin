// import { useState } from 'react'
import './tailwind.css'
import HomePage from './components/pages/HomePage';
import { useState } from 'react';
import ManageComplaintsPage from './components/pages/ManageComplaintsPage'
import ComplaintDetailPage from './components/pages/ComplaintDetailPage'

export default function App() {
    const [page, setPage] = useState("Home")
    const [user, setUser] = useState(null)

    return (
        <>
            {page === "Home" ? <HomePage setPage={setPage} user={user}/> : ""}
            {page === "ManageComplaints" ? <ManageComplaintsPage setPage={setPage}/> : ""}
            {page === "ComplaintDetail" ? <ComplaintDetailPage setPage={setPage}/> : ""}
        </>
        
        // <ManageComplaintsPage />
        // <ComplaintDetailPage userMenus={userMenus} policeMenus={policeMenus}/>
    )
}