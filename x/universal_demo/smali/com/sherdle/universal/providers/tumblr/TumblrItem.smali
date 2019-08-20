.class public Lcom/sherdle/universal/providers/tumblr/TumblrItem;
.super Ljava/lang/Object;
.source "TumblrItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sherdle/universal/providers/tumblr/TumblrItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected id:Ljava/lang/String;

.field protected link:Ljava/lang/String;

.field protected url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/sherdle/universal/providers/tumblr/TumblrItem$1;

    invoke-direct {v0}, Lcom/sherdle/universal/providers/tumblr/TumblrItem$1;-><init>()V

    sput-object v0, Lcom/sherdle/universal/providers/tumblr/TumblrItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/tumblr/TumblrItem;->id:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/tumblr/TumblrItem;->link:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/tumblr/TumblrItem;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/sherdle/universal/providers/tumblr/TumblrItem;->id:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/sherdle/universal/providers/tumblr/TumblrItem;->link:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/sherdle/universal/providers/tumblr/TumblrItem;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/sherdle/universal/providers/tumblr/TumblrItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/sherdle/universal/providers/tumblr/TumblrItem;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/sherdle/universal/providers/tumblr/TumblrItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 46
    iget-object p2, p0, Lcom/sherdle/universal/providers/tumblr/TumblrItem;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object p2, p0, Lcom/sherdle/universal/providers/tumblr/TumblrItem;->link:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/sherdle/universal/providers/tumblr/TumblrItem;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
