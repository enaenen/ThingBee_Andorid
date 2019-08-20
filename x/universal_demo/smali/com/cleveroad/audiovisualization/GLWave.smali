.class Lcom/cleveroad/audiovisualization/GLWave;
.super Lcom/cleveroad/audiovisualization/GLShape;
.source "GLWave.java"


# static fields
.field private static final ADDITIONAL_POINTS:I = 0x5

.field public static final DIRECTION_DOWN:B = 0x1t

.field public static final DIRECTION_UP:B = 0x0t

.field private static final POINTS_PER_WAVE:I = 0x28

.field private static final SKIP:I

.field private static final SMOOTH_A:F = 0.35f


# instance fields
.field private coefficient:F

.field private currentAngle:F

.field private final fromX:F

.field private final fromY:F

.field private latestCoefficient:F

.field private prevVal:F

.field private final random:Ljava/util/Random;

.field private shortBuffer:Ljava/nio/ShortBuffer;

.field private final toX:F

.field private final toY:F

.field private vertexBuffer:Ljava/nio/FloatBuffer;

.field private vertices:[F

.field waveX:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4004000000000000L    # 2.5

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x3

    sput v0, Lcom/cleveroad/audiovisualization/GLWave;->SKIP:I

    return-void
.end method

.method public constructor <init>([FFFFFBLjava/util/Random;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/cleveroad/audiovisualization/GLShape;-><init>([F)V

    const/4 p1, 0x0

    .line 107
    iput p1, p0, Lcom/cleveroad/audiovisualization/GLWave;->waveX:F

    .line 57
    iput p2, p0, Lcom/cleveroad/audiovisualization/GLWave;->fromX:F

    .line 58
    iput p3, p0, Lcom/cleveroad/audiovisualization/GLWave;->toX:F

    .line 59
    iput p4, p0, Lcom/cleveroad/audiovisualization/GLWave;->fromY:F

    .line 60
    iput p5, p0, Lcom/cleveroad/audiovisualization/GLWave;->toY:F

    .line 61
    iput-object p7, p0, Lcom/cleveroad/audiovisualization/GLWave;->random:Ljava/util/Random;

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x40490fdb    # (float)Math.PI

    .line 62
    :goto_0
    iput p1, p0, Lcom/cleveroad/audiovisualization/GLWave;->currentAngle:F

    .line 63
    invoke-direct {p0}, Lcom/cleveroad/audiovisualization/GLWave;->initVertices()V

    .line 64
    invoke-direct {p0}, Lcom/cleveroad/audiovisualization/GLWave;->initIndices()V

    return-void
.end method

.method private initIndices()V
    .locals 7

    const/16 v0, 0x81

    .line 68
    new-array v0, v0, [S

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 69
    :goto_0
    array-length v3, v0

    div-int/lit8 v3, v3, 0x3

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x3

    .line 70
    aput-short v1, v0, v3

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v2, 0x1

    int-to-short v6, v5

    .line 71
    aput-short v6, v0, v4

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    .line 72
    aput-short v2, v0, v3

    move v2, v5

    goto :goto_0

    .line 74
    :cond_0
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 75
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 76
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/cleveroad/audiovisualization/GLWave;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 77
    iget-object v2, p0, Lcom/cleveroad/audiovisualization/GLWave;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 78
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLWave;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private initVertices()V
    .locals 9

    const/16 v0, 0x87

    .line 84
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    .line 87
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    iget v1, p0, Lcom/cleveroad/audiovisualization/GLWave;->fromX:F

    iget v2, p0, Lcom/cleveroad/audiovisualization/GLWave;->toX:F

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Lcom/cleveroad/audiovisualization/Utils;->normalizeGl(FFF)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 88
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    iget v1, p0, Lcom/cleveroad/audiovisualization/GLWave;->fromY:F

    iget v2, p0, Lcom/cleveroad/audiovisualization/GLWave;->toY:F

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v4, v1, v2}, Lcom/cleveroad/audiovisualization/Utils;->normalizeGl(FFF)F

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 91
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    iget v1, p0, Lcom/cleveroad/audiovisualization/GLWave;->fromX:F

    iget v2, p0, Lcom/cleveroad/audiovisualization/GLWave;->toX:F

    invoke-static {v4, v1, v2}, Lcom/cleveroad/audiovisualization/Utils;->normalizeGl(FFF)F

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 92
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    iget v1, p0, Lcom/cleveroad/audiovisualization/GLWave;->fromY:F

    iget v5, p0, Lcom/cleveroad/audiovisualization/GLWave;->toY:F

    invoke-static {v4, v1, v5}, Lcom/cleveroad/audiovisualization/Utils;->normalizeGl(FFF)F

    move-result v1

    const/4 v4, 0x4

    aput v1, v0, v4

    .line 95
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    iget-object v1, p0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    aget v1, v1, v2

    const/4 v5, 0x6

    aput v1, v0, v5

    .line 96
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    iget v1, p0, Lcom/cleveroad/audiovisualization/GLWave;->fromY:F

    iget v6, p0, Lcom/cleveroad/audiovisualization/GLWave;->toY:F

    invoke-static {v3, v1, v6}, Lcom/cleveroad/audiovisualization/Utils;->normalizeGl(FFF)F

    move-result v1

    const/4 v3, 0x7

    aput v1, v0, v3

    .line 99
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    iget-object v1, p0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    array-length v1, v1

    sub-int/2addr v1, v5

    iget v6, p0, Lcom/cleveroad/audiovisualization/GLWave;->fromX:F

    iget v7, p0, Lcom/cleveroad/audiovisualization/GLWave;->toX:F

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v6, v7}, Lcom/cleveroad/audiovisualization/Utils;->normalizeGl(FFF)F

    move-result v6

    aput v6, v0, v1

    .line 100
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    iget-object v1, p0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x5

    iget-object v6, p0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    aget v3, v6, v3

    aput v3, v0, v1

    .line 103
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    iget-object v1, p0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    array-length v1, v1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    iget-object v3, p0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    array-length v3, v3

    sub-int/2addr v3, v5

    aget v2, v2, v3

    aput v2, v0, v1

    .line 104
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    iget-object v1, p0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    iget-object v2, p0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    aget v2, v2, v4

    aput v2, v0, v1

    return-void
.end method


# virtual methods
.method public draw()V
    .locals 8

    .line 161
    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/GLWave;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 162
    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/GLWave;->getProgram()I

    move-result v0

    const-string v1, "vPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 163
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 164
    iget-object v7, p0, Lcom/cleveroad/audiovisualization/GLWave;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0xc

    move v2, v0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 165
    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/GLWave;->getProgram()I

    move-result v1

    const-string v2, "vColor"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 166
    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/GLWave;->getColor()[F

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 167
    iget-object v1, p0, Lcom/cleveroad/audiovisualization/GLWave;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Lcom/cleveroad/audiovisualization/GLWave;->shortBuffer:Ljava/nio/ShortBuffer;

    const/4 v3, 0x6

    const/16 v4, 0x1403

    invoke-static {v3, v1, v4, v2}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 168
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method

.method public isCalmedDown()Z
    .locals 2

    .line 146
    iget v0, p0, Lcom/cleveroad/audiovisualization/GLWave;->prevVal:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCoefficient(F)V
    .locals 0

    .line 154
    iput p1, p0, Lcom/cleveroad/audiovisualization/GLWave;->latestCoefficient:F

    return-void
.end method

.method public update(F)V
    .locals 17

    move-object/from16 v0, p0

    .line 113
    iget-object v1, v0, Lcom/cleveroad/audiovisualization/GLWave;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 114
    iget-object v1, v0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 115
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 116
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/cleveroad/audiovisualization/GLWave;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 117
    iget-object v1, v0, Lcom/cleveroad/audiovisualization/GLWave;->vertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, v0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 118
    iget-object v1, v0, Lcom/cleveroad/audiovisualization/GLWave;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 120
    :cond_0
    iget v1, v0, Lcom/cleveroad/audiovisualization/GLWave;->currentAngle:F

    add-float v1, v1, p1

    .line 122
    iput v1, v0, Lcom/cleveroad/audiovisualization/GLWave;->currentAngle:F

    .line 123
    iget v3, v0, Lcom/cleveroad/audiovisualization/GLWave;->coefficient:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    const v5, 0x3eb33333    # 0.35f

    if-nez v3, :cond_1

    iget v3, v0, Lcom/cleveroad/audiovisualization/GLWave;->latestCoefficient:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 124
    iget v3, v0, Lcom/cleveroad/audiovisualization/GLWave;->latestCoefficient:F

    invoke-static {v4, v3, v5}, Lcom/cleveroad/audiovisualization/Utils;->smooth(FFF)F

    move-result v3

    iput v3, v0, Lcom/cleveroad/audiovisualization/GLWave;->coefficient:F

    :cond_1
    float-to-double v6, v1

    .line 127
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v3, v6

    iget v6, v0, Lcom/cleveroad/audiovisualization/GLWave;->coefficient:F

    mul-float v3, v3, v6

    .line 128
    iget v6, v0, Lcom/cleveroad/audiovisualization/GLWave;->prevVal:F

    cmpl-float v6, v6, v4

    const/4 v7, 0x1

    if-lez v6, :cond_2

    cmpg-float v6, v3, v4

    if-lez v6, :cond_3

    :cond_2
    iget v6, v0, Lcom/cleveroad/audiovisualization/GLWave;->prevVal:F

    cmpg-float v6, v6, v4

    if-gez v6, :cond_5

    cmpl-float v6, v3, v4

    if-ltz v6, :cond_5

    .line 129
    :cond_3
    iget v6, v0, Lcom/cleveroad/audiovisualization/GLWave;->coefficient:F

    iget v8, v0, Lcom/cleveroad/audiovisualization/GLWave;->latestCoefficient:F

    invoke-static {v6, v8, v5}, Lcom/cleveroad/audiovisualization/Utils;->smooth(FFF)F

    move-result v5

    iput v5, v0, Lcom/cleveroad/audiovisualization/GLWave;->coefficient:F

    .line 130
    iget-object v5, v0, Lcom/cleveroad/audiovisualization/GLWave;->random:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    const v6, 0x3e99999a    # 0.3f

    mul-float v5, v5, v6

    iget-object v6, v0, Lcom/cleveroad/audiovisualization/GLWave;->random:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextBoolean()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v6, -0x1

    :goto_0
    int-to-float v6, v6

    mul-float v5, v5, v6

    iput v5, v0, Lcom/cleveroad/audiovisualization/GLWave;->waveX:F

    .line 132
    :cond_5
    iput v3, v0, Lcom/cleveroad/audiovisualization/GLWave;->prevVal:F

    .line 135
    iget v8, v0, Lcom/cleveroad/audiovisualization/GLWave;->waveX:F

    iget v9, v0, Lcom/cleveroad/audiovisualization/GLWave;->fromX:F

    iget v10, v0, Lcom/cleveroad/audiovisualization/GLWave;->toX:F

    invoke-static {v8, v9, v10}, Lcom/cleveroad/audiovisualization/Utils;->normalizeGl(FFF)F

    move-result v8

    .line 136
    iget v9, v0, Lcom/cleveroad/audiovisualization/GLWave;->fromY:F

    iget v10, v0, Lcom/cleveroad/audiovisualization/GLWave;->toY:F

    invoke-static {v3, v9, v10}, Lcom/cleveroad/audiovisualization/Utils;->normalizeGl(FFF)F

    move-result v3

    :goto_1
    float-to-double v9, v4

    const-wide v11, 0x3fef99999999999aL    # 0.9875

    cmpg-double v13, v9, v11

    if-gez v13, :cond_6

    .line 138
    iget-object v11, v0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    mul-int/lit8 v12, v2, 0x3

    add-int/lit8 v13, v12, 0x1

    sget v14, Lcom/cleveroad/audiovisualization/GLWave;->SKIP:I

    add-int/2addr v14, v13

    aput v1, v11, v14

    .line 139
    iget-object v11, v0, Lcom/cleveroad/audiovisualization/GLWave;->vertexBuffer:Ljava/nio/FloatBuffer;

    sget v14, Lcom/cleveroad/audiovisualization/GLWave;->SKIP:I

    add-int/2addr v12, v14

    iget-object v14, v0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    const/4 v15, 0x6

    aget v14, v14, v15

    iget-object v5, v0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    iget-object v6, v0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    array-length v6, v6

    sub-int/2addr v6, v15

    aget v5, v5, v6

    invoke-static {v4, v14, v8, v5}, Lcom/cleveroad/audiovisualization/Utils;->quad(FFFF)F

    move-result v5

    invoke-virtual {v11, v12, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 140
    iget-object v5, v0, Lcom/cleveroad/audiovisualization/GLWave;->vertexBuffer:Ljava/nio/FloatBuffer;

    sget v6, Lcom/cleveroad/audiovisualization/GLWave;->SKIP:I

    add-int/2addr v13, v6

    iget-object v6, v0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    const/4 v11, 0x7

    aget v6, v6, v11

    iget-object v11, v0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    iget-object v12, v0, Lcom/cleveroad/audiovisualization/GLWave;->vertices:[F

    array-length v12, v12

    add-int/lit8 v12, v12, -0x5

    aget v11, v11, v12

    invoke-static {v4, v6, v3, v11}, Lcom/cleveroad/audiovisualization/Utils;->quad(FFFF)F

    move-result v4

    invoke-virtual {v5, v13, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/2addr v2, v7

    const-wide v4, 0x3f9999999999999aL    # 0.025

    add-double/2addr v9, v4

    double-to-float v6, v9

    move v4, v6

    goto :goto_1

    :cond_6
    return-void
.end method
