.class Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$3;
.super Ljava/lang/Object;
.source "ScrollGalleryView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

.field final synthetic val$listener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$3;->this$0:Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    iput-object p2, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$3;->val$listener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$3;->val$listener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$3;->val$listener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$3;->this$0:Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    iget-object v1, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$3;->this$0:Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;

    invoke-static {v1}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->access$000(Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;->access$100(Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView;Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Lcom/sherdle/universal/attachmentviewer/widgets/ScrollGalleryView$3;->val$listener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    return-void
.end method
