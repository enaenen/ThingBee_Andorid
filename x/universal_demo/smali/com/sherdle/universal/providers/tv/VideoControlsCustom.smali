.class public Lcom/sherdle/universal/providers/tv/VideoControlsCustom;
.super Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;
.source "VideoControlsCustom.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected getLayoutResource()I
    .locals 1

    const v0, 0x7f0b005d

    return v0
.end method

.method public hideSeekBar()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/sherdle/universal/providers/tv/VideoControlsCustom;->seekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 39
    iget-object v0, p0, Lcom/sherdle/universal/providers/tv/VideoControlsCustom;->currentTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    iget-object v0, p0, Lcom/sherdle/universal/providers/tv/VideoControlsCustom;->endTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
