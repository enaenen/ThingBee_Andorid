.class final Lcom/sherdle/universal/providers/tumblr/TumblrItem$1;
.super Ljava/lang/Object;
.source "TumblrItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/tumblr/TumblrItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sherdle/universal/providers/tumblr/TumblrItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sherdle/universal/providers/tumblr/TumblrItem;
    .locals 1

    .line 54
    new-instance v0, Lcom/sherdle/universal/providers/tumblr/TumblrItem;

    invoke-direct {v0, p1}, Lcom/sherdle/universal/providers/tumblr/TumblrItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/tumblr/TumblrItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sherdle/universal/providers/tumblr/TumblrItem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/sherdle/universal/providers/tumblr/TumblrItem;
    .locals 0

    .line 58
    new-array p1, p1, [Lcom/sherdle/universal/providers/tumblr/TumblrItem;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/tumblr/TumblrItem$1;->newArray(I)[Lcom/sherdle/universal/providers/tumblr/TumblrItem;

    move-result-object p1

    return-object p1
.end method
