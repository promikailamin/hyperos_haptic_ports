.class public Landroid/os/statistics/MonitorSuperviser$SingleConditionAwakenFields;
.super Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;
.source "MonitorSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MonitorSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleConditionAwakenFields"
.end annotation


# static fields
.field private static final blacklist FIELD_PEER_THREAD_ID:Ljava/lang/String; = "peerThreadId"


# instance fields
.field public blacklist peerThreadId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 233
    invoke-direct {p0}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 3
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;

    .line 240
    invoke-super {p0, p1}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;->fillIn(Landroid/os/statistics/JniParcel;)V

    .line 241
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwakenFields;->peerThreadId:I

    .line 242
    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 252
    invoke-super {p0, p1}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;->readFromParcel(Landroid/os/Parcel;)V

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwakenFields;->peerThreadId:I

    .line 254
    return-void
.end method

.method public blacklist writeToJson(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 258
    invoke-super {p0, p1}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;->writeToJson(Lorg/json/JSONObject;)V

    .line 260
    :try_start_3
    const-string v0, "peerThreadId"

    iget v1, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwakenFields;->peerThreadId:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_a} :catch_b

    .line 263
    goto :goto_f

    .line 261
    :catch_b
    move-exception v0

    .line 262
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 264
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_f
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 246
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;->writeToParcel(Landroid/os/Parcel;I)V

    .line 247
    iget v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwakenFields;->peerThreadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    return-void
.end method
