import { useEffect, useState } from 'react';
import { SmallLeftChevron, SmallRightChevron } from '../icons/Chevron';
import PaginationDots from '../PaginationDots';
import axios from 'axios';

export default function PostImage({postImageData}) {
    const { id } = postImageData

    const [medias, setMedias] = useState([])
    const [displayedMediaIndex, setDisplayMediaIndex] = useState(null)
    const [currentMedia, setCurrentMedia] = useState(null)

    const fetchMedias = async (id) => {
        const response = await axios.get("http://localhost:3000/medias/getmediasbypostid?id=" + id)
        const medias = response.data.data
        setMedias(medias)
    }

    useEffect(() => {
        fetchMedias(id)
    }, [])

    useEffect(() => {
        if (medias?.length > 0 && displayedMediaIndex === null) {
            setDisplayMediaIndex(0);
        }
    }, [medias]);

    useEffect(() => {
        setCurrentMedia(medias[displayedMediaIndex])
        console.log("displayedMediaIndex:", displayedMediaIndex)
    }, [displayedMediaIndex]);

    if (displayedMediaIndex === null || !medias) {
        return;
    }

    // const currentMedia = medias[displayedMediaIndex];

    return (
        <div className="w-full relative mt-4 flex mx-auto g-blue-500">
            <button className={`top-1/2 absolute rounded-full p-2.5 bg-neutral-900 cursor-pointer hover:bg-neutral-800 transition ${displayedMediaIndex + 1 > 1 && medias?.length > 1 ? "block" : "hidden"}`} onClick={() => {
                if (displayedMediaIndex - 1 >= 0) setDisplayMediaIndex(prevIndex => --prevIndex)
            }}>
                <SmallLeftChevron className={`size-4.5 g-red-500 fill-white`}/>
            </button>
            <img src={`${currentMedia?.media_path}.jpg`} alt="" className="w-full"/>
            <button className={`top-1/2 right-0 absolute rounded-full p-2 bg-neutral-900 cursor-pointer hover:bg-neutral-800 transition ${displayedMediaIndex + 1 < medias?.length && medias?.length > 1 ? "block" : "hidden"}`} onClick={() => {
                if (displayedMediaIndex + 1 <= medias?.length) setDisplayMediaIndex(prevIndex => ++prevIndex)
            }}>
                <SmallRightChevron className="size-4.5 g-red-500 fill-white"/>
            </button>
            {medias?.length > 1? <PaginationDots totalDots={medias?.length} displayedMediaIndex={displayedMediaIndex}/> : ""}
        </div>
    )
}