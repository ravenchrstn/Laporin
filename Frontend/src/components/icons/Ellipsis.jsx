export default function Ellipsis({className}) {
    return (
        <svg viewBox="0 0 24 24" className={`${className} g-red-500`} fill="white">
            <circle cx="6" cy="12" r="1.5" />
            <circle cx="12" cy="12" r="1.5" />
            <circle cx="18" cy="12" r="1.5" />
        </svg>
    )
}