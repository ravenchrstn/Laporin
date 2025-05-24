export default function Ellipsis({className}) {
    return (
        <svg viewBox="0 0 24 24" className={`${className}`} fill="white">
            <circle cx="6" cy="12" r="1.5" />
            <circle cx="12" cy="12" r="1.5" />
            <circle cx="18" cy="12" r="1.5" />
        </svg>
    )
}