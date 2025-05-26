import Comment from "../icons/Comment";

export default function PostComment() {
    return (
        <div className="flex g-red-500 items-center gap-1.5">
            <Comment/>
            <p className="pt-[1px] flex text-white text-[12px] font-medium">200</p>
        </div>
    )
}