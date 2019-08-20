.class Lcom/sherdle/universal/attachmentviewer/loader/PicassoImageLoader$ImageCallback;
.super Ljava/lang/Object;
.source "PicassoImageLoader.java"

# interfaces
.implements Lcom/squareup/picasso/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/attachmentviewer/loader/PicassoImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageCallback"
.end annotation


# instance fields
.field private final callback:Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;


# direct methods
.method public constructor <init>(Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/loader/PicassoImageLoader$ImageCallback;->callback:Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/loader/PicassoImageLoader$ImageCallback;->callback:Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;

    invoke-interface {v0}, Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;->onSuccess()V

    return-void
.end method
