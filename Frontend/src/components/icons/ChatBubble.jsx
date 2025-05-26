export function ChatBubble({className}) {
    return (
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" strokeWidth="2.5" stroke="currentColor" className={`${className}`}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M8.625 12a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Zm0 0H8.25m4.125 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Zm0 0H12m4.125 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Zm0 0h-.375M21 12c0 4.556-4.03 8.25-9 8.25a9.764 9.764 0 0 1-2.555-.337A5.972 5.972 0 0 1 5.41 20.97a5.969 5.969 0 0 1-.474-.065 4.48 4.48 0 0 0 .978-2.025c.09-.457-.133-.901-.467-1.226C3.93 16.178 3 14.189 3 12c0-4.556 4.03-8.25 9-8.25s9 3.694 9 8.25Z" />
        </svg>
    )
}

export function Response({className, color}) {
    return (
        <svg viewBox="0 0 24 24" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" className={`${className}`}>
            <g id="Page-1" stroke="none" stroke-width="2" fill="none" fill-rule="evenodd">
                <g id="Message">
                    <path d="M4,6 C4,4.89543 4.89543,4 6,4 L18,4 C19.1046,4 20,4.89543 20,6 L20,14 C20,15.1046 19.1046,16 18,16 L12.2071,16 C12.0745,16 11.9473,16.0527 11.8536,16.1464 L8.85355,19.1464 C8.53857,19.4614 8,19.2383 8,18.7929 L8,16.5 C8,16.2239 7.77614,16 7.5,16 L6,16 C4.89543,16 4,15.1046 4,14 L4,6 Z" id="Path" stroke={`${color}`} stroke-width="2" stroke-linecap="round"></path>
                    <line x1="8" y1="8" x2="16" y2="8" id="Path" stroke-width="2" stroke={`${color}`} stroke-linecap="round"></line>
                    <line x1="8" y1="12" x2="11" y2="12" id="Path" stroke-width="2" stroke={`${color}`} stroke-linecap="round"></line>
                </g>
            </g>
        </svg>
    )
}