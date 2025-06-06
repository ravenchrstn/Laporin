const postRepository = require("../repositories/postRepositories")
const randomize = require("../utils/randomize")
exports.getRandomPostsWithExclude = async (excludedPostIds, limit) => {
    let rows = [];
    if (excludedPostIds && excludedPostIds.length > 0) [rows] = await postRepository.getRandomPostsWithExclude(excludedPostIds);
    
    // Membentuk array sebanyak limit secara random
    return randomize.randomizeArrayWithLimit(rows, limit);
};