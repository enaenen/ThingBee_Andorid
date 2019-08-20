.class public final enum Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;
.super Ljava/lang/Enum;
.source "PostItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sherdle/universal/providers/wordpress/PostItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PostType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

.field public static final enum JETPACK:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

.field public static final enum JSON:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

.field public static final enum REST:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

.field public static final enum SLIDER:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    const-string v1, "JETPACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->JETPACK:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    new-instance v0, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    const-string v1, "JSON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->JSON:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    new-instance v0, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    const-string v1, "REST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->REST:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    new-instance v0, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    const-string v1, "SLIDER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->SLIDER:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    sget-object v1, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->JETPACK:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->JSON:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->REST:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->SLIDER:Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->$VALUES:[Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;
    .locals 1

    .line 15
    const-class v0, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    return-object p0
.end method

.method public static values()[Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;
    .locals 1

    .line 15
    sget-object v0, Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->$VALUES:[Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    invoke-virtual {v0}, [Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sherdle/universal/providers/wordpress/PostItem$PostType;

    return-object v0
.end method
