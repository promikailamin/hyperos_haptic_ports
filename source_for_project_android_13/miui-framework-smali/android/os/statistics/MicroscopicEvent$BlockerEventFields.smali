.class public Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;
.super Landroid/os/statistics/MicroscopicEvent$MicroEventFields;
.source "MicroscopicEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MicroscopicEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockerEventFields"
.end annotation


# instance fields
.field public blacklist schedPolicy:I

.field public blacklist schedPriority:I

.field public blacklist threadName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Z)V
    .registers 2
    .param p1, "_needStackTrace"    # Z

    .line 103
    invoke-direct {p0, p1}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;-><init>(Z)V

    .line 104
    return-void
.end method


# virtual methods
.method public blacklist fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 3
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;

    .line 108
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->fillIn(Landroid/os/statistics/JniParcel;)V

    .line 109
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;->threadName:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;->schedPolicy:I

    .line 111
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;->schedPriority:I

    .line 112
    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 124
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->readFromParcel(Landroid/os/Parcel;)V

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;->threadName:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;->schedPolicy:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;->schedPriority:I

    .line 128
    return-void
.end method

.method public blacklist writeToJson(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 132
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->writeToJson(Lorg/json/JSONObject;)V

    .line 134
    :try_start_3
    const-string v0, "threadName"

    iget-object v1, p0, Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;->threadName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v0, "policy"

    iget v1, p0, Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;->schedPolicy:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 136
    const-string v0, "priority"

    iget v1, p0, Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;->schedPriority:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_18} :catch_19

    .line 139
    goto :goto_1d

    .line 137
    :catch_19
    move-exception v0

    .line 138
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 140
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1d
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 116
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->writeToParcel(Landroid/os/Parcel;I)V

    .line 117
    iget-object v0, p0, Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;->threadName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget v0, p0, Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;->schedPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;->schedPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return-void
.end method
