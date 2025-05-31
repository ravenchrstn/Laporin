export function ThreeGridImages({className, setFocusImage}) {
    return (
        <div className={`${className} grid grid-cols-2 grid-rows-2 g-amber-200 screen-630:h-90`}>
            <button className="row-span-2 bg-red-400 cursor-pointer hover:opacity-85 transition" onClick={() => {setFocusImage(true)}}>
                <img src="../../../assets/windahh.jpg" className="w-full h-full object-cover"></img>
            </button>
            <button className="g-blue-400 cursor-pointer hover:opacity-85 transition" onClick={() => {setFocusImage(true)}}>
                <img src="../../../assets/windahh.jpg" className="w-full h-full object-cover"></img>
            </button>
            <button className="col-start-2 g-green-400 cursor-pointer hover:opacity-85 transition" onClick={() => {setFocusImage(true)}}>
                <img src="../../../assets/windahh.jpg" className="w-full h-full object-cover"></img>
            </button>
        </div>
    )
}