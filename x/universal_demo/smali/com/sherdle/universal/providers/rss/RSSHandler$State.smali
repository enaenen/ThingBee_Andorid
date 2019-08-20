.class public final enum Lcom/sherdle/universal/providers/rss/RSSHandler$State;
.super Ljava/lang/Enum;
.source "RSSHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/rss/RSSHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sherdle/universal/providers/rss/RSSHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sherdle/universal/providers/rss/RSSHandler$State;

.field public static final enum description:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

.field public static final enum link:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

.field public static final enum media:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

.field public static final enum pubdate:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

.field public static final enum title:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

.field public static final enum unknown:Lcom/sherdle/universal/providers/rss/RSSHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 150
    new-instance v0, Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    const-string v1, "unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sherdle/universal/providers/rss/RSSHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->unknown:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    new-instance v0, Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    const-string v1, "title"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sherdle/universal/providers/rss/RSSHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->title:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    new-instance v0, Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    const-string v1, "description"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sherdle/universal/providers/rss/RSSHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->description:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    new-instance v0, Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    const-string v1, "link"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sherdle/universal/providers/rss/RSSHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->link:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    new-instance v0, Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    const-string v1, "pubdate"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sherdle/universal/providers/rss/RSSHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->pubdate:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    new-instance v0, Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    const-string v1, "media"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sherdle/universal/providers/rss/RSSHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->media:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    const/4 v0, 0x6

    .line 149
    new-array v0, v0, [Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    sget-object v1, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->unknown:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->title:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->description:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->link:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->pubdate:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->media:Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->$VALUES:[Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sherdle/universal/providers/rss/RSSHandler$State;
    .locals 1

    .line 149
    const-class v0, Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    return-object p0
.end method

.method public static values()[Lcom/sherdle/universal/providers/rss/RSSHandler$State;
    .locals 1

    .line 149
    sget-object v0, Lcom/sherdle/universal/providers/rss/RSSHandler$State;->$VALUES:[Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    invoke-virtual {v0}, [Lcom/sherdle/universal/providers/rss/RSSHandler$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sherdle/universal/providers/rss/RSSHandler$State;

    return-object v0
.end method
