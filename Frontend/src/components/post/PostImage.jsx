import Chevron from '../Chevron';
import PaginationDots from '../PaginationDots';

export default function PostImage() {
    return (
        <div className="relative w-full mt-5 flex justify-center bg-blue-500">
            <Chevron isLeft={true}/>
            <img src="../../assets/windahh.jpg"></img>
            <Chevron isLeft={false}/>
            <PaginationDots/>
        </div>
    )
}