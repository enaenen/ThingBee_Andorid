.class Lcom/sherdle/universal/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/MainActivity;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/MainActivity;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/sherdle/universal/MainActivity$3;->this$0:Lcom/sherdle/universal/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 228
    new-instance v0, Lcom/rubengees/introduction/IntroductionBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/MainActivity$3;->this$0:Lcom/sherdle/universal/MainActivity;

    invoke-direct {v0, v1}, Lcom/rubengees/introduction/IntroductionBuilder;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/sherdle/universal/MainActivity$3;->this$0:Lcom/sherdle/universal/MainActivity;

    invoke-static {v1}, Lcom/sherdle/universal/MainActivity;->access$300(Lcom/sherdle/universal/MainActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rubengees/introduction/IntroductionBuilder;->withSlides(Ljava/util/List;)Lcom/rubengees/introduction/IntroductionBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rubengees/introduction/IntroductionBuilder;->introduceMyself()V

    return-void
.end method
