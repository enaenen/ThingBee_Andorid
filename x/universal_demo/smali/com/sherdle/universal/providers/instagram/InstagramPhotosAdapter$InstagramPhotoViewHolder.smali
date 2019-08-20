.class Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "InstagramPhotosAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstagramPhotoViewHolder"
.end annotation


# instance fields
.field commentsBtn:Landroid/widget/ImageView;

.field commentsCountView:Landroid/widget/TextView;

.field dateView:Landroid/widget/TextView;

.field descriptionView:Landroid/widget/TextView;

.field inlineImg:Landroid/widget/ImageView;

.field inlineImgBtn:Landroid/support/design/widget/FloatingActionButton;

.field likesCountView:Landroid/widget/TextView;

.field openBtn:Landroid/widget/ImageView;

.field profileImg:Landroid/widget/ImageView;

.field shareBtn:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;

.field userNameView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;Landroid/view/View;)V
    .locals 1

    .line 170
    iput-object p1, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->this$0:Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter;

    .line 171
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09013a

    .line 173
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->profileImg:Landroid/widget/ImageView;

    const p1, 0x7f090100

    .line 174
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->userNameView:Landroid/widget/TextView;

    const p1, 0x7f090060

    .line 175
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->dateView:Landroid/widget/TextView;

    const p1, 0x7f090121

    .line 176
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->inlineImg:Landroid/widget/ImageView;

    const p1, 0x7f09012f

    .line 177
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/FloatingActionButton;

    iput-object p1, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->inlineImgBtn:Landroid/support/design/widget/FloatingActionButton;

    const p1, 0x7f0900dd

    .line 178
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->likesCountView:Landroid/widget/TextView;

    const p1, 0x7f0900fb

    .line 179
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->descriptionView:Landroid/widget/TextView;

    .line 180
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->descriptionView:Landroid/widget/TextView;

    const p1, 0x7f09016a

    .line 181
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->shareBtn:Landroid/widget/ImageView;

    const p1, 0x7f09010d

    .line 182
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->openBtn:Landroid/widget/ImageView;

    const p1, 0x7f090053

    .line 183
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->commentsBtn:Landroid/widget/ImageView;

    const p1, 0x7f090054

    .line 184
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sherdle/universal/providers/instagram/InstagramPhotosAdapter$InstagramPhotoViewHolder;->commentsCountView:Landroid/widget/TextView;

    return-void
.end method
