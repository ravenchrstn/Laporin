export default function Testing() {
    return (
        <div className="group space-y-2">
            <div className="bg-neutral-700 p-3 rounded">Item 1</div>
            <div className="bg-neutral-700 p-3 rounded">Item 2</div>
            <div className="hidden group-[:nth-of-type(3)_&]:block bg-green-600 p-3 rounded font-bold">
                Saya anak ke-3 dan jadi visible karena selector `group-[:nth-of-type(3)_&]:block`
            </div>

            <div className="bg-neutral-700 p-3 rounded">Item 4</div>
        </div>
    )
}