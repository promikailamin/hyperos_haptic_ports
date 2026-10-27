.class public Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;
.super Landroid/os/statistics/MicroscopicEvent$MicroEventFields;
.source "MicroscopicEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MicroscopicEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MeasurementEventFields"
.end annotation


# instance fields
.field public blacklist runnableTimeMs:I

.field public blacklist runningTimeMs:I

.field public blacklist schedPolicy:I

.field public blacklist schedPriority:I

.field public blacklist sleepingTimeMs:I


# direct methods
.method public constructor blacklist <init>(Z)V
    .registers 2
    .param p1, "_needStackTrace"    # Z

    .line 151
    invoke-direct {p0, p1}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;-><init>(Z)V

    .line 152
    return-void
.end method


# virtual methods
.method public blacklist fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 3
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;

    .line 156
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->fillIn(Landroid/os/statistics/JniParcel;)V

    .line 157
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;->schedPolicy:I

    .line 158
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;->schedPriority:I

    .line 159
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;->runningTimeMs:I

    .line 160
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;->runnableTimeMs:I

    .line 161
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;->sleepingTimeMs:I

    .line 162
    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 176
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->readFromParcel(Landroid/os/Parcel;)V

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;->schedPolicy:I

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;->schedPriority:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;->runningTimeMs:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;->runnableTimeMs:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;->sleepingTimeMs:I

    .line 182
    return-void
.end method

.method public blacklist writeToJson(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 186
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->writeToJson(Lorg/json/JSONObject;)V

    .line 188
    :try_start_3
    const-string v0, "policy"

    iget v1, p0, Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;->schedPolicy:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    const-string v0, "priority"

    iget v1, p0, Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;->schedPriority:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 190
    const-string v0, "runningTime"

    iget v1, p0, Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;->runningTimeMs:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 191
    const-string v0, "runnableTime"

    iget v1, p0, Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;->runnableTimeMs:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 192
    const-string v0, "sleepingTime"

    iget v1, p0, Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;->sleepingTimeMs:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_26} :catch_27

    .line 195
    goto :goto_2b

    .line 193
    :catch_27
    move-exception v0

    .line 194
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 196
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2b
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 166
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->writeToParcel(Landroid/os/Parcel;I)V

    .line 167
    iget v0, p0, Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;->schedPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v0, p0, Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;->schedPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget v0, p0, Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;->runningTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget v0, p0, Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;->runnableTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget v0, p0, Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;->sleepingTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    return-void
.end method
