.class public Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider;
.super Ljava/lang/Object;
.source "MediaSourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;
    }
.end annotation


# static fields
.field protected static final USER_AGENT_FORMAT:Ljava/lang/String; = "ExoMedia %s (%d) / Android %s / %s"


# instance fields
.field protected userAgent:Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ExoMedia %s (%d) / Android %s / %s"

    const/4 v1, 0x4

    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "4.0.3"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x9d6c

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider;->userAgent:Ljava/lang/String;

    return-void
.end method

.method protected static findByExtension(Ljava/lang/String;)Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;
    .locals 4
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    sget-object v1, Lcom/devbrackets/android/exomedia/ExoMedia$Data;->sourceTypeBuilders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;

    .line 53
    iget-object v3, v2, Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;->extension:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method protected static findByLooseComparison(Landroid/net/Uri;)Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;
    .locals 4
    .param p0    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 63
    sget-object v0, Lcom/devbrackets/android/exomedia/ExoMedia$Data;->sourceTypeBuilders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;

    .line 64
    iget-object v2, v1, Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;->looseComparisonRegex:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;->looseComparisonRegex:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public generate(Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener<",
            "-",
            "Lcom/google/android/exoplayer2/upstream/DataSource;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/MediaSource;"
        }
    .end annotation

    .line 33
    invoke-static {p3}, Lcom/devbrackets/android/exomedia/util/MediaSourceUtil;->getExtension(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider;->findByExtension(Ljava/lang/String;)Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38
    invoke-static {p3}, Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider;->findByLooseComparison(Landroid/net/Uri;)Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 42
    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;->builder:Lcom/devbrackets/android/exomedia/core/source/builder/MediaSourceBuilder;

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/devbrackets/android/exomedia/core/source/builder/DefaultMediaSourceBuilder;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/core/source/builder/DefaultMediaSourceBuilder;-><init>()V

    goto :goto_0

    .line 43
    :goto_1
    iget-object v4, p0, Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider;->userAgent:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p3

    move-object v5, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/devbrackets/android/exomedia/core/source/builder/MediaSourceBuilder;->build(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/TransferListener;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object p1

    return-object p1
.end method
