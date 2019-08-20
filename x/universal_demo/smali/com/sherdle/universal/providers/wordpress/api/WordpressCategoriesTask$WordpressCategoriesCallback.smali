.class public interface abstract Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesTask$WordpressCategoriesCallback;
.super Ljava/lang/Object;
.source "WordpressCategoriesTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/wordpress/api/WordpressCategoriesTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WordpressCategoriesCallback"
.end annotation


# virtual methods
.method public abstract categoriesFailed()V
.end method

.method public abstract categoriesLoaded(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/wordpress/CategoryItem;",
            ">;)V"
        }
    .end annotation
.end method
