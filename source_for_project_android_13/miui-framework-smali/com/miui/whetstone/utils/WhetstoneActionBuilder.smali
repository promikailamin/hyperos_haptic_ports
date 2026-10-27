.class public Lcom/miui/whetstone/utils/WhetstoneActionBuilder;
.super Ljava/lang/Object;
.source "WhetstoneActionBuilder.java"


# instance fields
.field private blacklist content:Lorg/json/JSONObject;

.field private blacklist department:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->department:Ljava/lang/String;

    .line 17
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->content:Lorg/json/JSONObject;

    .line 18
    return-void
.end method


# virtual methods
.method public blacklist add(Ljava/lang/String;I)Lcom/miui/whetstone/utils/WhetstoneActionBuilder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->content:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 25
    goto :goto_a

    .line 23
    :catch_6
    move-exception v0

    .line 24
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 26
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_a
    return-object p0
.end method

.method public blacklist add(Ljava/lang/String;J)Lcom/miui/whetstone/utils/WhetstoneActionBuilder;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->content:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 34
    goto :goto_a

    .line 32
    :catch_6
    move-exception v0

    .line 33
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 35
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_a
    return-object p0
.end method

.method public blacklist add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/whetstone/utils/WhetstoneActionBuilder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->content:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 43
    goto :goto_a

    .line 41
    :catch_6
    move-exception v0

    .line 42
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 44
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_a
    return-object p0
.end method

.method public blacklist add(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/miui/whetstone/utils/WhetstoneActionBuilder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->content:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 52
    goto :goto_a

    .line 50
    :catch_6
    move-exception v0

    .line 51
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 53
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_a
    return-object p0
.end method

.method public blacklist getAction()Lcom/miui/whetstone/WhetstoneAction;
    .registers 4

    .line 57
    new-instance v0, Lcom/miui/whetstone/WhetstoneAction;

    iget-object v1, p0, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->department:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->content:Lorg/json/JSONObject;

    invoke-direct {v0, v1, v2}, Lcom/miui/whetstone/WhetstoneAction;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method
