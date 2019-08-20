.class Lcom/sherdle/universal/providers/fav/ui/FavFragment$1;
.super Ljava/lang/Object;
.source "FavFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/providers/fav/ui/FavFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/providers/fav/ui/FavFragment;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/providers/fav/ui/FavFragment;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/sherdle/universal/providers/fav/ui/FavFragment$1;->this$0:Lcom/sherdle/universal/providers/fav/ui/FavFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 101
    iget-object p1, p0, Lcom/sherdle/universal/providers/fav/ui/FavFragment$1;->this$0:Lcom/sherdle/universal/providers/fav/ui/FavFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->access$000(Lcom/sherdle/universal/providers/fav/ui/FavFragment;)Lcom/sherdle/universal/providers/fav/FavDbAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->emptyDatabase()V

    .line 102
    iget-object p1, p0, Lcom/sherdle/universal/providers/fav/ui/FavFragment$1;->this$0:Lcom/sherdle/universal/providers/fav/ui/FavFragment;

    invoke-static {p1}, Lcom/sherdle/universal/providers/fav/ui/FavFragment;->access$100(Lcom/sherdle/universal/providers/fav/ui/FavFragment;)V

    return-void
.end method
