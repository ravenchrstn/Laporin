export default function PostText() {
    const text = `Eks prajurit Marinir TNI AL, Serda Satriya Arta Kumbara tlh kehilangan kewarganegaraan Indonesia. Hal itu krn ybs menjadi tentara aktif Rusia.
    Dlm video teranyar yg diunggah Indonesian Strategic & Defense Studies (ISDS), tampaknya ia tak bgt peduli dgn status kewarganegaraannya.`;
    return (
        <div className="w-[calc(100%-64px)] overflow-hidden text-[14px] text-white mt-4 mx-auto
        sm-630:w-[calc(100%-32px)]
        md-835:w-[calc(100%-48px)]
        lg:w-[calc(100%-32px)]">
            <p className="whitespace-pre-line">
                {text}
            </p>
        </div>
    )
}