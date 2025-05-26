import { useState } from "react";

export default function PostText({className, h1Props, textProps, anchorProps}) {
    const text = `Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolore tempora iste suscipit! Velit quae labore rerum soluta accusantium veritatis quos facere, consequatur itaque, a pariatur. Delectus ea tenetur rem at quam eius obcaecati mollitia, nihil nisi culpa. Neque doloribus eaque alias aliquam, vero illum earum ad, explicabo qui recusandae quasi quas molestiae, tempora libero nobis magnam! Similique rem velit voluptatibus veniam, fugit, maxime at dolorum, earum hic laborum eligendi ducimus corporis. Eaque aperiam, eveniet totam nemo officiis porro ipsa laborum quam delectus, vel debitis, esse eos excepturi consequuntur quidem magnam!`;
    const [showAllText, setShowAllText] = useState(false);
    return (
        <>
            <h1 className={`${className} ${h1Props} w-full overflow-hidden font-bold text-white mx-auto
            screen-630:w-[calc(100%-32px)]
            screen-831:w-[calc(100%-48px)]
            lg:w-[calc(100%-32px)] g-red-500`}>
                Kemanggisan yang indah
            </h1>
            {/* <div className={`${className} ${textProps}  bg-red-500  
            screen-630:w-[calc(100%-32px)]
            screen-831:w-[calc(100%-48px)]
            lg:w-[calc(100%-32px)]`}>
                
            </div> */}
            <p className={`${className} ${textProps} g-yellow-400 max-h-19 overflow-hidden text-white mx-auto ${showAllText? "whitespace-pre-line" : "line-clamp"}`}>
                {text}
            </p>
            <a href="" className={`${anchorProps} text-blue-500 g-red-200 flex-col hover:text-blue-600 transition font-medium h-fit`}>Show More</a>
        </>
    )
}