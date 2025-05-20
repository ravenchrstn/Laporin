import Chevron from '../Chevron';
import PaginationDots from '../PaginationDots';

export default function PostImage() {
    return (
        <div className="relative w-full mt-5 flex mx-auto bg-blue-500">
            <Chevron isLeft={true}/>
            <img src="../../assets/windahh.jpg" className=''></img>
            <Chevron isLeft={false}/>
            <PaginationDots/>
        </div>
    )
}