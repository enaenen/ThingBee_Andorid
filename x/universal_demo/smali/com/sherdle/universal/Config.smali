.class public Lcom/sherdle/universal/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final ADMOB_YOUTUBE:Z = false

.field public static BACKGROUND_IMAGE_ID:I = 0x7f0800fa

.field public static BOTTOM_TABS:Z = false

.field public static final CONFIG_URL:Ljava/lang/String; = ""

.field public static final DRAWER_OPEN_START:Z = false

.field public static final EDITABLE_VIEWMODE:Z = true

.field public static final FORCE_HIDE_NAVIGATION:Z = false

.field public static final HIDE_DRAWER:Z = false

.field public static final HIDE_TOOLBAR:Z = false

.field public static final INTERSTITIAL_INTERVAL:I = 0x2

.field public static LIGHT_TOOLBAR_THEME:Z = true

.field public static final OPEN_EXPLICIT_EXTERNAL:Z = true

.field public static final OPEN_INLINE_EXTERNAL:Z = false

.field public static final RSS_ROW_MODE:I = 0x1

.field public static final TABLET_LAYOUT:Z = true

.field public static USE_HARDCODED_CONFIG:Z = false

.field public static VISUALIZER_ENABLED:Z = true

.field public static final WC_CHIPS:Z = true

.field public static final WC_CURRENCY:Ljava/lang/String; = "$"

.field public static final WC_ROW_MODE:I = 0x1

.field public static final WEBVIEW_GEOLOCATION:Z = false

.field public static final WP_ATTACHMENTS_BUTTON:Z = false

.field public static final WP_CHIPS:Z = true

.field public static final WP_ROW_MODE:I = 0x1

.field public static final YT_ROW_MODE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureMenu(Lcom/sherdle/universal/drawer/SimpleMenu;Lcom/sherdle/universal/ConfigParser$CallBack;)V
    .locals 0

    const/4 p0, 0x0

    .line 115
    invoke-interface {p1, p0}, Lcom/sherdle/universal/ConfigParser$CallBack;->configLoaded(Z)V

    return-void
.end method
