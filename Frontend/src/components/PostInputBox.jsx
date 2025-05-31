import TextareaAutosize from 'react-textarea-autosize';
import ImageButton from './icons/Image';
import VideoButton from './icons/Video';
import DropDown from './DropDown';

export default function PostInputBox() {
    return (
        <div className="w-full flex flex-col gap-4 mx-auto bg-background-post rounded-2xl">
            <DropDown/>
            <TextareaAutosize
            placeholder="Lagi mikirin apa?" 
            spellCheck={false}
            className="post-input-area w-full text-[14px] text-white outline-none placeholder-neutral-500 placeholder:text-[14px] px-2 resize-none react-textarea-autosize border-b-1 border-neutral-600/60 pb-4" 
            minRows={2}/>
            <div className="flex h-fit justify-between px-2">
                <div className="flex gap-7">
                    <ImageButton className="my-auto hover:stroke-white-hover"/>
                    <VideoButton className="my-auto hover:stroke-white-hover"/>
                </div>
                <div className="w-full h-full flex justify-evenly my-auto gap-8">
                    <div className="post-type my-auto flex-1 h-65/100  ">
                        
                    </div>
                    <button className="cursor-pointer text-black font-bold bg-white w-21 h-8 rounded-full text-[16px] hover:bg-gray-300 transition flex">
                        <p className="h-full flex items-center mx-auto">Post</p>
                    </button>
                </div>
            </div>
        </div>
    )
}