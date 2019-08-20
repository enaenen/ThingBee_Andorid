.class Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "ScrollGalleryView.java"


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

    .line 52
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$1;->this$0:Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$1;->this$0:Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    iget-object v1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$1;->this$0:Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    invoke-static {v1}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->access$000(Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->access$100(Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;Landroid/view/View;)V

    return-void
.end method
