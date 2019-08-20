.class public Lcom/rubengees/introduction/entity/Option;
.super Ljava/lang/Object;
.source "Option.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/rubengees/introduction/entity/Option;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isActivated:Z

.field private position:Ljava/lang/Integer;

.field private title:Ljava/lang/String;

.field private titleResource:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/rubengees/introduction/entity/Option$1;

    invoke-direct {v0}, Lcom/rubengees/introduction/entity/Option$1;-><init>()V

    sput-object v0, Lcom/rubengees/introduction/entity/Option;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/rubengees/introduction/entity/Option;->titleResource:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/rubengees/introduction/entity/Option;->isActivated:Z

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/rubengees/introduction/entity/Option;->titleResource:Ljava/lang/Integer;

    .line 81
    iput-boolean p2, p0, Lcom/rubengees/introduction/entity/Option;->isActivated:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rubengees/introduction/entity/Option;->title:Ljava/lang/String;

    .line 86
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/rubengees/introduction/entity/Option;->titleResource:Ljava/lang/Integer;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/rubengees/introduction/entity/Option;->isActivated:Z

    .line 88
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, p0, Lcom/rubengees/introduction/entity/Option;->position:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Option;->title:Ljava/lang/String;

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/rubengees/introduction/entity/Option;->isActivated:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Option;->title:Ljava/lang/String;

    .line 63
    iput-boolean p2, p0, Lcom/rubengees/introduction/entity/Option;->isActivated:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_4

    .line 120
    :cond_1
    check-cast p1, Lcom/rubengees/introduction/entity/Option;

    .line 122
    iget-boolean v2, p0, Lcom/rubengees/introduction/entity/Option;->isActivated:Z

    iget-boolean v3, p1, Lcom/rubengees/introduction/entity/Option;->isActivated:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 123
    :cond_2
    iget-object v2, p0, Lcom/rubengees/introduction/entity/Option;->title:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/rubengees/introduction/entity/Option;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/rubengees/introduction/entity/Option;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/rubengees/introduction/entity/Option;->title:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 124
    :cond_4
    iget-object v2, p0, Lcom/rubengees/introduction/entity/Option;->titleResource:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/rubengees/introduction/entity/Option;->titleResource:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/rubengees/introduction/entity/Option;->titleResource:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lcom/rubengees/introduction/entity/Option;->titleResource:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 126
    :cond_6
    iget-object v2, p0, Lcom/rubengees/introduction/entity/Option;->position:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/rubengees/introduction/entity/Option;->position:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/rubengees/introduction/entity/Option;->position:Ljava/lang/Integer;

    invoke-virtual {v2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_7
    iget-object p1, p1, Lcom/rubengees/introduction/entity/Option;->position:Ljava/lang/Integer;

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v0, 0x0

    :cond_9
    :goto_3
    return v0

    :cond_a
    :goto_4
    return v1
.end method

.method public getPosition()I
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/rubengees/introduction/entity/Option;->position:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/rubengees/introduction/exception/ConfigurationException;

    invoke-direct {v0}, Lcom/rubengees/introduction/exception/ConfigurationException;-><init>()V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/rubengees/introduction/entity/Option;->position:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/rubengees/introduction/entity/Option;->title:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/rubengees/introduction/entity/Option;->titleResource:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lcom/rubengees/introduction/exception/ConfigurationException;

    invoke-direct {v0}, Lcom/rubengees/introduction/exception/ConfigurationException;-><init>()V

    throw v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/rubengees/introduction/entity/Option;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/rubengees/introduction/entity/Option;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubengees/introduction/entity/Option;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 133
    iget-object v2, p0, Lcom/rubengees/introduction/entity/Option;->titleResource:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/rubengees/introduction/entity/Option;->titleResource:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 134
    iget-boolean v2, p0, Lcom/rubengees/introduction/entity/Option;->isActivated:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 135
    iget-object v2, p0, Lcom/rubengees/introduction/entity/Option;->position:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/rubengees/introduction/entity/Option;->position:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public init(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 146
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/rubengees/introduction/entity/Option;->position:Ljava/lang/Integer;

    .line 148
    iget-object p2, p0, Lcom/rubengees/introduction/entity/Option;->titleResource:Ljava/lang/Integer;

    if-eqz p2, :cond_0

    .line 149
    iget-object p2, p0, Lcom/rubengees/introduction/entity/Option;->titleResource:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rubengees/introduction/entity/Option;->title:Ljava/lang/String;

    const/4 p1, 0x0

    .line 150
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Option;->titleResource:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method public isActivated()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/rubengees/introduction/entity/Option;->isActivated:Z

    return v0
.end method

.method public setActivated(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/rubengees/introduction/entity/Option;->isActivated:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 161
    iget-object p2, p0, Lcom/rubengees/introduction/entity/Option;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object p2, p0, Lcom/rubengees/introduction/entity/Option;->titleResource:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 163
    iget-boolean p2, p0, Lcom/rubengees/introduction/entity/Option;->isActivated:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 164
    iget-object p2, p0, Lcom/rubengees/introduction/entity/Option;->position:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
