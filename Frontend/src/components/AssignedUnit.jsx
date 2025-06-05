import { useEffect, useRef, useState } from "react";

export default function AssignedUnit({className}) {
    const popUpRefs = useRef([]);
    const viewOfficersRefs = useRef([]);
    const [openedUnit, setOpenedUnit] = useState(null);

    useEffect(() => {
        const handleClick = (event) => {
            const clickedOutsidePopup = popUpRefs.current.every((ref) => ref && !ref.contains(event.target))
            const clickedViewOfficersRefs = viewOfficersRefs.current.some((ref) => ref && ref.contains(event.target));
            if (clickedViewOfficersRefs) return;
            if (clickedOutsidePopup) setOpenedUnit(null);
        }

        document.addEventListener("mouseup", handleClick);
        return () => document.removeEventListener("mouseup", handleClick);
    }, []);

    const units = [
            {
                Name: "Polsek Kebon Jeruk",
                Officers: [
                    {
                        Name: "Ridwan",
                        Rank: "Polisi Biasa",
                        ProfileImageSource: "../../../assets/windahh.jpg"
                    },
                    {
                        Name: "Saputra",
                        Rank: "Ketua Polisi",
                        ProfileImageSource: "../../../assets/windahh.jpg"
                    }
                ]
            },
            {
                Name: "Polsek Ciputra",
                Officers: [
                    {
                        Name: "Saputri",
                        Rank: "Polisi Biasa",
                        ProfileImageSource: "../../../assets/windahh.jpg"
                    },
                    {
                        Name: "Susanto",
                        Rank: "Ketua Polisi",
                        ProfileImageSource: "../../../assets/windahh.jpg"
                    }
                ]
            },
            {
                Name: "Polsek Kebon Jeruk",
                Officers: [
                    {
                        Name: "Ridwan",
                        Rank: "Polisi Biasa",
                        ProfileImageSource: "../../../assets/windahh.jpg"
                    },
                    {
                        Name: "Saputra",
                        Rank: "Ketua Polisi",
                        ProfileImageSource: "../../../assets/windahh.jpg"
                    }
                ]
            },
            {
                Name: "Polsek Kebon Jeruk",
                Officers: [
                    {
                        Name: "Ridwan",
                        Rank: "Polisi Biasa",
                        ProfileImageSource: "../../../assets/windahh.jpg"
                    },
                    {
                        Name: "Saputra",
                        Rank: "Ketua Polisi",
                        ProfileImageSource: "../../../assets/windahh.jpg"
                    }
                ]
            },
        ]

    return (
        <div className={`${className} relative g-yellow-900`}>
            <span className="text-[15px] block font-bold g-green-500 leading-none">Assigned Unit</span>
            <div className="g-indigo-200 mt-2 flex flex-wrap gap-x-8 gap-y-4">
                {units.map((unit, index) => (
                    <div id={`unit-${index}`} className="relative flex g-blue-500 mt-1 gap-1.5">
                        <img src="../../../assets/humas_polri.png" className="size-8 cursor-pointer"></img>
                        <div className="flex flex-col justify-around g-red-200">
                            <button type="button" className="g-yellow-200 text-left leading-none font-medium text-[12px] text-neutral-200 cursor-pointer hover:text-neutral-300 transition">{unit.Name}</button>
                            <button ref={(el) => {viewOfficersRefs.current[index] = el}} type="button" className="text-[10px] g-green-500 text-left text-neutral-200 hover:text-neutral-300  leading-none underline cursor-pointer w-fit transition" onClick={() => {
                                if (openedUnit === index) setOpenedUnit(null);
                                else setOpenedUnit(index);
                            }}>View Officers</button>
                        </div>

                        <div ref={(el) => popUpRefs.current[index] = el} className={`absolute top-[125%] -left-[18px] w-55 rounded-lg py-1 bg-black shadow-neutral-600 shadow-[0px_0px_5px_1px] flex-col gap-y-1 flex z-995 ${openedUnit === index? "flex" : "hidden"}`}>
                            {unit.Officers.map((officer) => (
                                <>
                                    <div className="x-auto h-12 g-red-500 mx-5 my-2 g-red-500 flex gap-3">
                                        <img src="../../../assets/anya.jpg" className="size-8 my-auto rounded-full"></img>
                                        <div className="g-red-500 flex flex-col justify-end gap-2 mb-2">
                                            <span className="text-[12px] leading-none block font-medium g-blue-500">{officer.Name}</span>
                                            <span className="text-[10px] leading-none block font-normal text-neutral-400 g-blue-500">{officer.Rank}</span>
                                        </div>
                                    </div>
                                    <div className="w-9/10 mx-auto h-[1px] bg-neutral-800 last:hidden"></div>
                                </>
                            ))}
                        </div>
                    </div>
                ))}
            </div>
        </div>
    )
}