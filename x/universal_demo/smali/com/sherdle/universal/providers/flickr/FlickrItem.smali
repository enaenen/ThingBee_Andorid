.class public Lcom/sherdle/universal/providers/flickr/FlickrItem;
.super Lcom/sherdle/universal/providers/tumblr/TumblrItem;
.source "FlickrItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sherdle/universal/providers/flickr/FlickrItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private thumbUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/sherdle/universal/providers/flickr/FlickrItem$1;

    invoke-direct {v0}, Lcom/sherdle/universal/providers/flickr/FlickrItem$1;-><init>()V

    sput-object v0, Lcom/sherdle/universal/providers/flickr/FlickrItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/sherdle/universal/providers/tumblr/TumblrItem;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/sherdle/universal/providers/tumblr/TumblrItem;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/flickr/FlickrItem;->id:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/flickr/FlickrItem;->link:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/flickr/FlickrItem;->url:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/flickr/FlickrItem;->thumbUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/sherdle/universal/providers/tumblr/TumblrItem;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/sherdle/universal/providers/flickr/FlickrItem;->id:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/sherdle/universal/providers/flickr/FlickrItem;->link:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/sherdle/universal/providers/flickr/FlickrItem;->url:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/sherdle/universal/providers/flickr/FlickrItem;->thumbUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/sherdle/universal/providers/flickr/FlickrItem;->thumbUrl:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 39
    iget-object p2, p0, Lcom/sherdle/universal/providers/flickr/FlickrItem;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/sherdle/universal/providers/flickr/FlickrItem;->link:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-object p2, p0, Lcom/sherdle/universal/providers/flickr/FlickrItem;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object p2, p0, Lcom/sherdle/universal/providers/flickr/FlickrItem;->thumbUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
