.class Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$2;
.super Ljava/lang/Object;
.source "ScrollGalleryView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$2;->this$0:Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$2;->this$0:Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    invoke-static {v0, p1}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->access$100(Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$2;->this$0:Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    invoke-static {v0}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->access$200(Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
