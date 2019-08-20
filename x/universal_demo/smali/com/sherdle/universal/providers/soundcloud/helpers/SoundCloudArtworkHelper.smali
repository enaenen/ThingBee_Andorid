.class public final Lcom/sherdle/universal/providers/soundcloud/helpers/SoundCloudArtworkHelper;
.super Ljava/lang/Object;
.source "SoundCloudArtworkHelper.java"


# static fields
.field public static final BADGE:Ljava/lang/String; = "badge"

.field public static final LARGE:Ljava/lang/String; = "large"

.field public static final MINI:Ljava/lang/String; = "mini"

.field public static final SMALL:Ljava/lang/String; = "small"

.field public static final TINY:Ljava/lang/String; = "tiny"

.field public static final XLARGE:Ljava/lang/String; = "t300x300"

.field public static final XXLARGE:Ljava/lang/String; = "crop"

.field public static final XXXLARGE:Ljava/lang/String; = "t500x500"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArtworkUrl(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getArtworkUrl()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;->getAvatarUrl()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_1

    const-string v1, "null"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p0, :cond_4

    const-string v0, "null"

    .line 68
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    :goto_1
    const/4 v0, -0x1

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v1, "t500x500"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x7

    goto :goto_2

    :sswitch_1
    const-string v1, "small"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    goto :goto_2

    :sswitch_2
    const-string v1, "large"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x4

    goto :goto_2

    :sswitch_3
    const-string v1, "badge"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_4
    const-string v1, "tiny"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :sswitch_5
    const-string v1, "mini"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :sswitch_6
    const-string v1, "crop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x6

    goto :goto_2

    :sswitch_7
    const-string v1, "t300x300"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x5

    :cond_3
    :goto_2
    packed-switch v0, :pswitch_data_0

    return-object p0

    :pswitch_0
    const-string v0, "large"

    .line 83
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_3
    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0xf558506 -> :sswitch_7
        0x2eba90 -> :sswitch_6
        0x332457 -> :sswitch_5
        0x365300 -> :sswitch_4
        0x5929ba3 -> :sswitch_3
        0x61fbb3b -> :sswitch_2
        0x6879507 -> :sswitch_1
        0x5a76f8fe -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
