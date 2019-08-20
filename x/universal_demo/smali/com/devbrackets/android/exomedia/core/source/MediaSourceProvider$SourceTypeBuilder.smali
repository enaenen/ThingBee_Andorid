.class public Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;
.super Ljava/lang/Object;
.source "MediaSourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourceTypeBuilder"
.end annotation


# instance fields
.field public final builder:Lcom/devbrackets/android/exomedia/core/source/builder/MediaSourceBuilder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final extension:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final looseComparisonRegex:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/devbrackets/android/exomedia/core/source/builder/MediaSourceBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/devbrackets/android/exomedia/core/source/builder/MediaSourceBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;->builder:Lcom/devbrackets/android/exomedia/core/source/builder/MediaSourceBuilder;

    .line 82
    iput-object p2, p0, Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;->extension:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/devbrackets/android/exomedia/core/source/MediaSourceProvider$SourceTypeBuilder;->looseComparisonRegex:Ljava/lang/String;

    return-void
.end method
