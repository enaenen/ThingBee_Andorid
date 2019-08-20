.class public interface abstract Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask$WordpressPostsCallback;
.super Ljava/lang/Object;
.source "WordpressPostsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/wordpress/api/WordpressPostsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WordpressPostsCallback"
.end annotation


# virtual methods
.method public abstract postsFailed()V
.end method

.method public abstract postsLoaded(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/wordpress/PostItem;",
            ">;)V"
        }
    .end annotation
.end method
