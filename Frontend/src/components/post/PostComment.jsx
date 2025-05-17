import Comment from "../buttons/Comment";

export default function PostComment() {
    return (
        <div className="flex h-full items-center gap-2">
            <Comment/>
            <p className="pt-[1px] flex text-white text-[12px] font-medium">200</p>
        </div>
    )
}