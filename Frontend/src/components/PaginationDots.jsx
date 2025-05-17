export default function PaginationDots() {
    return (
        <div className="absolute left-1/2 -translate-x-1/2 bottom-5 flex gap-[14px]">
            <div className="w-2 h-2 bg-neutral-100 rounded-full"></div>
            <div className="w-2 h-2 bg-neutral-500/50 rounded-full"></div>
            <div className="w-2 h-2 bg-neutral-500/50 rounded-full"></div>
        </div>
    )
}