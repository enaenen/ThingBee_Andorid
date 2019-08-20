.class public Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter;
.super Ljava/lang/Object;
.source "AlbumArtGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$AlbumCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageForQuery(Ljava/lang/String;Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$AlbumCallback;Landroid/content/Context;)V
    .locals 0

    .line 24
    new-instance p2, Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1;

    invoke-direct {p2, p0, p1}, Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1;-><init>(Ljava/lang/String;Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$AlbumCallback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 72
    invoke-virtual {p2, p0}, Lcom/sherdle/universal/providers/radio/parser/AlbumArtGetter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
