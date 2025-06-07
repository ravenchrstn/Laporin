const postRepositories = require("../repositories/postRepositories")
const randomize = require("../utils/randomize")

exports.getUpdatedPosts = async (excludedPostIds, limit) => {
    let posts = [];
    if (excludedPostIds && excludedPostIds.length > 0) [posts] = await postRepositories.getUpdatedPosts(excludedPostIds)
    else [posts] = await postRepositories.getAllPosts()
    
    // Membentuk array sebanyak limit secara random
    return randomize.randomizeArrayWithLimit(posts, limit);
}

exports.createPost = async ({user_id, text, is_edited, upvote_count, post_type, is_deleted, headline, downvote_count}) => {
    const [OkPacket] = await postRepositories.createPost({user_id, text, is_edited, upvote_count, post_type, is_deleted, headline, downvote_count})
    return OkPacket
}

exports.deletePost = async ({id}) => {
    const [OkPacket] = await postRepositories.deletePost(id)
    return OkPacket
}

exports.updatePost = async (id, {text, headline, is_edited, edited_at}) => {
    const [OkPacket] = await postRepositories.updatePost(id, {text, headline, is_edited, edited_at})
    return OkPacket
}