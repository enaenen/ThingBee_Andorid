.class public Lcom/rubengees/introduction/entity/Slide;
.super Ljava/lang/Object;
.source "Slide.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/rubengees/introduction/entity/Slide;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private color:Ljava/lang/Integer;

.field private colorResource:Ljava/lang/Integer;

.field private customViewBuilder:Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;

.field private description:Ljava/lang/String;

.field private descriptionResource:Ljava/lang/Integer;

.field private imageResource:Ljava/lang/Integer;

.field private option:Lcom/rubengees/introduction/entity/Option;

.field private position:I

.field private title:Ljava/lang/String;

.field private titleResource:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/rubengees/introduction/entity/Slide$1;

    invoke-direct {v0}, Lcom/rubengees/introduction/entity/Slide$1;-><init>()V

    sput-object v0, Lcom/rubengees/introduction/entity/Slide;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rubengees/introduction/entity/Slide;->position:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->title:Ljava/lang/String;

    .line 71
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->titleResource:Ljava/lang/Integer;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->description:Ljava/lang/String;

    .line 73
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->descriptionResource:Ljava/lang/Integer;

    .line 74
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->imageResource:Ljava/lang/Integer;

    .line 75
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->color:Ljava/lang/Integer;

    .line 76
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->colorResource:Ljava/lang/Integer;

    .line 77
    const-class v0, Lcom/rubengees/introduction/entity/Option;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/rubengees/introduction/entity/Option;

    iput-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->option:Lcom/rubengees/introduction/entity/Option;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;

    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->customViewBuilder:Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;

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

    if-eqz p1, :cond_15

    .line 342
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_9

    .line 344
    :cond_1
    check-cast p1, Lcom/rubengees/introduction/entity/Slide;

    .line 346
    iget v2, p0, Lcom/rubengees/introduction/entity/Slide;->position:I

    iget v3, p1, Lcom/rubengees/introduction/entity/Slide;->position:I

    if-eq v2, v3, :cond_2

    return v1

    .line 347
    :cond_2
    iget-object v2, p0, Lcom/rubengees/introduction/entity/Slide;->title:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/rubengees/introduction/entity/Slide;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/rubengees/introduction/entity/Slide;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/rubengees/introduction/entity/Slide;->title:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 348
    :cond_4
    iget-object v2, p0, Lcom/rubengees/introduction/entity/Slide;->titleResource:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/rubengees/introduction/entity/Slide;->titleResource:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/rubengees/introduction/entity/Slide;->titleResource:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lcom/rubengees/introduction/entity/Slide;->titleResource:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 350
    :cond_6
    iget-object v2, p0, Lcom/rubengees/introduction/entity/Slide;->description:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/rubengees/introduction/entity/Slide;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/rubengees/introduction/entity/Slide;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_7
    iget-object v2, p1, Lcom/rubengees/introduction/entity/Slide;->description:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_2
    return v1

    .line 352
    :cond_8
    iget-object v2, p0, Lcom/rubengees/introduction/entity/Slide;->descriptionResource:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/rubengees/introduction/entity/Slide;->descriptionResource:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/rubengees/introduction/entity/Slide;->descriptionResource:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_9
    iget-object v2, p1, Lcom/rubengees/introduction/entity/Slide;->descriptionResource:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    :goto_3
    return v1

    .line 354
    :cond_a
    iget-object v2, p0, Lcom/rubengees/introduction/entity/Slide;->imageResource:Ljava/lang/Integer;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/rubengees/introduction/entity/Slide;->imageResource:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/rubengees/introduction/entity/Slide;->imageResource:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_4

    :cond_b
    iget-object v2, p1, Lcom/rubengees/introduction/entity/Slide;->imageResource:Ljava/lang/Integer;

    if-eqz v2, :cond_c

    :goto_4
    return v1

    .line 356
    :cond_c
    iget-object v2, p0, Lcom/rubengees/introduction/entity/Slide;->color:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/rubengees/introduction/entity/Slide;->color:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/rubengees/introduction/entity/Slide;->color:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_5

    :cond_d
    iget-object v2, p1, Lcom/rubengees/introduction/entity/Slide;->color:Ljava/lang/Integer;

    if-eqz v2, :cond_e

    :goto_5
    return v1

    .line 357
    :cond_e
    iget-object v2, p0, Lcom/rubengees/introduction/entity/Slide;->colorResource:Ljava/lang/Integer;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/rubengees/introduction/entity/Slide;->colorResource:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/rubengees/introduction/entity/Slide;->colorResource:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_6

    :cond_f
    iget-object v2, p1, Lcom/rubengees/introduction/entity/Slide;->colorResource:Ljava/lang/Integer;

    if-eqz v2, :cond_10

    :goto_6
    return v1

    .line 359
    :cond_10
    iget-object v2, p0, Lcom/rubengees/introduction/entity/Slide;->option:Lcom/rubengees/introduction/entity/Option;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/rubengees/introduction/entity/Slide;->option:Lcom/rubengees/introduction/entity/Option;

    iget-object v3, p1, Lcom/rubengees/introduction/entity/Slide;->option:Lcom/rubengees/introduction/entity/Option;

    invoke-virtual {v2, v3}, Lcom/rubengees/introduction/entity/Option;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_7

    :cond_11
    iget-object v2, p1, Lcom/rubengees/introduction/entity/Slide;->option:Lcom/rubengees/introduction/entity/Option;

    if-eqz v2, :cond_12

    :goto_7
    return v1

    .line 360
    :cond_12
    iget-object v2, p0, Lcom/rubengees/introduction/entity/Slide;->customViewBuilder:Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;

    if-eqz v2, :cond_13

    iget-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->customViewBuilder:Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;

    iget-object p1, p1, Lcom/rubengees/introduction/entity/Slide;->customViewBuilder:Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_8

    :cond_13
    iget-object p1, p1, Lcom/rubengees/introduction/entity/Slide;->customViewBuilder:Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;

    if-nez p1, :cond_14

    goto :goto_8

    :cond_14
    const/4 v0, 0x0

    :goto_8
    return v0

    :cond_15
    :goto_9
    return v1
.end method

.method public getColor()Ljava/lang/Integer;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->color:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCustomViewBuilder()Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->customViewBuilder:Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImageResource()Ljava/lang/Integer;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->imageResource:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOption()Lcom/rubengees/introduction/entity/Option;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->option:Lcom/rubengees/introduction/entity/Option;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 278
    iget v0, p0, Lcom/rubengees/introduction/entity/Slide;->position:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 366
    iget v0, p0, Lcom/rubengees/introduction/entity/Slide;->position:I

    mul-int/lit8 v0, v0, 0x1f

    .line 367
    iget-object v1, p0, Lcom/rubengees/introduction/entity/Slide;->title:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rubengees/introduction/entity/Slide;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 368
    iget-object v1, p0, Lcom/rubengees/introduction/entity/Slide;->titleResource:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/rubengees/introduction/entity/Slide;->titleResource:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 369
    iget-object v1, p0, Lcom/rubengees/introduction/entity/Slide;->description:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/rubengees/introduction/entity/Slide;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 370
    iget-object v1, p0, Lcom/rubengees/introduction/entity/Slide;->descriptionResource:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/rubengees/introduction/entity/Slide;->descriptionResource:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 371
    iget-object v1, p0, Lcom/rubengees/introduction/entity/Slide;->imageResource:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/rubengees/introduction/entity/Slide;->imageResource:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 372
    iget-object v1, p0, Lcom/rubengees/introduction/entity/Slide;->color:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/rubengees/introduction/entity/Slide;->color:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 373
    iget-object v1, p0, Lcom/rubengees/introduction/entity/Slide;->colorResource:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/rubengees/introduction/entity/Slide;->colorResource:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 374
    iget-object v1, p0, Lcom/rubengees/introduction/entity/Slide;->option:Lcom/rubengees/introduction/entity/Option;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/rubengees/introduction/entity/Slide;->option:Lcom/rubengees/introduction/entity/Option;

    invoke-virtual {v1}, Lcom/rubengees/introduction/entity/Option;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 375
    iget-object v1, p0, Lcom/rubengees/introduction/entity/Slide;->customViewBuilder:Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/rubengees/introduction/entity/Slide;->customViewBuilder:Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_8
    add-int/2addr v0, v2

    return v0
.end method

.method public init(Landroid/content/Context;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 312
    iput p2, p0, Lcom/rubengees/introduction/entity/Slide;->position:I

    .line 313
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 315
    iget-object v1, p0, Lcom/rubengees/introduction/entity/Slide;->titleResource:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/rubengees/introduction/entity/Slide;->titleResource:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/rubengees/introduction/entity/Slide;->title:Ljava/lang/String;

    .line 317
    iput-object v2, p0, Lcom/rubengees/introduction/entity/Slide;->titleResource:Ljava/lang/Integer;

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/rubengees/introduction/entity/Slide;->descriptionResource:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/rubengees/introduction/entity/Slide;->descriptionResource:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->description:Ljava/lang/String;

    .line 322
    iput-object v2, p0, Lcom/rubengees/introduction/entity/Slide;->descriptionResource:Ljava/lang/Integer;

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->colorResource:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->colorResource:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->color:Ljava/lang/Integer;

    .line 327
    iput-object v2, p0, Lcom/rubengees/introduction/entity/Slide;->colorResource:Ljava/lang/Integer;

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->option:Lcom/rubengees/introduction/entity/Option;

    if-eqz v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->option:Lcom/rubengees/introduction/entity/Option;

    invoke-virtual {v0, p1, p2}, Lcom/rubengees/introduction/entity/Option;->init(Landroid/content/Context;I)V

    .line 334
    :cond_3
    iget-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->color:Ljava/lang/Integer;

    if-nez p1, :cond_4

    .line 335
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "You must add a color to each slide"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method public withColor(I)Lcom/rubengees/introduction/entity/Slide;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 227
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->color:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 228
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->colorResource:Ljava/lang/Integer;

    return-object p0
.end method

.method public withColorResource(I)Lcom/rubengees/introduction/entity/Slide;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 242
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->colorResource:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 243
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->color:Ljava/lang/Integer;

    return-object p0
.end method

.method public withCustomViewBuilder(Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;)Lcom/rubengees/introduction/entity/Slide;
    .locals 0
    .param p1    # Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 266
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->customViewBuilder:Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;

    const/4 p1, 0x0

    .line 267
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->title:Ljava/lang/String;

    .line 268
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->titleResource:Ljava/lang/Integer;

    .line 269
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->imageResource:Ljava/lang/Integer;

    .line 270
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->option:Lcom/rubengees/introduction/entity/Option;

    .line 271
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->description:Ljava/lang/String;

    .line 272
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->descriptionResource:Ljava/lang/Integer;

    return-object p0
.end method

.method public withDescription(I)Lcom/rubengees/introduction/entity/Slide;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 158
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->descriptionResource:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 159
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->description:Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->option:Lcom/rubengees/introduction/entity/Option;

    .line 161
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->customViewBuilder:Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;

    return-object p0
.end method

.method public withDescription(Ljava/lang/String;)Lcom/rubengees/introduction/entity/Slide;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->description:Ljava/lang/String;

    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->descriptionResource:Ljava/lang/Integer;

    .line 143
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->option:Lcom/rubengees/introduction/entity/Option;

    .line 144
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->customViewBuilder:Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;

    return-object p0
.end method

.method public withDescriptionResource(I)Lcom/rubengees/introduction/entity/Slide;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->descriptionResource:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 179
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->description:Ljava/lang/String;

    .line 180
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->option:Lcom/rubengees/introduction/entity/Option;

    .line 181
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->customViewBuilder:Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;

    return-object p0
.end method

.method public withImage(I)Lcom/rubengees/introduction/entity/Slide;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->imageResource:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 195
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->customViewBuilder:Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;

    return-object p0
.end method

.method public withImageResource(I)Lcom/rubengees/introduction/entity/Slide;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->imageResource:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 212
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->customViewBuilder:Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;

    return-object p0
.end method

.method public withOption(Lcom/rubengees/introduction/entity/Option;)Lcom/rubengees/introduction/entity/Slide;
    .locals 0
    .param p1    # Lcom/rubengees/introduction/entity/Option;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 257
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->option:Lcom/rubengees/introduction/entity/Option;

    const/4 p1, 0x0

    .line 258
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->description:Ljava/lang/String;

    .line 259
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->descriptionResource:Ljava/lang/Integer;

    .line 260
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->customViewBuilder:Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;

    return-object p0
.end method

.method public withTitle(I)Lcom/rubengees/introduction/entity/Slide;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 106
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->titleResource:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 107
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->title:Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->customViewBuilder:Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;

    return-object p0
.end method

.method public withTitle(Ljava/lang/String;)Lcom/rubengees/introduction/entity/Slide;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->title:Ljava/lang/String;

    const/4 p1, 0x0

    .line 91
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->titleResource:Ljava/lang/Integer;

    .line 92
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->customViewBuilder:Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;

    return-object p0
.end method

.method public withTitleResource(I)Lcom/rubengees/introduction/entity/Slide;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->titleResource:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 126
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->title:Ljava/lang/String;

    .line 127
    iput-object p1, p0, Lcom/rubengees/introduction/entity/Slide;->customViewBuilder:Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 386
    iget v0, p0, Lcom/rubengees/introduction/entity/Slide;->position:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    iget-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->titleResource:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 389
    iget-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->descriptionResource:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 391
    iget-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->imageResource:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 392
    iget-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->color:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 393
    iget-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->colorResource:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 394
    iget-object v0, p0, Lcom/rubengees/introduction/entity/Slide;->option:Lcom/rubengees/introduction/entity/Option;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 395
    iget-object p2, p0, Lcom/rubengees/introduction/entity/Slide;->customViewBuilder:Lcom/rubengees/introduction/entity/Slide$CustomViewBuilder;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
