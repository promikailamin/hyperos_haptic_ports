.class public Landroid/os/statistics/MicroscopicEvent$MicroEventFields;
.super Landroid/os/statistics/PerfEvent$DetailFields;
.source "MicroscopicEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MicroscopicEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MicroEventFields"
.end annotation


# instance fields
.field public blacklist threadId:I


# direct methods
.method public constructor blacklist <init>(Z)V
    .registers 2
    .param p1, "_needStackTrace"    # Z

    .line 24
    invoke-direct {p0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;-><init>(Z)V

    .line 25
    return-void
.end method


# virtual methods
.method public blacklist fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 3
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;

    .line 29
    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->fillIn(Landroid/os/statistics/JniParcel;)V

    .line 30
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->threadId:I

    .line 31
    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 41
    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->readFromParcel(Landroid/os/Parcel;)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->threadId:I

    .line 43
    return-void
.end method

.method public blacklist writeToJson(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 47
    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->writeToJson(Lorg/json/JSONObject;)V

    .line 49
    :try_start_3
    const-string v0, "threadId"

    iget v1, p0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->threadId:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_a} :catch_b

    .line 52
    goto :goto_f

    .line 50
    :catch_b
    move-exception v0

    .line 51
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 53
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_f
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 35
    invoke-super {p0, p1, p2}, Landroid/os/statistics/PerfEvent$DetailFields;->writeToParcel(Landroid/os/Parcel;I)V

    .line 36
    iget v0, p0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->threadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    return-void
.end method
