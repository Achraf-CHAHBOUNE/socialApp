<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Social Media Website</title>
    <link rel="stylesheet" href= static/css/styles.css>
    <link
            rel="stylesheet"
            href="https://unicons.iconscout.com/release/v2.1.6/css/unicons.css"
    />
</head>
<body>
<nav>
    <div class="container">
        <h2 class="logo">nokoSocial</h2>
        <div class="search-bar">
            <i class="uil uil-search"></i>
            <input
                    type="search"
                    placeholder="Search for creators, inspirations and proyects"
            />
        </div>
        <div class="create">
            <label for="create-post" class="btn btn-primary">Create</label>
            <div class="profile-photo">
                <img src="static/images/profile-1.jpg" alt="Profile photo" />
            </div>
        </div>
    </div>
</nav>

<!------------------------------ MAIN ------------------------------->
<main>
    <div class="container">
        <div class="left">
            <a class="profile">
                <div class="profile-photo">
                    <img src="static/images/profile-1.jpg" alt="Profile photo" />
                </div>
                <div class="handle">
                    <h4>Diana Ayi</h4>
                    <p class="text-muted">@dayi</p>
                </div>
            </a>

            <!------------------------------ SIDEBAR ------------------------------->

            <div class="sidebar">
                <a class="menu-item active">
                    <span><i class="uil uil-home"></i></span>
                    <h3>Home</h3>
                </a>
                <a class="menu-item">
                    <span><i class="uil uil-compass"></i></span>
                    <h3>Explore</h3>
                </a>
                <a class="menu-item" id="notifications">
              <span
              ><i class="uil uil-bell"
              ><small class="notification-count">9+</small></i
              ></span
              >
                    <h3>Notifications</h3>
                    <div class="notifications-popup">
                        <div>
                            <div class="profile-photo">
                                <img src="static/images/profile-2.jpg" alt="" />
                            </div>
                            <div class="notification-body">
                                <b>Andy Tomphson</b> accepted your friend request
                                <small class="text-muted">1 HOUR AGO</small>
                            </div>
                        </div>
                        <div>
                            <div class="profile-photo">
                                <img src="static/images/profile-3.jpg" alt="" />
                            </div>
                            <div class="notification-body">
                                <b>Brittany Cole</b> commented your post
                                <small class="text-muted">2 HOURS AGO</small>
                            </div>
                        </div>
                        <div>
                            <div class="profile-photo">
                                <img src="static/images/profile-4.jpg" alt="" />
                            </div>
                            <div class="notification-body">
                                <b>Sofia Verratti</b> commented a post you are tagged
                                <small class="text-muted">4 HOURS AGO</small>
                            </div>
                        </div>
                        <div>
                            <div class="profile-photo">
                                <img src="static/images/profile-5.jpg" alt="" />
                            </div>
                            <div class="notification-body">
                                <b>Claire Johnson</b> accepted your friend request
                                <small class="text-muted">18 HOURS AGO</small>
                            </div>
                        </div>
                        <div>
                            <div class="profile-photo">
                                <img src="static/images/profile-6.jpg" alt="" />
                            </div>
                            <div class="notification-body">
                                <b>Ivana Diatlov</b> liked your comment
                                <small class="text-muted">1 DAY AGO</small>
                            </div>
                        </div>
                        <div>
                            <div class="profile-photo">
                                <img src="static/images/profile-7.jpg" alt="" />
                            </div>
                            <div class="notification-body">
                                <b>Jhonatan Torres</b> liked your post
                                <small class="text-muted">1 DAY AGO</small>
                            </div>
                        </div>
                    </div>
                </a>
                <a class="menu-item" id="messages-notification">
              <span
              ><i class="uil uil-envelope-alt"
              ><small class="notification-count">6</small></i
              ></span
              >
                    <h3>Messages</h3>
                </a>
                <a class="menu-item">
                    <span><i class="uil uil-bookmark"></i></span>
                    <h3>Bookmarks</h3>
                </a>
                <a class="menu-item">
                    <span><i class="uil uil-chart-line"></i></span>
                    <h3>Analytics</h3>
                </a>
                <a class="menu-item" id="theme">
                    <span><i class="uil uil-palette"></i></span>
                    <h3>Theme</h3>
                </a>
                <a class="menu-item">
                    <span><i class="uil uil-setting"></i></span>
                    <h3>Settings</h3>
                </a>
            </div>

            <label  class="btn btn-primary">Create Post</label>
        </div>

        <!------------------------------ MIDDLE ------------------------------->

        <div class="middle">
            <div class="stories">
                <div class="story">
                    <div class="profile-photo">
                        <img src="static/images/profile-1.jpg" alt="" />
                    </div>
                    <p class="name">Your story</p>
                </div>
                <div class="story">
                    <div class="profile-photo">
                        <img src="static/images/profile-8.jpg" alt="" />
                    </div>
                    <p class="name">Alex Turner</p>
                </div>
                <div class="story">
                    <div class="profile-photo">
                        <img src="static/images/profile-9.jpg" alt="" />
                    </div>
                    <p class="name">Cris Villa</p>
                </div>
                <div class="story">
                    <div class="profile-photo">
                        <img src="static/images/profile-10.jpg" alt="" />
                    </div>
                    <p class="name">Tina Welberg</p>
                </div>
                <div class="story">
                    <div class="profile-photo">
                        <img src="static/images/profile-11.jpg" alt="" />
                    </div>
                    <p class="name">Cameron Holland</p>
                </div>
                <div class="story">
                    <div class="profile-photo">
                        <img src="static/images/profile-12.jpg" alt="" />
                    </div>
                    <p class="name">Svetlana Blaz</p>
                </div>
            </div>
            <form class="create-post">
                <div class="profile-photo">
                    <img src="static/images/profile-1.jpg" alt="" />
                </div>
                <input
                        type="text"
                        placeholder="What's on your mind, Diana?"
                        id="create-post"
                />
                <input type="submit" value="post" class="btn btn-primary" />
            </form>

            <div class="feeds">
                <div class="feed">
                    <div class="head">
                        <div class="user">
                            <div class="profile-photo">
                                <img src="static/images/profile-13.jpg" alt="" />
                            </div>
                            <div class="info">
                                <h3>Georgina Cambel</h3>
                                <small>Toronto, 19 MINUTES AGO</small>
                            </div>
                        </div>
                        <span class="edit">
                  <i class="uil uil-ellipsis-h"></i>
                </span>
                    </div>
                    <div class="photo">
                        <img src="static/images/feed-1.jpg" alt="" />
                    </div>
                    <div class="action-buttons">
                        <div class="interaccion-buttons">
                  <span>
                    <i class="uil uil-heart"></i>
                  </span>
                            <span>
                    <i class="uil uil-comment-dots"></i>
                  </span>
                            <span>
                    <i class="uil uil-share-alt"></i>
                  </span>
                        </div>
                        <div class="bookmark">
                  <span>
                    <i class="uil uil-bookmark"></i>
                  </span>
                        </div>
                    </div>
                    <div class="liked-by">
                <span>
                  <img src="static/images/profile-10.jpg" alt="" />
                </span>
                        <span>
                  <img src="static/images/profile-4.jpg" alt="" />
                </span>
                        <span>
                  <img src="static/images/profile-14.jpg" alt="" />
                </span>
                        <p>Liked by <b>Tina Welberg</b> and <b>2,323 others</b></p>
                    </div>
                    <div class="caption">
                        <p>
                            <b>Georgina Cambel</b> Lorem ipsum, dolor sit amet
                            consectetur. <span class="hashtag">#lifestyle</span>
                        </p>
                    </div>

                    <div class="comments text-muted">View all 277 comments</div>
                </div>

                <div class="feed">
                    <div class="head">
                        <div class="user">
                            <div class="profile-photo">
                                <img src="static/images/profile-15.jpg" alt="" />
                            </div>
                            <div class="info">
                                <h3>Antony Stewart</h3>
                                <small>North Carolina, 27 MINUTES AGO</small>
                            </div>
                        </div>
                        <span class="edit">
                  <i class="uil uil-ellipsis-h"></i>
                </span>
                    </div>
                    <div class="photo">
                        <img src="static/images/feed-2.jpg" alt="" />
                    </div>
                    <div class="action-buttons">
                        <div class="interaccion-buttons">
                  <span>
                    <i class="uil uil-heart"></i>
                  </span>
                            <span>
                    <i class="uil uil-comment-dots"></i>
                  </span>
                            <span>
                    <i class="uil uil-share-alt"></i>
                  </span>
                        </div>
                        <div class="bookmark">
                  <span>
                    <i class="uil uil-bookmark"></i>
                  </span>
                        </div>
                    </div>
                    <div class="liked-by">
                <span>
                  <img src="static/images/profile-5.jpg" alt="" />
                </span>
                        <span>
                  <img src="static/images/profile-9.jpg" alt="" />
                </span>
                        <span>
                  <img src="static/images/profile-11.jpg" alt="" />
                </span>
                        <p>Liked by <b>Ivana Diatlov</b> and <b>1,711 others</b></p>
                    </div>
                    <div class="caption">
                        <p>
                            <b>Antony Stewart</b> Lorem ipsum, dolor sit amet consectetur.
                            <span class="hashtag">#lifestyle</span>
                        </p>
                    </div>

                    <div class="comments text-muted">View all 124 comments</div>
                </div>

                <div class="feed">
                    <div class="head">
                        <div class="user">
                            <div class="profile-photo">
                                <img src="static/images/profile-14.jpg" alt="" />
                            </div>
                            <div class="info">
                                <h3>Ana Silva</h3>
                                <small>Madrid, 52 MINUTES AGO</small>
                            </div>
                        </div>
                        <span class="edit">
                  <i class="uil uil-ellipsis-h"></i>
                </span>
                    </div>
                    <div class="photo">
                        <img src="static/images/feed-3.jpg" alt="" />
                    </div>
                    <div class="action-buttons">
                        <div class="interaccion-buttons">
                  <span>
                    <i class="uil uil-heart"></i>
                  </span>
                            <span>
                    <i class="uil uil-comment-dots"></i>
                  </span>
                            <span>
                    <i class="uil uil-share-alt"></i>
                  </span>
                        </div>
                        <div class="bookmark">
                  <span>
                    <i class="uil uil-bookmark"></i>
                  </span>
                        </div>
                    </div>
                    <div class="liked-by">
                <span>
                  <img src="static/images/profile-4.jpg" alt="" />
                </span>
                        <span>
                  <img src="static/images/profile-2.jpg" alt="" />
                </span>
                        <span>
                  <img src="static/images/profile-20.jpg" alt="" />
                </span>
                        <p>Liked by <b>Sofia Verratti</b> and <b>1487 others</b></p>
                    </div>
                    <div class="caption">
                        <p>
                            <b>Ana Silva</b> Lorem ipsum, dolor sit amet consectetur.
                            <span class="hashtag">#lifestyle</span>
                        </p>
                    </div>

                    <div class="comments text-muted">View all 98 comments</div>
                </div>

                <div class="feed">
                    <div class="head">
                        <div class="user">
                            <div class="profile-photo">
                                <img src="static/images/profile-17.jpg" alt="" />
                            </div>
                            <div class="info">
                                <h3>Cassie Watson</h3>
                                <small>Manchester, 2 HOURS AGO</small>
                            </div>
                        </div>
                        <span class="edit">
                  <i class="uil uil-ellipsis-h"></i>
                </span>
                    </div>
                    <div class="photo">
                        <img src="static/images/feed-4.jpg" alt="" />
                    </div>
                    <div class="action-buttons">
                        <div class="interaccion-buttons">
                  <span>
                    <i class="uil uil-heart"></i>
                  </span>
                            <span>
                    <i class="uil uil-comment-dots"></i>
                  </span>
                            <span>
                    <i class="uil uil-share-alt"></i>
                  </span>
                        </div>
                        <div class="bookmark">
                  <span>
                    <i class="uil uil-bookmark"></i>
                  </span>
                        </div>
                    </div>
                    <div class="liked-by">
                <span>
                  <img src="static/images/profile-12.jpg" alt="" />
                </span>
                        <span>
                  <img src="static/images/profile-3.jpg" alt="" />
                </span>
                        <span>
                  <img src="static/images/profile-18.jpg" alt="" />
                </span>
                        <p>Liked by <b>Svetlana Blaz</b> and <b>2,451 others</b></p>
                    </div>
                    <div class="caption">
                        <p>
                            <b>Cassie Watson</b> Lorem ipsum, dolor sit amet consectetur.
                            <span class="hashtag">#lifestyle</span>
                        </p>
                    </div>

                    <div class="comments text-muted">View all 265 comments</div>
                </div>

                <div class="feed">
                    <div class="head">
                        <div class="user">
                            <div class="profile-photo">
                                <img src="static/images/profile-8.jpg" alt="" />
                            </div>
                            <div class="info">
                                <h3>Alex Turner</h3>
                                <small>Boston, 4 HOURS AGO</small>
                            </div>
                        </div>
                        <span class="edit">
                  <i class="uil uil-ellipsis-h"></i>
                </span>
                    </div>
                    <div class="photo">
                        <img src="static/images/feed-5.jpg" alt="" />
                    </div>
                    <div class="action-buttons">
                        <div class="interaccion-buttons">
                  <span>
                    <i class="uil uil-heart"></i>
                  </span>
                            <span>
                    <i class="uil uil-comment-dots"></i>
                  </span>
                            <span>
                    <i class="uil uil-share-alt"></i>
                  </span>
                        </div>
                        <div class="bookmark">
                  <span>
                    <i class="uil uil-bookmark"></i>
                  </span>
                        </div>
                    </div>
                    <div class="liked-by">
                <span>
                  <img src="static/images/profile-18.jpg" alt="" />
                </span>
                        <span>
                  <img src="static/images/profile-6.jpg" alt="" />
                </span>
                        <span>
                  <img src="static/images/profile-4.jpg" alt="" />
                </span>
                        <p>Liked by <b>Artur Kymbele</b> and <b>3,748 others</b></p>
                    </div>
                    <div class="caption">
                        <p>
                            <b>Alex Turner</b> Lorem ipsum, dolor sit amet consectetur.
                            <span class="hashtag">#lifestyle</span>
                        </p>
                    </div>

                    <div class="comments text-muted">View all 387 comments</div>
                </div>

                <div class="feed">
                    <div class="head">
                        <div class="user">
                            <div class="profile-photo">
                                <img src="static/images/profile-9.jpg" alt="" />
                            </div>
                            <div class="info">
                                <h3>Cris Villa</h3>
                                <small>New York, 8 HOURS AGO</small>
                            </div>
                        </div>
                        <span class="edit">
                  <i class="uil uil-ellipsis-h"></i>
                </span>
                    </div>
                    <div class="photo">
                        <img src="static/images/feed-6.jpg" alt="" />
                    </div>
                    <div class="action-buttons">
                        <div class="interaccion-buttons">
                  <span>
                    <i class="uil uil-heart"></i>
                  </span>
                            <span>
                    <i class="uil uil-comment-dots"></i>
                  </span>
                            <span>
                    <i class="uil uil-share-alt"></i>
                  </span>
                        </div>
                        <div class="bookmark">
                  <span>
                    <i class="uil uil-bookmark"></i>
                  </span>
                        </div>
                    </div>
                    <div class="liked-by">
                <span>
                  <img src="static/images/profile-15.jpg" alt="" />
                </span>
                        <span>
                  <img src="static/images/profile-19.jpg" alt="" />
                </span>
                        <span>
                  <img src="static/images/profile-3.jpg" alt="" />
                </span>
                        <p>Liked by <b>Antony Stewart</b> and <b>1640 others</b></p>
                    </div>
                    <div class="caption">
                        <p>
                            <b>Cris Villa</b> Lorem ipsum, dolor sit amet consectetur.
                            <span class="hashtag">#lifestyle</span>
                        </p>
                    </div>

                    <div class="comments text-muted">View all 83 comments</div>
                </div>

                <div class="feed">
                    <div class="head">
                        <div class="user">
                            <div class="profile-photo">
                                <img src="static/images/profile-19.jpg" alt="" />
                            </div>
                            <div class="info">
                                <h3>Sasha Hendricks</h3>
                                <small>Stockholm, 13 HOURS AGO</small>
                            </div>
                        </div>
                        <span class="edit">
                  <i class="uil uil-ellipsis-h"></i>
                </span>
                    </div>
                    <div class="photo">
                        <img src="static/images/feed-7.jpg" alt="" />
                    </div>
                    <div class="action-buttons">
                        <div class="interaccion-buttons">
                  <span>
                    <i class="uil uil-heart"></i>
                  </span>
                            <span>
                    <i class="uil uil-comment-dots"></i>
                  </span>
                            <span>
                    <i class="uil uil-share-alt"></i>
                  </span>
                        </div>
                        <div class="bookmark">
                  <span>
                    <i class="uil uil-bookmark"></i>
                  </span>
                        </div>
                    </div>
                    <div class="liked-by">
                <span>
                  <img src="static/images/profile-11.jpg" alt="" />
                </span>
                        <span>
                  <img src="static/images/profile-16.jpg" alt="" />
                </span>
                        <span>
                  <img src="static/images/profile-7.jpg" alt="" />
                </span>
                        <p>Liked by <b>Cameron Holland</b> and <b>2,151 others</b></p>
                    </div>
                    <div class="caption">
                        <p>
                            <b>Sasha Hendricks</b> Lorem ipsum, dolor sit amet
                            consectetur. <span class="hashtag">#lifestyle</span>
                        </p>
                    </div>

                    <div class="comments text-muted">View all 126 comments</div>
                </div>
            </div>
        </div>

        <!------------------------------ RIGHT ------------------------------->

        <div class="right">
            <div class="messages">
                <div class="heading">
                    <h4>Messages</h4>
                    <i class="uil uil-edit"></i>
                </div>
                <div class="search-bar">
                    <i class="uil uil-search"></i>
                    <input
                            type="search"
                            placeholder="Search messages"
                            id="message-search"
                    />
                </div>
                <div class="category">
                    <h6 class="active">Primary</h6>
                    <h6>General</h6>
                    <h6 class="message-request">Resquest(7)</h6>
                </div>

                <div class="message">
                    <div class="profile-photo">
                        <img src="static/images/profile-2.jpg" alt="" />
                        <div class="active"></div>
                    </div>
                    <div class="message-body">
                        <h5 class="user-name">Andy Thompson</h5>
                        <p class="text-muted">Just do it bruh</p>
                    </div>
                </div>

                <div class="message">
                    <div class="profile-photo">
                        <img src="static/images/profile-7.jpg" alt="" />
                    </div>
                    <div class="message-body">
                        <h5 class="user-name">Svetlana Blaz</h5>
                        <p class="text-muted">Received, thanks!</p>
                    </div>
                </div>

                <div class="message">
                    <div class="profile-photo">
                        <img src="static/images/profile-18.jpg" alt="" />
                    </div>
                    <div class="message-body">
                        <h5 class="user-name">Artur Kymbele</h5>
                        <p class="text-bold">2 new messages</p>
                    </div>
                </div>

                <div class="message">
                    <div class="profile-photo">
                        <img src="static/images/profile-20.jpg" alt="" />
                        <div class="active"></div>
                    </div>
                    <div class="message-body">
                        <h5 class="user-name">Edith Bozkurt</h5>
                        <p class="text-bold">Birthday tomorrow!</p>
                    </div>
                </div>

                <div class="message">
                    <div class="profile-photo">
                        <img src="static/images/profile-4.jpg" alt="" />
                    </div>
                    <div class="message-body">
                        <h5 class="user-name">Sofia Verratti</h5>
                        <p class="text-muted">Ok</p>
                    </div>
                </div>

                <div class="message">
                    <div class="profile-photo">
                        <img src="static/images/profile-3.jpg" alt="" />
                    </div>
                    <div class="message-body">
                        <h5 class="user-name">Brittany Cole</h5>
                        <p class="text-muted">Lol u right</p>
                    </div>
                </div>
            </div>
            <div class="friend-request">
                <h4>Requests</h4>
                <div class="request">
                    <div class="info">
                        <div class="profile-photo">
                            <img src="static/images/profile-5.jpg" alt="" />
                        </div>
                        <div>
                            <h5 class="user-name">Ivana Diatlov</h5>
                            <p class="text-muted">8 mutual friends</p>
                        </div>
                    </div>
                    <div class="action">
                        <button class="btn btn-primary">Accept</button>
                        <button class="btn">Decline</button>
                    </div>
                </div>

                <div class="request">
                    <div class="info">
                        <div class="profile-photo">
                            <img src="static/images/profile-8.jpg" alt="" />
                        </div>
                        <div>
                            <h5 class="user-name">Alex Turner</h5>
                            <p class="text-muted">2 mutual friends</p>
                        </div>
                    </div>
                    <div class="action">
                        <button class="btn btn-primary">Accept</button>
                        <button class="btn">Decline</button>
                    </div>
                </div>

                <div class="request">
                    <div class="info">
                        <div class="profile-photo">
                            <img src="static/images/profile-9.jpg" alt="" />
                        </div>
                        <div>
                            <h5 class="user-name">Cris Villa</h5>
                            <p class="text-muted">5 mutual friends</p>
                        </div>
                    </div>
                    <div class="action">
                        <button class="btn btn-primary">Accept</button>
                        <button class="btn">Decline</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<!------------------------------ CUSTOMIZATION ------------------------------->

<div class="customize-theme">
    <div class="card">
        <h2>Customize your view</h2>
        <p class="text-muted">Manage your font size, color and background</p>

        <div class="font-size">
            <h4>Font size</h4>
            <div>
                <h6>Aa</h6>
                <div class="choose-size">
                    <span class="font-size-1"></span>
                    <span class="font-size-2 active"></span>
                    <span class="font-size-3"></span>
                    <span class="font-size-4"></span>
                    <span class="font-size-5"></span>
                </div>
                <h3>Aa</h3>
            </div>
        </div>

        <div class="color">
            <h4>Color</h4>
            <div class="choose-color">
                <span class="color-1 active"></span>
                <span class="color-2"></span>
                <span class="color-3"></span>
                <span class="color-4"></span>
                <span class="color-5"></span>
            </div>
        </div>

        <div class="background">
            <h4>Background</h4>
            <div class="choose-bg">
                <div class="bg-1 active">
                    <span></span>
                    <h5 for="bg-1">Light</h5>
                </div>
                <div class="bg-2">
                    <span></span>
                    <h5>Dark</h5>
                </div>
                <div class="bg-3">
                    <span></span>
                    <h5 for="bg-3">Black</h5>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="static/js/in"></script>
</body>
</html>
