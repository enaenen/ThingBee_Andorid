.class public Lcom/sherdle/universal/providers/fav/ui/FavFragment;
.super Landroid/support/v4/app/ListFragment;
.source "FavFragment.java"


# static fields
.field private static final ACTIVITY_CREATE:I = 0x0

.field private static final ACTIVITY_EDIT:I = 0x1

.field private static final DELETE_ID:I = 0x2

.field private static final INSERT_ID:I = 0x1


# instance fields
.field private ll:Landroid/widget/LinearLayout;

.field private mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter;

.field menu:Ljava/lang/String;

.field noconnection:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sherdle/universal/providers/fav/ui/FavFragment;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sherdle/universal/providers/fav/ui/FavFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->fillData()V

    return-void
.end method

.method private fillData()V
    .locals 7

    .line 74
    iget-object v0, p0, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->getFavorites()Landroid/database/Cursor;

    move-result-object v4

    .line 75
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentActivity;->startManagingCursor(Landroid/database/Cursor;)V

    const/4 v0, 0x1

    .line 77
    new-array v5, v0, [Ljava/lang/String;

    const-string v1, "title"

    const/4 v2, 0x0

    aput-object v1, v5, v2

    .line 79
    new-array v6, v0, [I

    const v0, 0x7f090190

    aput v0, v6, v2

    .line 81
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    .line 82
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0b004f

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 83
    invoke-virtual {p0, v0}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private openActivity(Ljava/lang/Long;)V
    .locals 3

    .line 147
    new-instance v0, Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v0}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->open()Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    .line 150
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->getFavorite(J)Landroid/database/Cursor;

    move-result-object p1

    .line 151
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->startManagingCursor(Landroid/database/Cursor;)V

    const-string v0, "title"

    .line 152
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v0, "obj"

    .line 153
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->readSerializedObject([B)Ljava/io/Serializable;

    move-result-object v0

    const-string v1, "cat"

    .line 154
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/4 v1, 0x4

    if-ne v1, p1, :cond_0

    .line 157
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/sherdle/universal/providers/youtube/ui/YoutubeDetailActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "videoitem"

    .line 158
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 161
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/sherdle/universal/providers/rss/ui/RssDetailActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "postitem"

    .line 162
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v1, p1, :cond_2

    .line 165
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v2, v1}, Lcom/sherdle/universal/HolderActivity;->startWebViewActivity(Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne v1, p1, :cond_3

    .line 167
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/sherdle/universal/providers/wordpress/ui/WordpressDetailActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "postitem"

    .line 168
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne v1, p1, :cond_4

    .line 171
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/sherdle/universal/providers/woocommerce/ui/ProductActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "product"

    .line 172
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 66
    new-instance p1, Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    .line 67
    iget-object p1, p0, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->open()Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    .line 68
    invoke-direct {p0}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->fillData()V

    .line 69
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 142
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/ListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 143
    invoke-direct {p0}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->fillData()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 131
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 126
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    check-cast p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 127
    iget-object v0, p0, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    iget-wide v1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->deleteFav(J)Z

    .line 128
    invoke-direct {p0}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->fillData()V

    const/4 p1, 0x1

    return p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 118
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/ListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    const-string p2, "Delete"

    const/4 p3, 0x0

    const/4 v0, 0x2

    .line 119
    invoke-interface {p1, p3, v0, p3, p2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const v0, 0x7f0c0001

    .line 88
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 89
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sherdle/universal/util/ThemeUtils;->tintAllIcons(Landroid/view/Menu;Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b004e

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->ll:Landroid/widget/LinearLayout;

    const/4 p1, 0x1

    .line 58
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->setHasOptionsMenu(Z)V

    .line 60
    iget-object p1, p0, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->ll:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 136
    invoke-super/range {p0 .. p5}, Landroid/support/v4/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 137
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->openActivity(Ljava/lang/Long;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 94
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09004e

    if-eq v0, v1, :cond_0

    .line 111
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 96
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sherdle/universal/providers/fav/ui/FavFragment$1;

    invoke-direct {v2, p0}, Lcom/sherdle/universal/providers/fav/ui/FavFragment$1;-><init>(Lcom/sherdle/universal/providers/fav/ui/FavFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 105
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 107
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 108
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v1
.end method
