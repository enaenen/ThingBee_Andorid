.class Lcom/cleveroad/audiovisualization/GLBubble;
.super Lcom/cleveroad/audiovisualization/GLShape;
.source "GLBubble.java"


# static fields
.field private static final BUBBLE_ANIMATION_DURATION:J = 0x3e8L

.field private static final BUBBLE_D_ANGLE:F = 0.0062831854f

.field private static final POINTS_PER_CIRCLE:I = 0x28

.field private static final TOP_Y:F = 1.0f


# instance fields
.field private angle:F

.field private centerY:F

.field private fromY:F

.field private final random:Ljava/util/Random;

.field private final shortBuffer:Ljava/nio/ShortBuffer;

.field private size:F

.field private speed:F

.field private startX:F

.field private final vertexBuffer:Ljava/nio/FloatBuffer;

.field private virtualSpeed:F


# direct methods
.method public constructor <init>([FFFFFLjava/util/Random;)V
    .locals 3

    .line 39
    invoke-direct {p0, p1}, Lcom/cleveroad/audiovisualization/GLShape;-><init>([F)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 34
    iput p1, p0, Lcom/cleveroad/audiovisualization/GLBubble;->centerY:F

    .line 40
    iput-object p6, p0, Lcom/cleveroad/audiovisualization/GLBubble;->random:Ljava/util/Random;

    .line 41
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/cleveroad/audiovisualization/GLBubble;->update(FFFF)V

    const/16 p1, 0x7b

    .line 42
    new-array p1, p1, [F

    const/16 p2, 0x78

    .line 43
    new-array p2, p2, [S

    const/4 p3, 0x0

    const/4 p4, 0x0

    .line 45
    :goto_0
    array-length p5, p2

    div-int/lit8 p5, p5, 0x3

    const/4 v0, 0x1

    sub-int/2addr p5, v0

    if-ge p4, p5, :cond_0

    mul-int/lit8 p5, p4, 0x3

    .line 46
    aput-short p3, p2, p5

    add-int/lit8 v0, p5, 0x1

    add-int/lit8 v1, p4, 0x1

    int-to-short v2, v1

    .line 47
    aput-short v2, p2, v0

    add-int/lit8 p5, p5, 0x2

    add-int/lit8 p4, p4, 0x2

    int-to-short p4, p4

    .line 48
    aput-short p4, p2, p5

    move p4, v1

    goto :goto_0

    :cond_0
    mul-int/lit8 p5, p4, 0x3

    .line 51
    aput-short p3, p2, p5

    add-int/lit8 v1, p5, 0x1

    add-int/2addr p4, v0

    int-to-short p4, p4

    .line 52
    aput-short p4, p2, v1

    add-int/lit8 p5, p5, 0x2

    .line 53
    aput-short v0, p2, p5

    .line 54
    array-length p4, p1

    mul-int/lit8 p4, p4, 0x4

    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    .line 55
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p4

    iput-object p4, p0, Lcom/cleveroad/audiovisualization/GLBubble;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 57
    iget-object p4, p0, Lcom/cleveroad/audiovisualization/GLBubble;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p4, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 58
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/GLBubble;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 59
    array-length p1, p2

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 60
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cleveroad/audiovisualization/GLBubble;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 62
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/GLBubble;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {p1, p2}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 63
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/GLBubble;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 64
    invoke-virtual {p6}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    mul-float p1, p1, p2

    float-to-double p1, p1

    const-wide p3, 0x400921fb54442d18L    # Math.PI

    mul-double p1, p1, p3

    double-to-float p1, p1

    iput p1, p0, Lcom/cleveroad/audiovisualization/GLBubble;->angle:F

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 8

    .line 94
    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/GLBubble;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 95
    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/GLBubble;->getProgram()I

    move-result v0

    const-string v1, "vPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 96
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 97
    iget-object v7, p0, Lcom/cleveroad/audiovisualization/GLBubble;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0xc

    move v2, v0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 98
    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/GLBubble;->getProgram()I

    move-result v1

    const-string v2, "vColor"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    const/16 v2, 0xbe2

    .line 99
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v3, 0x302

    const/16 v4, 0x303

    .line 100
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 101
    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/GLBubble;->getColor()[F

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v4, v3, v5}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 102
    iget-object v1, p0, Lcom/cleveroad/audiovisualization/GLBubble;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v1

    iget-object v3, p0, Lcom/cleveroad/audiovisualization/GLBubble;->shortBuffer:Ljava/nio/ShortBuffer;

    const/4 v4, 0x6

    const/16 v5, 0x1403

    invoke-static {v4, v1, v5, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 103
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 104
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void
.end method

.method public isOffScreen()Z
    .locals 2

    .line 112
    iget v0, p0, Lcom/cleveroad/audiovisualization/GLBubble;->centerY:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public update(FFFF)V
    .locals 0

    .line 123
    iput p2, p0, Lcom/cleveroad/audiovisualization/GLBubble;->fromY:F

    .line 124
    iput p4, p0, Lcom/cleveroad/audiovisualization/GLBubble;->size:F

    .line 125
    iput p1, p0, Lcom/cleveroad/audiovisualization/GLBubble;->startX:F

    const/high16 p1, -0x40800000    # -1.0f

    .line 126
    iput p1, p0, Lcom/cleveroad/audiovisualization/GLBubble;->centerY:F

    .line 127
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/GLBubble;->random:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const p4, 0x3f4ccccd    # 0.8f

    mul-float p1, p1, p4

    const p4, 0x3ecccccd    # 0.4f

    add-float/2addr p1, p4

    sub-float/2addr p3, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p3, p2

    mul-float p3, p3, p1

    .line 128
    iput p3, p0, Lcom/cleveroad/audiovisualization/GLBubble;->speed:F

    const p2, 0x3b03126f    # 0.002f

    mul-float p1, p1, p2

    .line 129
    iput p1, p0, Lcom/cleveroad/audiovisualization/GLBubble;->virtualSpeed:F

    .line 130
    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/GLBubble;->getColor()[F

    move-result-object p1

    const/4 p2, 0x3

    const/high16 p3, 0x3f800000    # 1.0f

    aput p3, p1, p2

    return-void
.end method

.method public update(JF)V
    .locals 12

    .line 74
    iget v0, p0, Lcom/cleveroad/audiovisualization/GLBubble;->angle:F

    long-to-float p1, p1

    const p2, 0x3bcde32e

    mul-float p2, p2, p1

    add-float/2addr v0, p2

    iput v0, p0, Lcom/cleveroad/audiovisualization/GLBubble;->angle:F

    .line 75
    iget p2, p0, Lcom/cleveroad/audiovisualization/GLBubble;->startX:F

    iget v0, p0, Lcom/cleveroad/audiovisualization/GLBubble;->angle:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide v2, 0x3fa99999a0000000L    # 0.05000000074505806

    mul-double v0, v0, v2

    double-to-float v0, v0

    add-float/2addr p2, v0

    .line 76
    iget v0, p0, Lcom/cleveroad/audiovisualization/GLBubble;->size:F

    add-float/2addr v0, p2

    .line 77
    iget v1, p0, Lcom/cleveroad/audiovisualization/GLBubble;->fromY:F

    iget v2, p0, Lcom/cleveroad/audiovisualization/GLBubble;->speed:F

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    .line 78
    iget v2, p0, Lcom/cleveroad/audiovisualization/GLBubble;->size:F

    add-float/2addr v2, v1

    .line 79
    iget v3, p0, Lcom/cleveroad/audiovisualization/GLBubble;->centerY:F

    iget v4, p0, Lcom/cleveroad/audiovisualization/GLBubble;->virtualSpeed:F

    mul-float p1, p1, v4

    add-float/2addr v3, p1

    iput v3, p0, Lcom/cleveroad/audiovisualization/GLBubble;->centerY:F

    .line 80
    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/GLBubble;->getColor()[F

    move-result-object p1

    iget v3, p0, Lcom/cleveroad/audiovisualization/GLBubble;->centerY:F

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v3, v4

    sub-float/2addr v4, v3

    const/4 v3, 0x3

    aput v4, p1, v3

    .line 81
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/GLBubble;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-static {v3, p2, v0}, Lcom/cleveroad/audiovisualization/Utils;->normalizeGl(FFF)F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 82
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/GLBubble;->vertexBuffer:Ljava/nio/FloatBuffer;

    iget v3, p0, Lcom/cleveroad/audiovisualization/GLBubble;->centerY:F

    mul-float v3, v3, p3

    invoke-static {v3, v1, v2}, Lcom/cleveroad/audiovisualization/Utils;->normalizeGl(FFF)F

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 p1, 0x1

    :goto_0
    const/16 v3, 0x28

    if-gt p1, v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/cleveroad/audiovisualization/GLBubble;->vertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v5, p1, 0x3

    const-wide v6, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    int-to-double v8, p1

    const-wide v10, 0x3fc41b2f769cf0e0L    # 0.15707963267948966

    mul-double v10, v10, v8

    add-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v6, p2, v0}, Lcom/cleveroad/audiovisualization/Utils;->normalizeGl(FFF)F

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 85
    iget-object v3, p0, Lcom/cleveroad/audiovisualization/GLBubble;->vertexBuffer:Ljava/nio/FloatBuffer;

    add-int/2addr v5, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v6, v6, p3

    invoke-static {v6, v1, v2}, Lcom/cleveroad/audiovisualization/Utils;->normalizeGl(FFF)F

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 87
    :cond_0
    iput v1, p0, Lcom/cleveroad/audiovisualization/GLBubble;->fromY:F

    return-void
.end method
