.class public Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;
.super Ljava/lang/Object;
.source "MatrixManager.java"


# static fields
.field protected static final QUARTER_ROTATION:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "MatrixManager"


# instance fields
.field protected currentRotation:I
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0x167L
    .end annotation
.end field

.field protected currentScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected intrinsicVideoSize:Landroid/graphics/Point;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected requestedModificationView:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected requestedRotation:Ljava/lang/Integer;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected requestedScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    .line 18
    iput v1, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->currentRotation:I

    .line 20
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;->FIT_CENTER:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->currentScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedRotation:Ljava/lang/Integer;

    .line 25
    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    .line 27
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedModificationView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected applyCenter(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 132
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 133
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 135
    invoke-virtual {p0, p1, v0, v1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->setScale(Landroid/view/View;FF)V

    return-void
.end method

.method protected applyCenterCrop(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 148
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-float v0, v2, v0

    div-float/2addr v2, v1

    .line 152
    invoke-virtual {p0, p1, v0, v2}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->setScale(Landroid/view/View;FF)V

    return-void
.end method

.method protected applyCenterInside(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 163
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 164
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->applyCenter(Landroid/view/View;)V

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->applyFitCenter(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method protected applyFitCenter(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 180
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    div-float v0, v2, v0

    div-float/2addr v2, v1

    .line 183
    invoke-virtual {p0, p1, v0, v2}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->setScale(Landroid/view/View;FF)V

    return-void
.end method

.method protected applyRequestedModifications()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedModificationView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 214
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedRotation:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 215
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedRotation:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->rotate(Landroid/view/View;I)V

    .line 216
    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedRotation:Ljava/lang/Integer;

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    if-eqz v2, :cond_1

    .line 220
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    invoke-virtual {p0, v0, v2}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->scale(Landroid/view/View;Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;)Z

    .line 221
    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    .line 225
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedModificationView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public getCurrentRotation()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedRotation:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedRotation:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->currentRotation:I

    :goto_0
    return v0
.end method

.method public getCurrentScaleType()Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->currentScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    :goto_0
    return-object v0
.end method

.method public ready()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0, v0}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->setIntrinsicVideoSize(II)V

    .line 32
    iput v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->currentRotation:I

    return-void
.end method

.method public rotate(Landroid/view/View;I)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x167L
        .end annotation
    .end param

    .line 60
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->ready()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedRotation:Ljava/lang/Integer;

    .line 62
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedModificationView:Ljava/lang/ref/WeakReference;

    return-void

    .line 66
    :cond_0
    div-int/lit8 v0, p2, 0x5a

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 67
    :goto_0
    iget v3, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->currentRotation:I

    div-int/lit8 v3, v3, 0x5a

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eq v0, v1, :cond_3

    .line 71
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 72
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 73
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 76
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->currentScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->scale(Landroid/view/View;Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;)Z

    .line 79
    :cond_3
    iput p2, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->currentRotation:I

    int-to-float p2, p2

    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public scale(Landroid/view/View;Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;)Z
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 91
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->ready()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 92
    iput-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    .line 93
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->requestedModificationView:Ljava/lang/ref/WeakReference;

    return v1

    .line 97
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 102
    :cond_1
    iput-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->currentScaleType:Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    .line 103
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager$1;->$SwitchMap$com$devbrackets$android$exomedia$core$video$scale$ScaleType:[I

    invoke-virtual {p2}, Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 117
    invoke-virtual {p0, p1, p2, p2}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->setScale(Landroid/view/View;FF)V

    goto :goto_0

    .line 114
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->applyFitCenter(Landroid/view/View;)V

    goto :goto_0

    .line 111
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->applyCenterInside(Landroid/view/View;)V

    goto :goto_0

    .line 108
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->applyCenterCrop(Landroid/view/View;)V

    goto :goto_0

    .line 105
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->applyCenter(Landroid/view/View;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const-string p2, "MatrixManager"

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to apply scale with a view size of ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setIntrinsicVideoSize(II)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 40
    iget v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->currentRotation:I

    div-int/lit8 v0, v0, 0x5a

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 41
    :goto_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    if-eqz v1, :cond_1

    move v2, p2

    goto :goto_1

    :cond_1
    move v2, p1

    :goto_1
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 42
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->intrinsicVideoSize:Landroid/graphics/Point;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move p1, p2

    :goto_2
    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 44
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->ready()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 45
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->applyRequestedModifications()V

    :cond_3
    return-void
.end method

.method protected setScale(Landroid/view/View;FF)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 195
    iget v0, p0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->currentRotation:I

    div-int/lit8 v0, v0, 0x5a

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float p3, p3, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float p2, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    move v2, p3

    move p3, p2

    move p2, v2

    .line 202
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 203
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
