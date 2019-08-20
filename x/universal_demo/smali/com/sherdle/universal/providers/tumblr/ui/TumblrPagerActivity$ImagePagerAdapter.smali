.class Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "TumblrPagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImagePagerAdapter"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private images:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/tumblr/TumblrItem;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const-class v0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;

    return-void
.end method

.method constructor <init>(Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/providers/tumblr/TumblrItem;",
            ">;)V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;->this$0:Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;->images:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {p1}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;->images:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 93
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 13

    .line 103
    iget-object v0, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;->inflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f0b0029

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0900ba

    .line 105
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f09003b

    .line 107
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/Button;

    const v3, 0x7f09003a

    .line 108
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/Button;

    const v3, 0x7f090039

    .line 109
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/widget/Button;

    const v3, 0x7f0900e9

    .line 111
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/widget/ProgressBar;

    .line 113
    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 114
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v3

    iget-object v4, p0, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;->images:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sherdle/universal/providers/tumblr/TumblrItem;

    invoke-virtual {v4}, Lcom/sherdle/universal/providers/tumblr/TumblrItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v11

    new-instance v12, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;

    move-object v3, v12

    move-object v4, p0

    move-object v6, v2

    move v8, p2

    invoke-direct/range {v3 .. v9}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$1;-><init>(Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/Button;ILandroid/widget/Button;)V

    invoke-virtual {v11, v2, v12}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    .line 167
    new-instance p2, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$2;

    invoke-direct {p2, p0, v2}, Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter$2;-><init>(Lcom/sherdle/universal/providers/tumblr/ui/TumblrPagerActivity$ImagePagerAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v10, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 198
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
