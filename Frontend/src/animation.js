// Fungsi untuk menangani animasi dan perpindahan halaman
function addFadeOutAndRedirect(link) {
    document.body.classList.add('fade-out');  // Menambahkan animasi fade-out

    // Menunggu 500ms (waktu animasi fade-out) lalu pindah halaman
    setTimeout(() => {
        window.location.href = link;  // Redirect ke halaman yang diinginkan
    }, 500);  // Durasi yang sama dengan animasi fade-out
}

// Menambahkan event listener pada link yang mengarah ke halaman registrasi (dari login)
document.querySelector('.register-link a')?.addEventListener('click', function (e) {
    e.preventDefault();  // Mencegah aksi default (membuka halaman langsung)
    addFadeOutAndRedirect(this.href);  // Menambahkan fade-out dan redirect
});

// Menambahkan event listener pada link yang mengarah ke halaman login (dari register)
document.querySelector('.login-link a')?.addEventListener('click', function (e) {
    e.preventDefault();  // Mencegah aksi default (membuka halaman langsung)
    addFadeOutAndRedirect(this.href);  // Menambahkan fade-out dan redirect
});
