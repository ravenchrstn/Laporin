// import { useState } from 'react'
import './tailwind.css'
import HomePage from './components/pages/HomePage';
import { useState } from 'react';
import ManageComplaintsPage from './components/pages/ManageComplaintsPage'
import ComplaintDetailPage from './components/pages/ComplaintDetailPage'
// import RegisterPage from './components/pages/RegisterPage'
// import LoginPage from './components/pages/LoginPage'

export default function App() {
    const [page, setPage] = useState("Home")
    const [user, setUser] = useState(null)

    return (
        <>
            {page === "Home" ? <HomePage setPage={setPage} user={user}/> : ""}
            {page === "ManageComplaints" ? <ManageComplaintsPage setPage={setPage}/> : ""}
            {page === "ComplaintDetail" ? <ComplaintDetailPage setPage={setPage}/> : ""}
            {/* {page === "Register" ? <RegisterPage setPage={setPage}/> : ""}
            {page === "Login" ? <LoginPage/> : ""} */}
        </>
        
        // <ManageComplaintsPage />
        // <ComplaintDetailPage userMenus={userMenus} policeMenus={policeMenus}/>
    )
}