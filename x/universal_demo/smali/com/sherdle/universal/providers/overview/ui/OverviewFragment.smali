.class public Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;
.super Landroid/support/v4/app/Fragment;
.source "OverviewFragment.java"

# interfaces
.implements Lcom/sherdle/universal/providers/overview/CategoryAdapter$OnOverViewClick;


# instance fields
.field private horizontalDec:Landroid/support/v7/widget/DividerItemDecoration;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sherdle/universal/drawer/NavItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private multipleItemAdapter:Lcom/sherdle/universal/providers/overview/CategoryAdapter;

.field private overviewString:Ljava/lang/String;

.field private recyclerListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private rl:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;)Landroid/support/v7/widget/DividerItemDecoration;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->horizontalDec:Landroid/support/v7/widget/DividerItemDecoration;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->overviewString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;)Lcom/sherdle/universal/providers/overview/CategoryAdapter;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->multipleItemAdapter:Lcom/sherdle/universal/providers/overview/CategoryAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->items:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public loadItems()V
    .locals 4

    .line 107
    new-instance v0, Lcom/sherdle/universal/providers/overview/OverviewParser;

    iget-object v1, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->overviewString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment$2;

    invoke-direct {v3, p0}, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment$2;-><init>(Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/sherdle/universal/providers/overview/OverviewParser;-><init>(Ljava/lang/String;Landroid/app/Activity;Lcom/sherdle/universal/providers/overview/OverviewParser$CallBack;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 122
    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/overview/OverviewParser;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 127
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 128
    iget-object p1, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->recyclerListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const p2, 0x7f0b0051

    const/4 p3, 0x0

    .line 54
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->rl:Landroid/widget/RelativeLayout;

    const/4 p1, 0x1

    .line 55
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->setHasOptionsMenu(Z)V

    .line 56
    iget-object p2, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->rl:Landroid/widget/RelativeLayout;

    const p3, 0x7f0900e2

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 58
    new-instance p2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p2, p1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;-><init>(II)V

    .line 59
    iget-object p3, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 60
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->items:Ljava/util/ArrayList;

    .line 61
    new-instance p3, Lcom/sherdle/universal/providers/overview/CategoryAdapter;

    iget-object v0, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->items:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v0, v1, p0}, Lcom/sherdle/universal/providers/overview/CategoryAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Lcom/sherdle/universal/providers/overview/CategoryAdapter$OnOverViewClick;)V

    iput-object p3, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->multipleItemAdapter:Lcom/sherdle/universal/providers/overview/CategoryAdapter;

    .line 62
    iget-object p3, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->multipleItemAdapter:Lcom/sherdle/universal/providers/overview/CategoryAdapter;

    invoke-virtual {p3, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 63
    iget-object p3, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->multipleItemAdapter:Lcom/sherdle/universal/providers/overview/CategoryAdapter;

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Lcom/sherdle/universal/providers/overview/CategoryAdapter;->setModeAndNotify(I)V

    .line 65
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    sget-object v0, Lcom/sherdle/universal/MainActivity;->FRAGMENT_DATA:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aget-object p3, p3, v0

    iput-object p3, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->overviewString:Ljava/lang/String;

    .line 67
    new-instance p3, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment$1;

    invoke-direct {p3, p0, p2}, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment$1;-><init>(Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object p3, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->recyclerListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 90
    iget-object p2, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    iget-object p3, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->recyclerListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 92
    new-instance p2, Landroid/support/v7/widget/DividerItemDecoration;

    iget-object p3, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, v0}, Landroid/support/v7/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->horizontalDec:Landroid/support/v7/widget/DividerItemDecoration;

    .line 95
    new-instance p2, Landroid/support/v7/widget/DividerItemDecoration;

    iget-object p3, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Landroid/support/v7/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 97
    iget-object p1, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 101
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->loadItems()V

    .line 103
    iget-object p1, p0, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->rl:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method public onOverViewSelected(Lcom/sherdle/universal/drawer/NavItem;)V
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/overview/ui/OverviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sherdle/universal/drawer/NavItem;->getFragment()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sherdle/universal/drawer/NavItem;->getData()[Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sherdle/universal/HolderActivity;->startActivity(Landroid/content/Context;Ljava/lang/Class;[Ljava/lang/String;)V

    return-void
.end method
