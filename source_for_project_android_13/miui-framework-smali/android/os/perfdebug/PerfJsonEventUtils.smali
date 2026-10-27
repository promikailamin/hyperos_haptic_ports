.class public Landroid/os/perfdebug/PerfJsonEventUtils;
.super Ljava/lang/Object;
.source "PerfJsonEventUtils.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "PerfJsonEventUtils"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist writeEvent(ILjava/util/List;)V
    .registers 7
    .param p0, "eventID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 18
    .local p1, "valueArr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static {p0}, Landroid/os/perfdebug/PerfDebugMonitorImpl;->getEventKeyListByID(I)Ljava/util/List;

    move-result-object v0

    .line 19
    .local v0, "keylist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_34

    .line 20
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 22
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    :try_start_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 23
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_1f} :catch_23

    .line 22
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 27
    .end local v2    # "i":I
    :cond_22
    goto :goto_2d

    .line 25
    :catch_23
    move-exception v2

    .line 26
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PerfJsonEventUtils"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_2d
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/perfdebug/FileUtils;->nWriteExceptionLog(Ljava/lang/String;)V

    .line 30
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_34
    return-void
.end method
