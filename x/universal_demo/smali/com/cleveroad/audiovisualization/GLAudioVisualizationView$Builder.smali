.class public Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;
.super Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;
.source "GLAudioVisualizationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder<",
        "Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bubbleSize:F

.field private bubblesPerLayer:I

.field private context:Landroid/content/Context;

.field private footerHeight:F

.field private layersCount:I

.field private randomizeBubbleSize:Z

.field private waveHeight:F

.field private wavesCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 280
    invoke-direct {p0, p1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;-><init>(Landroid/content/Context;)V

    .line 281
    iput-object p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;)Landroid/content/Context;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;)F
    .locals 0

    .line 268
    iget p0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->waveHeight:F

    return p0
.end method

.method static synthetic access$400(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;)I
    .locals 0

    .line 268
    iget p0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->wavesCount:I

    return p0
.end method

.method static synthetic access$500(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;)F
    .locals 0

    .line 268
    iget p0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->bubbleSize:F

    return p0
.end method

.method static synthetic access$600(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;)F
    .locals 0

    .line 268
    iget p0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->footerHeight:F

    return p0
.end method

.method static synthetic access$700(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;)Z
    .locals 0

    .line 268
    iget-boolean p0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->randomizeBubbleSize:Z

    return p0
.end method

.method static synthetic access$800(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;)I
    .locals 0

    .line 268
    iget p0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->layersCount:I

    return p0
.end method

.method static synthetic access$900(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;)I
    .locals 0

    .line 268
    iget p0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->bubblesPerLayer:I

    return p0
.end method


# virtual methods
.method public build()Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;
    .locals 2

    .line 387
    new-instance v0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;-><init>(Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$1;)V

    return-object v0
.end method

.method protected getThis()Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;
    .locals 0

    return-object p0
.end method

.method protected bridge synthetic getThis()Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;
    .locals 1

    .line 268
    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->getThis()Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setBubblesPerLayer(I)Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;
    .locals 0

    .line 382
    iput p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->bubblesPerLayer:I

    return-object p0
.end method

.method public setBubblesRandomizeSize(Z)Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;
    .locals 0

    .line 372
    iput-boolean p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->randomizeBubbleSize:Z

    return-object p0
.end method

.method public setBubblesSize(F)Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;
    .locals 0

    .line 315
    iput p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->bubbleSize:F

    return-object p0
.end method

.method public setBubblesSize(I)Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 325
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->setBubblesSize(F)Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLayersCount(I)Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;
    .locals 0

    .line 305
    iput p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->layersCount:I

    return-object p0
.end method

.method public setWavesCount(I)Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;
    .locals 0

    .line 295
    iput p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->wavesCount:I

    return-object p0
.end method

.method public setWavesFooterHeight(F)Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;
    .locals 0

    .line 353
    iput p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->footerHeight:F

    return-object p0
.end method

.method public setWavesFooterHeight(I)Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 363
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->setWavesFooterHeight(F)Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setWavesHeight(F)Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;
    .locals 0

    .line 334
    iput p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->waveHeight:F

    return-object p0
.end method

.method public setWavesHeight(I)Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 344
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;->setWavesHeight(F)Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$Builder;

    move-result-object p1

    return-object p1
.end method
