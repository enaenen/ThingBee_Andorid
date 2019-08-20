.class abstract Lcom/cleveroad/audiovisualization/GLShape;
.super Ljava/lang/Object;
.source "GLShape.java"


# static fields
.field protected static final COORDS_PER_VERTEX:I = 0x3

.field private static final FRAGMENT_SHADER_CODE:Ljava/lang/String; = "precision mediump float;uniform vec4 vColor;void main() {  gl_FragColor = vColor;}"

.field protected static final SIZE_OF_FLOAT:I = 0x4

.field protected static final SIZE_OF_SHORT:I = 0x2

.field protected static final VERTEX_COLOR:Ljava/lang/String; = "vColor"

.field protected static final VERTEX_POSITION:Ljava/lang/String; = "vPosition"

.field private static final VERTEX_SHADER_CODE:Ljava/lang/String; = "attribute vec4 vPosition;void main() {  gl_Position = vPosition;}"


# instance fields
.field private final color:[F

.field private final program:I


# direct methods
.method public constructor <init>([F)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/cleveroad/audiovisualization/GLShape;->color:[F

    const-string p1, "attribute vec4 vPosition;void main() {  gl_Position = vPosition;}"

    const v0, 0x8b31

    .line 39
    invoke-static {v0, p1}, Lcom/cleveroad/audiovisualization/GLRenderer;->loadShader(ILjava/lang/String;)I

    move-result p1

    const-string v0, "precision mediump float;uniform vec4 vColor;void main() {  gl_FragColor = vColor;}"

    const v1, 0x8b30

    .line 40
    invoke-static {v1, v0}, Lcom/cleveroad/audiovisualization/GLRenderer;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 41
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    iput v1, p0, Lcom/cleveroad/audiovisualization/GLShape;->program:I

    .line 42
    iget v1, p0, Lcom/cleveroad/audiovisualization/GLShape;->program:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 43
    iget p1, p0, Lcom/cleveroad/audiovisualization/GLShape;->program:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 44
    iget p1, p0, Lcom/cleveroad/audiovisualization/GLShape;->program:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    return-void
.end method


# virtual methods
.method protected getColor()[F
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLShape;->color:[F

    return-object v0
.end method

.method protected getProgram()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/cleveroad/audiovisualization/GLShape;->program:I

    return v0
.end method

.method public setColor([F)V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/cleveroad/audiovisualization/GLShape;->color:[F

    iget-object v1, p0, Lcom/cleveroad/audiovisualization/GLShape;->color:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
