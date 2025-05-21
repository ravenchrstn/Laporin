import ImageChevron from '../ImageChevron';
import PaginationDots from '../PaginationDots';

export default function PostImage() {
    return (
        <div className="relative w-full mt-5 flex mx-auto bg-blue-500">
            <ImageChevron/>
            <PaginationDots/>
        </div>
    )
}