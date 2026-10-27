.class public Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;
.super Landroid/os/statistics/MicroscopicEvent$MicroEventFields;
.source "MicroscopicEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MicroscopicEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockedEventFields"
.end annotation


# instance fields
.field public blacklist schedPolicy:I

.field public blacklist schedPriority:I


# direct methods
.method public constructor blacklist <init>(Z)V
    .registers 2
    .param p1, "_needStackTrace"    # Z

    .line 61
    invoke-direct {p0, p1}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;-><init>(Z)V

    .line 62
    return-void
.end method


# virtual methods
.method public blacklist fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 3
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;

    .line 66
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->fillIn(Landroid/os/statistics/JniParcel;)V

    .line 67
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;->schedPolicy:I

    .line 68
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;->schedPriority:I

    .line 69
    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 80
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->readFromParcel(Landroid/os/Parcel;)V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;->schedPolicy:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;->schedPriority:I

    .line 83
    return-void
.end method

.method public blacklist writeToJson(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 87
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->writeToJson(Lorg/json/JSONObject;)V

    .line 89
    :try_start_3
    const-string v0, "policy"

    iget v1, p0, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;->schedPolicy:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    const-string v0, "priority"

    iget v1, p0, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;->schedPriority:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_11} :catch_12

    .line 93
    goto :goto_16

    .line 91
    :catch_12
    move-exception v0

    .line 92
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 94
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_16
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 73
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->writeToParcel(Landroid/os/Parcel;I)V

    .line 74
    iget v0, p0, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;->schedPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;->schedPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return-void
.end method
