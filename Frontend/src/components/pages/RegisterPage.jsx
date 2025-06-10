import styles from "../../css_pages/Register.module.css"

export default function RegisterPage({setPage}) {
    {/* <script src="../animation.js"></script> */}
    return (
        <div className={styles.container}>
            <div className={styles.register_box}>
                <h2>Register</h2>
                <div className="cursor-pointer text-black" onClick={() => {
                    // setPage("Home")
                }}>
                    Back to Home Page
                </div>
                <form>
                    <div className={styles.input_group}>
                        <label for="fullname">Nama Lengkap</label>
                        <input type="text" id="fullname" placeholder="Masukkan nama lengkap"></input>
                    </div>
                    <div className={styles.input_group}>
                        <label for="username">Username</label>
                        <input type="text" id="username" placeholder="Masukkan username"></input>
                    </div>
                    <div className={styles.input_group}>
                        <label for="email">Email</label>
                        <input type="email" id="email" placeholder="Masukkan email"></input>
                    </div>
                    <div className={styles.input_group}>
                        <label for="password">Password</label>
                        <input type="password" id="password" placeholder="Masukkan password"></input>
                    </div>
                    <button type="submit">Daftar</button>
                    <div className={styles.login_link}>
                        Sudah memiliki akun? 
                        <div className="cursor-pointer text-left text-blue-500 font-medium" onClick={
                            () => {
                                setPage("Login")
                            }
                        }>
                            Login di sini
                        </div>
                    </div>
                </form>
            </div>
            <div>
                <img className={styles.image_box} src="../../assets/registerPage.png" alt="Register Image"></img>
            </div>
        </div>
    )
}