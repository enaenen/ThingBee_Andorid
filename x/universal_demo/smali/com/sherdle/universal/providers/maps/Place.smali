.class public Lcom/sherdle/universal/providers/maps/Place;
.super Ljava/lang/Object;
.source "Place.java"


# instance fields
.field private icon:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private latitude:Ljava/lang/Double;

.field private longitude:Ljava/lang/Double;

.field private name:Ljava/lang/String;

.field private vicinity:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static jsonToPontoReferencia(Lorg/json/JSONObject;)Lcom/sherdle/universal/providers/maps/Place;
    .locals 3

    .line 56
    :try_start_0
    new-instance v0, Lcom/sherdle/universal/providers/maps/Place;

    invoke-direct {v0}, Lcom/sherdle/universal/providers/maps/Place;-><init>()V

    const-string v1, "geometry"

    .line 57
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "location"

    .line 58
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "lat"

    .line 59
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v0, v2}, Lcom/sherdle/universal/providers/maps/Place;->setLatitude(Ljava/lang/Double;)V

    const-string v2, "lng"

    .line 60
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/maps/Place;->setLongitude(Ljava/lang/Double;)V

    const-string v1, "icon"

    .line 61
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/maps/Place;->setIcon(Ljava/lang/String;)V

    const-string v1, "name"

    .line 62
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/maps/Place;->setName(Ljava/lang/String;)V

    const-string v1, "vicinity"

    .line 63
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sherdle/universal/providers/maps/Place;->setVicinity(Ljava/lang/String;)V

    const-string v1, "id"

    .line 64
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sherdle/universal/providers/maps/Place;->setId(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 67
    const-class v0, Lcom/sherdle/universal/providers/maps/Place;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/Place;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/Place;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/Place;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/Place;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/Place;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVicinity()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/sherdle/universal/providers/maps/Place;->vicinity:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/sherdle/universal/providers/maps/Place;->icon:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/sherdle/universal/providers/maps/Place;->id:Ljava/lang/String;

    return-void
.end method

.method public setLatitude(Ljava/lang/Double;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/sherdle/universal/providers/maps/Place;->latitude:Ljava/lang/Double;

    return-void
.end method

.method public setLongitude(Ljava/lang/Double;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/sherdle/universal/providers/maps/Place;->longitude:Ljava/lang/Double;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/sherdle/universal/providers/maps/Place;->name:Ljava/lang/String;

    return-void
.end method

.method public setVicinity(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/sherdle/universal/providers/maps/Place;->vicinity:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Place{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/maps/Place;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/maps/Place;->icon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/maps/Place;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/maps/Place;->latitude:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sherdle/universal/providers/maps/Place;->longitude:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
