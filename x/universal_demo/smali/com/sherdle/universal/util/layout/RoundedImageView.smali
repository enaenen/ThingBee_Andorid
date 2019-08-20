.class public Lcom/sherdle/universal/util/layout/RoundedImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "RoundedImageView.java"


# instance fields
.field private path:Landroid/graphics/Path;

.field private rect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0}, Lcom/sherdle/universal/util/layout/RoundedImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0}, Lcom/sherdle/universal/util/layout/RoundedImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0}, Lcom/sherdle/universal/util/layout/RoundedImageView;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 33
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sherdle/universal/util/layout/RoundedImageView;->path:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 39
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sherdle/universal/util/layout/RoundedImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/sherdle/universal/util/layout/RoundedImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sherdle/universal/util/layout/RoundedImageView;->rect:Landroid/graphics/RectF;

    .line 40
    invoke-virtual {p0}, Lcom/sherdle/universal/util/layout/RoundedImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 41
    iget-object v1, p0, Lcom/sherdle/universal/util/layout/RoundedImageView;->path:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/sherdle/universal/util/layout/RoundedImageView;->rect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 42
    iget-object v0, p0, Lcom/sherdle/universal/util/layout/RoundedImageView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 43
    iget-object v0, p0, Lcom/sherdle/universal/util/layout/RoundedImageView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 44
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
