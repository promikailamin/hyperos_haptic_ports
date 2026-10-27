.class public Landroid/os/statistics/MonitorSuperviser$SingleConditionWaitFields;
.super Landroid/os/statistics/MonitorSuperviser$SingleMonitorWaitFields;
.source "MonitorSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MonitorSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleConditionWaitFields"
.end annotation


# static fields
.field private static final blacklist FIELD_AWAKEN_REASON:Ljava/lang/String; = "awakenReason"


# instance fields
.field public blacklist awakenReason:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 199
    invoke-direct {p0}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorWaitFields;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 3
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;

    .line 206
    invoke-super {p0, p1}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorWaitFields;->fillIn(Landroid/os/statistics/JniParcel;)V

    .line 207
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWaitFields;->awakenReason:I

    .line 208
    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 218
    invoke-super {p0, p1}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorWaitFields;->readFromParcel(Landroid/os/Parcel;)V

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWaitFields;->awakenReason:I

    .line 220
    return-void
.end method

.method public blacklist writeToJson(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 224
    invoke-super {p0, p1}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorWaitFields;->writeToJson(Lorg/json/JSONObject;)V

    .line 226
    :try_start_3
    const-string v0, "awakenReason"

    iget v1, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWaitFields;->awakenReason:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_a} :catch_b

    .line 229
    goto :goto_f

    .line 227
    :catch_b
    move-exception v0

    .line 228
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 230
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_f
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 212
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorWaitFields;->writeToParcel(Landroid/os/Parcel;I)V

    .line 213
    iget v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWaitFields;->awakenReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    return-void
.end method
