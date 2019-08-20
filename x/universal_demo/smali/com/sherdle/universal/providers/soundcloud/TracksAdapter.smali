.class public Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;
.super Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;
.source "TracksAdapter.java"

# interfaces
.implements Lcom/sherdle/universal/providers/soundcloud/player/player/CheerleaderPlayerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$HeaderHolder;,
        Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$FooterHolder;,
        Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$TrackHolder;,
        Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$Holder;
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_FOOTER:I = 0x3

.field private static final VIEW_TYPE_HEADER:I = 0x2

.field private static final VIEW_TYPE_TRACK:I = 0x1


# instance fields
.field private mFooterView:Landroid/view/View;

.field private mHeaderView:Landroid/view/View;

.field private mListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;

.field private mPlayedTrackPosition:I

.field private mTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;",
            "Ljava/util/List<",
            "Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter;-><init>(Landroid/content/Context;Lcom/sherdle/universal/util/InfiniteRecyclerViewAdapter$LoadMoreListener;)V

    .line 59
    iput-object p3, p0, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->mTracks:Ljava/util/List;

    const/4 p1, -0x1

    .line 60
    iput p1, p0, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->mPlayedTrackPosition:I

    .line 61
    iput-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->mListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;

    return-void
.end method


# virtual methods
.method protected doBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 103
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 128
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled view type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->mHeaderView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    check-cast p1, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$TrackHolder;

    invoke-static {p1}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$TrackHolder;->access$300(Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$TrackHolder;)Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;

    move-result-object v3

    iget-object v4, p0, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->mTracks:Ljava/util/List;

    sub-int v0, p2, v0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;

    invoke-virtual {v3, v0}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->setModel(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;)V

    .line 107
    iget v0, p0, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->mPlayedTrackPosition:I

    if-ne p2, v0, :cond_1

    .line 108
    invoke-static {p1}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$TrackHolder;->access$300(Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$TrackHolder;)Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;

    move-result-object v0

    const v1, 0x7f080101

    .line 109
    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->setBackgroundResource(I)V

    .line 110
    invoke-static {p1}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$TrackHolder;->access$300(Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$TrackHolder;)Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->setSelected(Z)V

    goto :goto_1

    .line 112
    :cond_1
    invoke-static {p1}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$TrackHolder;->access$300(Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$TrackHolder;)Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;

    move-result-object v0

    const v2, 0x7f080102

    .line 113
    invoke-virtual {v0, v2}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->setBackgroundResource(I)V

    .line 114
    invoke-static {p1}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$TrackHolder;->access$300(Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$TrackHolder;)Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->setSelected(Z)V

    :goto_1
    if-nez p2, :cond_2

    .line 119
    invoke-static {p1}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$TrackHolder;->access$300(Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$TrackHolder;)Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;

    move-result-object p1

    const p2, 0x7f09006e

    invoke-virtual {p1, p2}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected getCount()I
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->mHeaderView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 135
    :goto_0
    iget-object v3, p0, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->mFooterView:Landroid/view/View;

    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 136
    :cond_1
    iget-object v2, p0, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->mTracks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    return v0
.end method

.method protected getViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    .line 96
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View type not handled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :pswitch_0
    new-instance p1, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$FooterHolder;

    iget-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->mFooterView:Landroid/view/View;

    invoke-direct {p1, p2, v0}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$FooterHolder;-><init>(Landroid/view/View;Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$1;)V

    goto :goto_0

    .line 90
    :pswitch_1
    new-instance p1, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$HeaderHolder;

    iget-object p2, p0, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->mHeaderView:Landroid/view/View;

    invoke-direct {p1, p2, v0}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$HeaderHolder;-><init>(Landroid/view/View;Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$1;)V

    goto :goto_0

    .line 80
    :pswitch_2
    new-instance p2, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;-><init>(Landroid/content/Context;)V

    .line 81
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->mListener:Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;

    invoke-virtual {p2, p1}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->setListener(Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView$Listener;)V

    .line 82
    new-instance p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance p1, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$TrackHolder;

    invoke-direct {p1, p2, v0}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$TrackHolder;-><init>(Lcom/sherdle/universal/providers/soundcloud/ui/views/TrackView;Lcom/sherdle/universal/providers/soundcloud/TracksAdapter$1;)V

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getViewType(I)I
    .locals 2

    if-nez p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->mFooterView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    return v1
.end method

.method public onBufferingEnded()V
    .locals 0

    return-void
.end method

.method public onBufferingStarted()V
    .locals 0

    return-void
.end method

.method public onDurationChanged(J)V
    .locals 0

    return-void
.end method

.method public onPlayerDestroyed()V
    .locals 0

    return-void
.end method

.method public onPlayerPause()V
    .locals 0

    return-void
.end method

.method public onPlayerPlay(Lcom/sherdle/universal/providers/soundcloud/api/object/TrackObject;I)V
    .locals 0

    .line 145
    iget-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->mHeaderView:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    add-int/2addr p2, p1

    .line 146
    iput p2, p0, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->mPlayedTrackPosition:I

    .line 147
    invoke-virtual {p0}, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onPlayerSeekTo(I)V
    .locals 0

    return-void
.end method

.method public onProgressChanged(I)V
    .locals 0

    return-void
.end method

.method public setFooterView(Landroid/view/View;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->mFooterView:Landroid/view/View;

    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/sherdle/universal/providers/soundcloud/TracksAdapter;->mHeaderView:Landroid/view/View;

    return-void
.end method
