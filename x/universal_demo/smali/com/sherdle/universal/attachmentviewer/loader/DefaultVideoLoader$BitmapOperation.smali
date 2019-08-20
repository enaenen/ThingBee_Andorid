.class Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader$BitmapOperation;
.super Landroid/os/AsyncTask;
.source "DefaultVideoLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader;


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader;Landroid/widget/ImageView;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader$BitmapOperation;->this$0:Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader$BitmapOperation;->imageView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    .line 76
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    .line 78
    aget-object p1, p1, v4

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 80
    :cond_0
    aget-object p1, p1, v4

    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 82
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    .line 93
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v1, v0

    .line 86
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    .line 93
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_1
    move-object p1, v0

    :cond_2
    :goto_2
    return-object p1

    :catchall_1
    move-exception p1

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_3
    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 62
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader$BitmapOperation;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader$BitmapOperation;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader$BitmapOperation;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/attachmentviewer/loader/DefaultVideoLoader$BitmapOperation;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
