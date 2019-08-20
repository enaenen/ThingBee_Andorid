.class final Lcom/sherdle/universal/providers/flickr/FlickrItem$1;
.super Ljava/lang/Object;
.source "FlickrItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/flickr/FlickrItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sherdle/universal/providers/flickr/FlickrItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sherdle/universal/providers/flickr/FlickrItem;
    .locals 1

    .line 48
    new-instance v0, Lcom/sherdle/universal/providers/flickr/FlickrItem;

    invoke-direct {v0, p1}, Lcom/sherdle/universal/providers/flickr/FlickrItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/flickr/FlickrItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sherdle/universal/providers/flickr/FlickrItem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/sherdle/universal/providers/flickr/FlickrItem;
    .locals 0

    .line 52
    new-array p1, p1, [Lcom/sherdle/universal/providers/flickr/FlickrItem;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/flickr/FlickrItem$1;->newArray(I)[Lcom/sherdle/universal/providers/flickr/FlickrItem;

    move-result-object p1

    return-object p1
.end method
