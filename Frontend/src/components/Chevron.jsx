export default function Chevron({ isLeft }) {
    return (
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" className={`absolute w-7 h-7 flex justify-center items-center top-1/2 rounded-full -translate-y-1/2 cursor-pointer ${isLeft? "rotate-180 left-0" : "right-0"}`}>
            <mask id={`mask-${isLeft? "left" : "right"}`}>
                {console.log(isLeft)}
                <rect x="0" y="0" width="100%" height="100%" fill="white" />
                <path strokeLinecap="round" strokeLinejoin="round" d="m8.25 4.5 7.5 7.5-7.5 7.5" strokeWidth="4" stroke="black" transform="scale(0.6) translate(9, 8)"/>
            </mask>
            <rect width="100%" height="100%" fill="white" mask={`url(#mask-${isLeft? "left" : "right"})`} className="transition duration-100 opacity-40 hover:opacity-35"/>
        </svg>
    )
}