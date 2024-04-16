function displayControl(id, action) {
    document.getElementById(id).style.display=action
}

function fillFields(postId, postContent) {
    displayControl("createPost", "block")
    
    document.getElementById("postId").value=postId
    document.getElementById("post").value=postContent
}

function deletePost(postId) {
    let ok = confirm("Are you sure you want to delete the post?")
    if (ok) {
        location.href = "../logic/timeline.php?delete=" + postId
    }
}

function redirectPost(postId) {
    location.href = "../page/post.php?id=" + postId
}

function closeModal(id, content, otherId) {
    displayControl(id, "none")
    document.getElementById(content).value=null
    for (let i = 0; i < otherId.length; i++) {
        document.getElementById(otherId[i]).value=null
    }
}

function deleteAccount(accountId){
    let ok = confirm("Are you sure you want to delete your account?")
    if (ok) {
        location.href = "../logic/account.php?delete=" + accountId
    }
}