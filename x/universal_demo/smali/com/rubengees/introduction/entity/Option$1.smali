.class final Lcom/rubengees/introduction/entity/Option$1;
.super Ljava/lang/Object;
.source "Option.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rubengees/introduction/entity/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/rubengees/introduction/entity/Option;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/rubengees/introduction/entity/Option;
    .locals 1

    .line 36
    new-instance v0, Lcom/rubengees/introduction/entity/Option;

    invoke-direct {v0, p1}, Lcom/rubengees/introduction/entity/Option;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/rubengees/introduction/entity/Option$1;->createFromParcel(Landroid/os/Parcel;)Lcom/rubengees/introduction/entity/Option;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/rubengees/introduction/entity/Option;
    .locals 0

    .line 40
    new-array p1, p1, [Lcom/rubengees/introduction/entity/Option;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/rubengees/introduction/entity/Option$1;->newArray(I)[Lcom/rubengees/introduction/entity/Option;

    move-result-object p1

    return-object p1
.end method
