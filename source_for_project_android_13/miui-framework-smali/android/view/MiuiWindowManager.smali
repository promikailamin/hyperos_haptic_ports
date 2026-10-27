.class public Landroid/view/MiuiWindowManager;
.super Ljava/lang/Object;
.source "MiuiWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MiuiWindowManager$LayoutParams;
    }
.end annotation


# static fields
.field private static final blacklist TYPE_LAYER_MULTIPLIER:I = 0x2710

.field private static final blacklist TYPE_LAYER_OFFSET:I = 0x3e8

.field private static blacklist sTypeLayers:Landroid/util/SparseIntArray;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getLayer(Landroid/content/Context;I)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 219
    invoke-static {p0}, Landroid/view/MiuiWindowManager;->loadTypeLayerIfNeed(Landroid/content/Context;)V

    .line 220
    const/4 v0, 0x2

    .line 221
    .local v0, "typeLayer":I
    sget-object v1, Landroid/view/MiuiWindowManager;->sTypeLayers:Landroid/util/SparseIntArray;

    if-eqz v1, :cond_d

    .line 222
    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 224
    :cond_d
    mul-int/lit16 v1, v0, 0x2710

    add-int/lit16 v1, v1, 0x3e8

    return v1
.end method

.method private static blacklist loadTypeLayerIfNeed(Landroid/content/Context;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 188
    sget-object v0, Landroid/view/MiuiWindowManager;->sTypeLayers:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_b

    return-void

    .line 190
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "window_type_layer"

    invoke-static {v0, v2, v1}, Landroid/provider/MiuiSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "strJsonTypeLayer":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 197
    :try_start_1c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 198
    .local v1, "jsonTypeLayer":Lorg/json/JSONObject;
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v2, Landroid/view/MiuiWindowManager;->sTypeLayers:Landroid/util/SparseIntArray;

    .line 199
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 200
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 201
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 202
    .local v3, "strType":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 203
    .local v4, "nType":I
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 204
    .local v5, "layer":I
    sget-object v6, Landroid/view/MiuiWindowManager;->sTypeLayers:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_45} :catch_48

    .line 205
    .end local v3    # "strType":Ljava/lang/String;
    .end local v4    # "nType":I
    .end local v5    # "layer":I
    goto :goto_2c

    .line 208
    .end local v1    # "jsonTypeLayer":Lorg/json/JSONObject;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_46
    nop

    .line 209
    return-void

    .line 206
    :catch_48
    move-exception v1

    .line 207
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 193
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_4f
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Window type layer has not set to setting."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
