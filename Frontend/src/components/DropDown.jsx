import { useState } from "react";
import { Listbox, ListboxButton, ListboxOption, ListboxOptions } from '@headlessui/react'

export default function DropDown() {
    const [value, setValue] = useState("Postingan");

    return (
        <div className="relative w-27 ml-2">
            <Listbox value={value} onChange={setValue}>
                <ListboxButton className="text-white outline-0 w-full flex gap-3 items-center text-md">
                    {value}
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth="2" stroke="white" className={`size-3 mt-[3px] ${value === "Lapor" ? "ml-1" : ""}`}>
                        <path strokeLinecap="round" strokeLinejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                    </svg>
                </ListboxButton>
                <ListboxOptions anchor="bottom" className="-translate-x-2 translate-y-1 text-white text-md outline-0 rounded-md backdrop-blur-xs">
                    <ListboxOption value="Postingan" className={`w-24 my-auto text-md px-3 py-2 justify-center ${value === "Postingan"? "hidden" : ""}`}>
                        Postingan
                    </ListboxOption>
                    <ListboxOption value="Laporan" className={`w-25 my-auto text-md pl-3 py-2 justify-center ${value === "Laporan"? "hidden" : ""}`}>
                        Laporan
                    </ListboxOption>
                </ListboxOptions>
            </Listbox>
        </div>
    )
}