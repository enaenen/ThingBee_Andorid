.class Lcom/sherdle/universal/ConfigParser$1;
.super Ljava/lang/Object;
.source "ConfigParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sherdle/universal/ConfigParser;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sherdle/universal/ConfigParser;

.field final synthetic val$jsonMenuFinal:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/sherdle/universal/ConfigParser;Lorg/json/JSONArray;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/sherdle/universal/ConfigParser$1;->this$0:Lcom/sherdle/universal/ConfigParser;

    iput-object p2, p0, Lcom/sherdle/universal/ConfigParser$1;->val$jsonMenuFinal:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x1

    .line 124
    :try_start_0
    iget-object v5, p0, Lcom/sherdle/universal/ConfigParser$1;->val$jsonMenuFinal:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 125
    iget-object v5, p0, Lcom/sherdle/universal/ConfigParser$1;->val$jsonMenuFinal:Lorg/json/JSONArray;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "title"

    .line 127
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "drawable"

    .line 131
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "drawable"

    .line 132
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v7, "drawable"

    .line 133
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "drawable"

    .line 134
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 135
    iget-object v7, p0, Lcom/sherdle/universal/ConfigParser$1;->this$0:Lcom/sherdle/universal/ConfigParser;

    invoke-static {v7}, Lcom/sherdle/universal/ConfigParser;->access$000(Lcom/sherdle/universal/ConfigParser;)Landroid/app/Activity;

    move-result-object v7

    const-string v8, "drawable"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sherdle/universal/ConfigParser;->access$100(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    const-string v8, "submenu"

    .line 138
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "submenu"

    .line 139
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string v8, "submenu"

    .line 140
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "submenu"

    .line 141
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v3, :cond_1

    .line 144
    invoke-virtual {v3}, Lcom/sherdle/universal/drawer/SimpleSubMenu;->getSubMenuTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 145
    :cond_1
    new-instance v3, Lcom/sherdle/universal/drawer/SimpleSubMenu;

    iget-object v9, p0, Lcom/sherdle/universal/ConfigParser$1;->this$0:Lcom/sherdle/universal/ConfigParser;

    invoke-static {v9}, Lcom/sherdle/universal/ConfigParser;->access$200(Lcom/sherdle/universal/ConfigParser;)Lcom/sherdle/universal/drawer/SimpleMenu;

    move-result-object v9

    invoke-direct {v3, v9, v8}, Lcom/sherdle/universal/drawer/SimpleSubMenu;-><init>(Lcom/sherdle/universal/drawer/SimpleMenu;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v3, v0

    :cond_3
    :goto_2
    const-string v8, "iap"

    .line 152
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "iap"

    .line 153
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    .line 157
    :goto_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "tabs"

    .line 159
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v10, 0x0

    .line 161
    :goto_4
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 162
    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 164
    iget-object v12, p0, Lcom/sherdle/universal/ConfigParser$1;->this$0:Lcom/sherdle/universal/ConfigParser;

    invoke-static {v12}, Lcom/sherdle/universal/ConfigParser;->access$000(Lcom/sherdle/universal/ConfigParser;)Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12, v11}, Lcom/sherdle/universal/ConfigParser;->navItemFromJSON(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/sherdle/universal/drawer/NavItem;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    if-eqz v3, :cond_6

    .line 169
    invoke-virtual {v3, v6, v7, v9, v8}, Lcom/sherdle/universal/drawer/SimpleSubMenu;->add(Ljava/lang/String;ILjava/util/List;Z)Landroid/view/MenuItem;

    goto :goto_5

    .line 171
    :cond_6
    iget-object v5, p0, Lcom/sherdle/universal/ConfigParser$1;->this$0:Lcom/sherdle/universal/ConfigParser;

    invoke-static {v5}, Lcom/sherdle/universal/ConfigParser;->access$200(Lcom/sherdle/universal/ConfigParser;)Lcom/sherdle/universal/drawer/SimpleMenu;

    move-result-object v5

    invoke-virtual {v5, v6, v7, v9, v8}, Lcom/sherdle/universal/drawer/SimpleMenu;->add(Ljava/lang/String;ILjava/util/List;Z)Landroid/view/MenuItem;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 176
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, "INFO"

    const-string v1, "JSON was invalid"

    .line 177
    invoke-static {v0, v1}, Lcom/sherdle/universal/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/sherdle/universal/ConfigParser$1;->this$0:Lcom/sherdle/universal/ConfigParser;

    invoke-static {v0, v4}, Lcom/sherdle/universal/ConfigParser;->access$302(Lcom/sherdle/universal/ConfigParser;Z)Z

    :cond_7
    return-void
.end method
