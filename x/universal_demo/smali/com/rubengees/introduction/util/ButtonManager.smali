.class public Lcom/rubengees/introduction/util/ButtonManager;
.super Ljava/lang/Object;
.source "ButtonManager.java"

# interfaces
.implements Lcom/rubengees/introduction/interfaces/ViewPagerProcessor;


# instance fields
.field private next:Landroid/widget/ImageButton;

.field private previous:Landroid/widget/ImageButton;

.field private showPreviousButton:Z

.field private showSkipButton:Z

.field private skip:Landroid/widget/Button;

.field private final slideAmount:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/Button;ZZI)V
    .locals 0
    .param p1    # Landroid/widget/ImageButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/widget/Button;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/rubengees/introduction/util/ButtonManager;->previous:Landroid/widget/ImageButton;

    .line 51
    iput-object p2, p0, Lcom/rubengees/introduction/util/ButtonManager;->next:Landroid/widget/ImageButton;

    .line 52
    iput-object p3, p0, Lcom/rubengees/introduction/util/ButtonManager;->skip:Landroid/widget/Button;

    .line 53
    iput-boolean p4, p0, Lcom/rubengees/introduction/util/ButtonManager;->showPreviousButton:Z

    .line 54
    iput-boolean p5, p0, Lcom/rubengees/introduction/util/ButtonManager;->showSkipButton:Z

    .line 55
    iput p6, p0, Lcom/rubengees/introduction/util/ButtonManager;->slideAmount:I

    .line 57
    invoke-direct {p0}, Lcom/rubengees/introduction/util/ButtonManager;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 61
    iget-boolean v0, p0, Lcom/rubengees/introduction/util/ButtonManager;->showPreviousButton:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/rubengees/introduction/util/ButtonManager;->previous:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/rubengees/introduction/util/ButtonManager;->previous:Landroid/widget/ImageButton;

    sget v2, Lcom/rubengees/introduction/R$drawable;->introduction_ic_arrow_previous:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/rubengees/introduction/util/ButtonManager;->previous:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 68
    :goto_0
    iget-boolean v0, p0, Lcom/rubengees/introduction/util/ButtonManager;->showSkipButton:Z

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/rubengees/introduction/util/ButtonManager;->skip:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/rubengees/introduction/util/ButtonManager;->skip:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 74
    :goto_1
    iget-object v0, p0, Lcom/rubengees/introduction/util/ButtonManager;->next:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public select(I)V
    .locals 3

    .line 83
    iget-boolean v0, p0, Lcom/rubengees/introduction/util/ButtonManager;->showPreviousButton:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-lez p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/rubengees/introduction/util/ButtonManager;->previous:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/rubengees/introduction/util/ButtonManager;->previous:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 91
    :cond_1
    :goto_0
    iget v0, p0, Lcom/rubengees/introduction/util/ButtonManager;->slideAmount:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_2

    .line 92
    iget-object p1, p0, Lcom/rubengees/introduction/util/ButtonManager;->next:Landroid/widget/ImageButton;

    sget v0, Lcom/rubengees/introduction/R$drawable;->introduction_ic_arrow_next:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 94
    iget-boolean p1, p0, Lcom/rubengees/introduction/util/ButtonManager;->showSkipButton:Z

    if-eqz p1, :cond_3

    .line 95
    iget-object p1, p0, Lcom/rubengees/introduction/util/ButtonManager;->skip:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/rubengees/introduction/util/ButtonManager;->next:Landroid/widget/ImageButton;

    sget v0, Lcom/rubengees/introduction/R$drawable;->introduction_ic_done:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 100
    iget-boolean p1, p0, Lcom/rubengees/introduction/util/ButtonManager;->showSkipButton:Z

    if-eqz p1, :cond_3

    .line 101
    iget-object p1, p0, Lcom/rubengees/introduction/util/ButtonManager;->skip:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method
