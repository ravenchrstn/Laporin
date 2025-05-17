import TextareaAutosize from 'react-textarea-autosize';
import ImageButton from './buttons/Image';
import VideoButton from './buttons/Video';
import DropDown from './DropDown';

export default function PostInputBox() {
    return (
        <div className="w-full post-input-box pt-5 flex px-7 flex-col gap-3 mx-auto
        sm-630:w-3/4 sm-630:px-0
        md-835:w-65/100
        lg:mx-0 lg:px-6">
            <DropDown/>
            <TextareaAutosize
            placeholder="Lagi mikirin apa?" 
            spellCheck={false}
            className="post-input-area w-full text-[16px] text-white outline-none placeholder-neutral-500 placeholder:text-[16px] px-2 resize-none react-textarea-autosize mt-1" 
            minRows={2}/>
            <div className="flex h-14 justify-between border-y-neutral-600 border-t-1 gap-7 px-2">
                <div className="h-full flex items-center gap-7">
                    <ImageButton/>
                    <VideoButton/>
                </div>
                <div className="w-full h-full flex justify-evenly my-auto gap-8">
                    <div className="post-type my-auto flex-1 h-65/100  ">
                        
                    </div>
                    <button className="cursor-pointer text-black font-bold bg-white w-22 h-9 rounded-full my-auto text-[16px] hover:bg-gray-300 transition-all duration-100">
                        Post
                    </button>
                </div>
            </div>
        </div>
    )
}