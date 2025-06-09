import { useEffect, useRef, useState } from "react";
import AssignedUnit from "../AssignedUnit";

export default function PostContent({postContentData, className, h1Props, textProps, anchorProps, assignedUnitProps}) {
    const {headline, text, is_edited, edited_at} = postContentData
    // const text = "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quis tempora perferendis iusto deleniti maiores, non consequuntur reiciendis commodi quasi nisi possimus pariatur voluptatum architecto esse ipsam illo nobis similique vitae a fuga ullam! Ut cum qui facere dolorem aut eius odit consequuntur optio dolor quasi? Illo maiores eligendi fugiat velit inventore suscipit eum ratione, nisi est ex ipsum! Animi, sapiente?"

    const [showMore, setShowMore] = useState(false);
    const [isTextOverflowing, setIsTextOverflowing] = useState(false)

    const textRef = useRef()
    useEffect(() => {
        const el = textRef.current;

        if (el && el.scrollHeight > el.clientHeight) setIsTextOverflowing(true)
    })
    return (
        <>
            <AssignedUnit className={`${assignedUnitProps} g-blue-500`}/>
            <h1 className={`${className} ${h1Props} w-full overflow-hidden font-bold text-white mx-auto g-red-500`}>
                {headline}
            </h1>
            <p ref={textRef} className={`${className} ${textProps} g-yellow-400 ${showMore? "" : "max-h-19"} overflow-hidden ${showMore? "whitespace-pre-line" : "line-clamp"}`}>
                {text}
            </p>
            <button className={`${anchorProps} text-blue-500 g-red-200 w-fit cursor-pointer g-red-200 flex-col hover:text-blue-600 transition font-medium h-fit mt-1.5 ${isTextOverflowing? "block" : "hidden"}`} onClick={() => {
                if (showMore === true) setShowMore(false)
                else setShowMore(true)
            }}>
                {showMore === true? "Show Less" : "Show More"}
            </button>
        </>
    )
}