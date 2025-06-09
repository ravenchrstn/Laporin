export default function PaginationDots({totalDots, displayedMediaIndex}) {
    return (
        <div className="absolute left-1/2 -translate-x-1/2 bottom-5 flex gap-[14px]">
            {[...Array(totalDots)].map((_, index) => {
                return (
                    <div key={index} className={`w-2 h-2 rounded-full ${index === displayedMediaIndex? "bg-neutral-100" : "bg-neutral-500/50"}`}></div>
                )
            })}
        </div>
    )
}