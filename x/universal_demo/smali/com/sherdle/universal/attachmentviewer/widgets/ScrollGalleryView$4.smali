.class Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$4;
.super Ljava/lang/Object;
.source "ScrollGalleryView.java"

# interfaces
.implements Lcom/sherdle/universal/attachmentviewer/loader/MediaLoader$SuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->addMedia(Ljava/util/List;)Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

.field final synthetic val$thumbnail:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;Landroid/widget/ImageView;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$4;->this$0:Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    iput-object p2, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$4;->val$thumbnail:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$4;->val$thumbnail:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method
