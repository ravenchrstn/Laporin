import styles from "../../css_pages/Login.module.css"

export default function LoginPage() {
    {/* <script src="../animation.js"></script> */}
    return (
        <div className={styles.container}>
            <div className={styles.login_box}>
                <div className={styles.laporin_title}>
                    <h1>LAPORIN</h1>
                </div>
                <div className={styles.login_title}>
                    <h2 className={styles.login_box_h2}>Login</h2>
                    <form>
                        <div className={styles.input_group}>
                            <label for="username" className={styles.input_group_label}>Username</label>
                            <input type="text" className={styles.input_group_input} id="username" placeholder="Masukkan username"></input>
                        </div>
                        <div className={styles.input_group}>
                            <label for="password" className={styles.input_group_label}>Password</label>
                            <input type="password" className={styles.input_group_input} id="password" placeholder="Masukkan password"></input>
                        </div>
                        <button type="submit" className={styles.button}>Masuk</button>
                    </form>
                </div>
            </div>
            <div className={styles.image_box}>
                <img src="../../public/assets/loginPage.png"
                    alt="Login Image" className={styles.image_box_image}></img>
            </div>
        </div>
    )
}