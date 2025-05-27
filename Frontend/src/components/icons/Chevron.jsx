export default function Chevron({isLeft, className}) {
    return (
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="-1 0 24 24" stroke="white" className={`${className} ${isLeft? "rotate-180" : ""}`}>
            <path strokeLinecap="round" strokeLinejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" />
        </svg>
    )
}


export function ImageWithChevrons() {
    return (
        <>
            <Chevron isLeft={true}/>
            <img src="../../assets/windahh.jpg" className=''></img>
            <Chevron isLeft={false}/>
        </>
    )
    
}

export function BuiltChevron({ className, isLeft, rectClassName }) {
    // absolute size-7 ${isLeft? "left-0" : "right-0"} top-1/2 -translate-y-1/2 
    // rect transition opacity-40 hover:opacity-35
    return (
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" className={`${className} flex justify-center items-center rounded-full cursor-pointer ${isLeft? "rotate-180" : ""}`}>
            <mask id={`mask-${isLeft? "left" : "right"}`}>
                <rect x="0" y="0" width="100%" height="100%" fill="white" />
                <path strokeLinecap="round" strokeLinejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" strokeWidth="4" fill="white" stroke="black" transform="scale(0.6) translate(9, 8)"/>
            </mask>
            <rect width="100%" height="100%" mask={`url(#mask-${isLeft? "left" : "right"})`} className={`${rectClassName}`}/>
        </svg>
    )
}