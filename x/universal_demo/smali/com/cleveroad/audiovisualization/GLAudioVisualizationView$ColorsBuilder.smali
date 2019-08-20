.class public Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;
.super Ljava/lang/Object;
.source "GLAudioVisualizationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cleveroad/audiovisualization/GLAudioVisualizationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorsBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private backgroundColor:[F

.field private final context:Landroid/content/Context;

.field private layerColors:[[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method backgroundColor()[F
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;->backgroundColor:[F

    return-object v0
.end method

.method protected getThis()Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method layerColors()[[F
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;->layerColors:[[F

    return-object v0
.end method

.method public setBackgroundColor(I)Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 221
    invoke-static {p1}, Lcom/cleveroad/audiovisualization/Utils;->convertColor(I)[F

    move-result-object p1

    iput-object p1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;->backgroundColor:[F

    .line 222
    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;->getThis()Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setBackgroundColorRes(I)Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;->setBackgroundColor(I)Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setLayerColors(I)Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 232
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 233
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 234
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 237
    invoke-virtual {p0, v0}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;->setLayerColors([I)Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setLayerColors([I)Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)TT;"
        }
    .end annotation

    .line 246
    array-length v0, p1

    new-array v0, v0, [[F

    iput-object v0, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;->layerColors:[[F

    const/4 v0, 0x0

    .line 247
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;->layerColors:[[F

    aget v2, p1, v0

    invoke-static {v2}, Lcom/cleveroad/audiovisualization/Utils;->convertColor(I)[F

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;->getThis()Lcom/cleveroad/audiovisualization/GLAudioVisualizationView$ColorsBuilder;

    move-result-object p1

    return-object p1
.end method
