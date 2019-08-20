.class public Lcom/sherdle/universal/providers/wordpress/CategoryItem;
.super Ljava/lang/Object;
.source "CategoryItem.java"


# instance fields
.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private postCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/CategoryItem;->id:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/sherdle/universal/providers/wordpress/CategoryItem;->name:Ljava/lang/String;

    .line 12
    iput p3, p0, Lcom/sherdle/universal/providers/wordpress/CategoryItem;->postCount:I

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/CategoryItem;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/sherdle/universal/providers/wordpress/CategoryItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPostCount()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/sherdle/universal/providers/wordpress/CategoryItem;->postCount:I

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/CategoryItem;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/sherdle/universal/providers/wordpress/CategoryItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setPostCount(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/sherdle/universal/providers/wordpress/CategoryItem;->postCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/CategoryItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/wordpress/CategoryItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Postcount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sherdle/universal/providers/wordpress/CategoryItem;->postCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
