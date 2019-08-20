.class public Lcom/sherdle/universal/util/ViewModeUtils;
.super Ljava/lang/Object;
.source "ViewModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/util/ViewModeUtils$ChangeListener;
    }
.end annotation


# static fields
.field public static final COMPACT:I = 0x0

.field public static final IMMERSIVE:I = 0x2

.field public static final NORMAL:I = 0x1

.field public static final UNKNOWN:I = -0x1


# instance fields
.field private context:Landroid/content/Context;

.field private mClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sherdle/universal/util/ViewModeUtils;->context:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/sherdle/universal/util/ViewModeUtils;->mClass:Ljava/lang/Class;

    return-void
.end method

.method private getFromPreferences()I
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/sherdle/universal/util/ViewModeUtils;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/util/ViewModeUtils;->mClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private immersiveSupported()Z
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/sherdle/universal/util/ViewModeUtils;->mClass:Ljava/lang/Class;

    const-class v1, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sherdle/universal/util/ViewModeUtils;->mClass:Ljava/lang/Class;

    const-class v1, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public getViewMode()I
    .locals 5

    .line 89
    invoke-direct {p0}, Lcom/sherdle/universal/util/ViewModeUtils;->getFromPreferences()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/sherdle/universal/util/ViewModeUtils;->mClass:Ljava/lang/Class;

    const-class v3, Lcom/sherdle/universal/providers/wordpress/ui/WordpressFragment;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/sherdle/universal/util/ViewModeUtils;->mClass:Ljava/lang/Class;

    const-class v4, Lcom/sherdle/universal/providers/rss/ui/RssFragment;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 96
    :cond_2
    iget-object v2, p0, Lcom/sherdle/universal/util/ViewModeUtils;->mClass:Ljava/lang/Class;

    const-class v4, Lcom/sherdle/universal/providers/youtube/ui/YoutubeFragment;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 98
    :cond_3
    iget-object v2, p0, Lcom/sherdle/universal/util/ViewModeUtils;->mClass:Ljava/lang/Class;

    const-class v4, Lcom/sherdle/universal/providers/woocommerce/ui/WooCommerceFragment;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 102
    invoke-direct {p0}, Lcom/sherdle/universal/util/ViewModeUtils;->immersiveSupported()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    if-ne v0, v1, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method public handleSelection(Landroid/view/MenuItem;Lcom/sherdle/universal/util/ViewModeUtils$ChangeListener;)Z
    .locals 4

    .line 58
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090055

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x7f0900c0

    if-eq v0, v1, :cond_1

    const v1, 0x7f090106

    if-eq v0, v1, :cond_0

    return v2

    .line 65
    :cond_0
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 66
    invoke-virtual {p0, v3}, Lcom/sherdle/universal/util/ViewModeUtils;->saveToPreferences(I)V

    .line 67
    invoke-interface {p2}, Lcom/sherdle/universal/util/ViewModeUtils$ChangeListener;->modeChanged()V

    return v3

    .line 60
    :cond_1
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    const/4 p1, 0x2

    .line 61
    invoke-virtual {p0, p1}, Lcom/sherdle/universal/util/ViewModeUtils;->saveToPreferences(I)V

    .line 62
    invoke-interface {p2}, Lcom/sherdle/universal/util/ViewModeUtils$ChangeListener;->modeChanged()V

    return v3

    .line 70
    :cond_2
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 71
    invoke-virtual {p0, v2}, Lcom/sherdle/universal/util/ViewModeUtils;->saveToPreferences(I)V

    .line 72
    invoke-interface {p2}, Lcom/sherdle/universal/util/ViewModeUtils$ChangeListener;->modeChanged()V

    return v3
.end method

.method public inflateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const v0, 0x7f0c000b

    .line 35
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 36
    invoke-direct {p0}, Lcom/sherdle/universal/util/ViewModeUtils;->immersiveSupported()Z

    move-result p2

    const v0, 0x7f0900c0

    if-nez p2, :cond_0

    .line 37
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/sherdle/universal/util/ViewModeUtils;->getViewMode()I

    move-result p2

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 44
    :pswitch_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :pswitch_1
    const p2, 0x7f090106

    .line 41
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_0

    :pswitch_2
    const p2, 0x7f090055

    .line 47
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public saveToPreferences(I)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/sherdle/universal/util/ViewModeUtils;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/sherdle/universal/util/ViewModeUtils;->mClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
