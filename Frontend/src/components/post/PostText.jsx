export default function PostText() {
    const text = `Eks prajurit Marinir TNI AL, Serda Satriya Arta Kumbara tlh kehilangan kewarganegaraan Indonesia. Hal itu krn ybs menjadi tentara aktif Rusia.
    Dlm video teranyar yg diunggah Indonesian Strategic & Defense Studies (ISDS), tampaknya ia tak bgt peduli dgn status kewarganegaraannya.`;
    return (
        <div className="w-full overflow-hidden text-[14px] text-white mt-4 px-6 mx-auto 
        sm-630:px-0
        lg:px-6">
            <p className="whitespace-pre-line">
                {text}
            </p>
        </div>
    )
}