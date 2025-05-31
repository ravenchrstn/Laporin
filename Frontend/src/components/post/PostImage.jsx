import { SmallLeftChevron, SmallRightChevron } from '../icons/Chevron';
import PaginationDots from '../PaginationDots';

export default function PostImage() {
    return (
        <div className="relative w-full mt-5 flex mx-auto g-blue-500">
            <div className='top-1/2 absolute rounded-full p-2.5 bg-neutral-900 cursor-pointer hover:bg-neutral-800 transition'>
                <SmallLeftChevron className="size-4.5 g-red-500 fill-white"/>
            </div>
            <img src="../../../assets/windahh.jpg" alt="" className="w-full"/>
            <div className='top-1/2 right-0 absolute rounded-full p-2 bg-neutral-900 cursor-pointer hover:bg-neutral-800 transition'>
                <SmallRightChevron className="size-4.5 g-red-500 fill-white"/>
            </div>
            <PaginationDots/>
        </div>
    )
}