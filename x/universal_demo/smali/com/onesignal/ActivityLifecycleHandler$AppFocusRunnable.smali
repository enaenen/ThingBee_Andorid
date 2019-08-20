.class Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;
.super Ljava/lang/Object;
.source "ActivityLifecycleHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/ActivityLifecycleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppFocusRunnable"
.end annotation


# instance fields
.field private backgrounded:Z

.field private completed:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/onesignal/ActivityLifecycleHandler$1;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)Z
    .locals 0

    .line 163
    iget-boolean p0, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->backgrounded:Z

    return p0
.end method

.method static synthetic access$102(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;Z)Z
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->backgrounded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;)Z
    .locals 0

    .line 163
    iget-boolean p0, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->completed:Z

    return p0
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 167
    sget-object v0, Lcom/onesignal/ActivityLifecycleHandler;->curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->backgrounded:Z

    .line 171
    invoke-static {}, Lcom/onesignal/OneSignal;->onAppLostFocus()Z

    .line 172
    iput-boolean v0, p0, Lcom/onesignal/ActivityLifecycleHandler$AppFocusRunnable;->completed:Z

    return-void
.end method
