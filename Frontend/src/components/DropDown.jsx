import { useEffect, useState } from "react";
import { Listbox, ListboxButton, ListboxOption, ListboxOptions } from '@headlessui/react'

export default function DropDown({postType, setPostType}) {
    return (
        <div className="relative w-27 ml-2 g-blue-500">
            <Listbox value={postType} onChange={setPostType}>
                <ListboxButton className="text-white outline-0 w-full flex gap-3 items-center text-md">
                    {postType}
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth="2" stroke="white" className={`size-3 mt-[3px] ${postType === "Laporan" ? "ml-1" : ""}`}>
                        <path strokeLinecap="round" strokeLinejoin="round" d="m19.5 8.25-7.5 7.5-7.5-7.5" />
                    </svg>
                </ListboxButton>
                <ListboxOptions anchor="bottom" className="-translate-x-2 translate-y-1 overflow-y-hidden text-white text-md outline-0 rounded-md backdrop-blur-sm z-9999" modal={false}>
                    <ListboxOption value="Postingan" className={`flex w-24 text-md py-2 justify-center ${postType === "Postingan"? "hidden" : ""}`}>
                        <span className="">Postingan</span>
                    </ListboxOption>
                    <ListboxOption value="Laporan" className={`flex w-25 text-md py-2 justify-center ${postType === "Laporan"? "hidden" : ""}`}>
                        <span className="">Laporan</span>
                    </ListboxOption>
                </ListboxOptions>
            </Listbox>
        </div>
    )
}