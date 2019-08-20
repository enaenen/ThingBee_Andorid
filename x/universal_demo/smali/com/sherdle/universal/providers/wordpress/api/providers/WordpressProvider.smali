.class public interface abstract Lcom/sherdle/universal/providers/wordpress/api/providers/WordpressProvider;
.super Ljava/lang/Object;
.source "WordpressProvider.java"


# virtual methods
.method public abstract getCategories(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/wordpress/CategoryItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCategoryPosts(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRecentPosts(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;)Ljava/lang/String;
.end method

.method public abstract getSearchPosts(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTagPosts(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract parsePostsFromUrl(Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;Ljava/lang/String;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sherdle/universal/providers/wordpress/api/WordpressGetTaskInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/wordpress/PostItem;",
            ">;"
        }
    .end annotation
.end method
