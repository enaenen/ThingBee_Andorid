.class Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/senab/photoview/PhotoViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedZoomRunnable"
.end annotation


# instance fields
.field private final mFocalX:F

.field private final mFocalY:F

.field private final mStartTime:J

.field private final mZoomEnd:F

.field private final mZoomStart:F

.field final synthetic this$0:Luk/co/senab/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Luk/co/senab/photoview/PhotoViewAttacher;FFFF)V
    .locals 0

    .line 1068
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1069
    iput p4, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    .line 1070
    iput p5, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    .line 1071
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mStartTime:J

    .line 1072
    iput p2, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    .line 1073
    iput p3, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomEnd:F

    return-void
.end method

.method private interpolate()F
    .locals 6

    .line 1096
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mStartTime:J

    sub-long v4, v0, v2

    long-to-float v0, v4

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    iget v2, v2, Luk/co/senab/photoview/PhotoViewAttacher;->ZOOM_DURATION:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 1097
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1098
    iget-object v1, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-static {v1}, Luk/co/senab/photoview/PhotoViewAttacher;->access$200(Luk/co/senab/photoview/PhotoViewAttacher;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1078
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1083
    :cond_0
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->interpolate()F

    move-result v1

    .line 1084
    iget v2, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    iget v3, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomEnd:F

    iget v4, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    sub-float/2addr v3, v4

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    .line 1085
    iget-object v3, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    .line 1087
    iget-object v3, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Luk/co/senab/photoview/PhotoViewAttacher;

    iget v4, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    iget v5, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    invoke-virtual {v3, v2, v4, v5}, Luk/co/senab/photoview/PhotoViewAttacher;->onScale(FFF)V

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 1091
    invoke-static {v0, p0}, Luk/co/senab/photoview/Compat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
