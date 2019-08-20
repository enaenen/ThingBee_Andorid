.class public Lcom/sherdle/universal/util/SerializableJSONArray;
.super Ljava/lang/Object;
.source "SerializableJSONArray.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private transient jsonArray:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sherdle/universal/util/SerializableJSONArray;->jsonArray:Lorg/json/JSONArray;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 31
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 32
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sherdle/universal/util/SerializableJSONArray;->jsonArray:Lorg/json/JSONArray;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 27
    iget-object v0, p0, Lcom/sherdle/universal/util/SerializableJSONArray;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getJSONArray()Lorg/json/JSONArray;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/sherdle/universal/util/SerializableJSONArray;->jsonArray:Lorg/json/JSONArray;

    return-object v0
.end method
