.class Lcom/cleveroad/audiovisualization/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allElementsAreFalse([Z)Z
    .locals 4
    .param p0    # [Z
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 139
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-boolean v3, p0, v2

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static allElementsAreNull([Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .line 112
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static allElementsAreZero([B)Z
    .locals 4

    .line 152
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v3, p0, v2

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static between(FFF)F
    .locals 0

    .line 23
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static between(III)I
    .locals 0

    .line 33
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static convertColor(I)[F
    .locals 4
    .param p0    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x4

    .line 42
    new-array v0, v0, [F

    .line 43
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 44
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 45
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 46
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v2

    const/4 v1, 0x3

    aput p0, v0, v1

    return-object v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 126
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 127
    aget-object v1, p0, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static magnitudeToDb(F)F
    .locals 4

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    float-to-double v2, p0

    .line 75
    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    mul-double v2, v2, v0

    double-to-float p0, v2

    return p0
.end method

.method public static normalize(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_1
    sub-float/2addr p2, p1

    div-float/2addr p0, p2

    return p0
.end method

.method public static normalizeGl(FFF)F
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 59
    invoke-static {p0, v0, v1, p1, p2}, Lcom/cleveroad/audiovisualization/Utils;->normalizeGl(FFFFF)F

    move-result p0

    return p0
.end method

.method public static normalizeGl(FFFFF)F
    .locals 0

    sub-float/2addr p0, p1

    sub-float/2addr p2, p1

    div-float/2addr p0, p2

    sub-float/2addr p4, p3

    mul-float p0, p0, p4

    add-float/2addr p3, p0

    return p3
.end method

.method public static quad(FFFF)F
    .locals 6

    float-to-double v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    float-to-double v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 98
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v0, v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float p2, p2, v2

    mul-float p2, p2, p0

    mul-float p2, p2, p1

    float-to-double p1, p2

    add-double/2addr v0, p1

    mul-float p3, p3, p0

    mul-float p3, p3, p0

    float-to-double p0, p3

    add-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method public static randomize(FLjava/util/Random;)F
    .locals 2

    const/16 v0, 0x64

    .line 102
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x46

    div-int/2addr p1, v0

    int-to-float p1, p1

    const v0, 0x3f333333    # 0.7f

    const v1, 0x3fa66666    # 1.3f

    invoke-static {p1, v0, v1}, Lcom/cleveroad/audiovisualization/Utils;->between(FFF)F

    move-result p1

    mul-float p1, p1, p0

    return p1
.end method

.method public static smooth(FFF)F
    .locals 1

    mul-float p1, p1, p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float v0, v0, p0

    add-float/2addr p1, v0

    return p1
.end method
