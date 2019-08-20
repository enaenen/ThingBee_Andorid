.class Lcom/cleveroad/audiovisualization/GLRectangle;
.super Lcom/cleveroad/audiovisualization/GLShape;
.source "GLRectangle.java"


# instance fields
.field private final shortBuffer:Ljava/nio/ShortBuffer;

.field private final vertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>([FFFFF)V
    .locals 8

    .line 19
    invoke-direct {p0, p1}, Lcom/cleveroad/audiovisualization/GLShape;-><init>([F)V

    const/16 p1, 0xc

    .line 20
    new-array p1, p1, [F

    const/high16 v0, -0x40800000    # -1.0f

    .line 21
    invoke-static {v0, p2, p3}, Lcom/cleveroad/audiovisualization/Utils;->normalizeGl(FFF)F

    move-result v1

    const/4 v2, 0x0

    aput v1, p1, v2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p4, p5}, Lcom/cleveroad/audiovisualization/Utils;->normalizeGl(FFF)F

    move-result v3

    const/4 v4, 0x1

    aput v3, p1, v4

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput v4, p1, v3

    .line 22
    invoke-static {v0, p2, p3}, Lcom/cleveroad/audiovisualization/Utils;->normalizeGl(FFF)F

    move-result v5

    const/4 v6, 0x3

    aput v5, p1, v6

    invoke-static {v0, p4, p5}, Lcom/cleveroad/audiovisualization/Utils;->normalizeGl(FFF)F

    move-result v5

    const/4 v6, 0x4

    aput v5, p1, v6

    const/4 v5, 0x5

    aput v4, p1, v5

    .line 23
    invoke-static {v1, p2, p3}, Lcom/cleveroad/audiovisualization/Utils;->normalizeGl(FFF)F

    move-result v5

    const/4 v7, 0x6

    aput v5, p1, v7

    invoke-static {v0, p4, p5}, Lcom/cleveroad/audiovisualization/Utils;->normalizeGl(FFF)F

    move-result v0

    const/4 v5, 0x7

    aput v0, p1, v5

    const/16 v0, 0x8

    aput v4, p1, v0

    .line 24
    invoke-static {v1, p2, p3}, Lcom/cleveroad/audiovisualization/Utils;->normalizeGl(FFF)F

    move-result p2

    const/16 p3, 0x9

    aput p2, p1, p3

    invoke-static {v1, p4, p5}, Lcom/cleveroad/audiovisualization/Utils;->normalizeGl(FFF)F

    move-result p2

    const/16 p3, 0xa

    aput p2, p1, p3

    const/16 p2, 0xb

    aput v4, p1, p2

    .line 26
    array-length p2, p1

    mul-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 27
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/cleveroad/audiovisualization/GLRectangle;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 29
    iget-object p2, p0, Lcom/cleveroad/audiovisualization/GLRectangle;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 30
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/GLRectangle;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 31
    new-array p1, v7, [S

    fill-array-data p1, :array_0

    .line 32
    array-length p2, p1

    mul-int/lit8 p2, p2, 0x2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 33
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 34
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/cleveroad/audiovisualization/GLRectangle;->shortBuffer:Ljava/nio/ShortBuffer;

    .line 35
    iget-object p2, p0, Lcom/cleveroad/audiovisualization/GLRectangle;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 36
    iget-object p1, p0, Lcom/cleveroad/audiovisualization/GLRectangle;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data
.end method


# virtual methods
.method public draw()V
    .locals 8

    .line 43
    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/GLRectangle;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 44
    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/GLRectangle;->getProgram()I

    move-result v0

    const-string v1, "vPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    .line 45
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 46
    iget-object v7, p0, Lcom/cleveroad/audiovisualization/GLRectangle;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0xc

    move v2, v0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 47
    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/GLRectangle;->getProgram()I

    move-result v1

    const-string v2, "vColor"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    .line 48
    invoke-virtual {p0}, Lcom/cleveroad/audiovisualization/GLRectangle;->getColor()[F

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 49
    iget-object v1, p0, Lcom/cleveroad/audiovisualization/GLRectangle;->shortBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Lcom/cleveroad/audiovisualization/GLRectangle;->shortBuffer:Ljava/nio/ShortBuffer;

    const/4 v3, 0x6

    const/16 v4, 0x1403

    invoke-static {v3, v1, v4, v2}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 50
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    return-void
.end method
