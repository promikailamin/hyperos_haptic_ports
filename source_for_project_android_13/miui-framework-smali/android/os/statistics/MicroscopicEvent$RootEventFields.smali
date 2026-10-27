.class public Landroid/os/statistics/MicroscopicEvent$RootEventFields;
.super Landroid/os/statistics/MicroscopicEvent$MicroEventFields;
.source "MicroscopicEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MicroscopicEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RootEventFields"
.end annotation


# instance fields
.field public blacklist endRealTimeMs:J

.field public blacklist packageName:Ljava/lang/String;

.field public blacklist processName:Ljava/lang/String;

.field public blacklist runnableTimeMs:I

.field public blacklist runningTimeMs:I

.field public blacklist schedPolicy:I

.field public blacklist schedPriority:I

.field public blacklist sleepingTimeMs:I

.field public blacklist threadName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Z)V
    .registers 2
    .param p1, "_needStackTrace"    # Z

    .line 211
    invoke-direct {p0, p1}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;-><init>(Z)V

    .line 212
    return-void
.end method


# virtual methods
.method public blacklist fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 4
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;

    .line 216
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->fillIn(Landroid/os/statistics/JniParcel;)V

    .line 217
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->processName:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->packageName:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->threadName:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->schedPolicy:I

    .line 221
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->schedPriority:I

    .line 222
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->runningTimeMs:I

    .line 223
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->runnableTimeMs:I

    .line 224
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->sleepingTimeMs:I

    .line 225
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->endRealTimeMs:J

    .line 226
    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 244
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->readFromParcel(Landroid/os/Parcel;)V

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->processName:Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->packageName:Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->threadName:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->schedPolicy:I

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->schedPriority:I

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->runningTimeMs:I

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->runnableTimeMs:I

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->sleepingTimeMs:I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->endRealTimeMs:J

    .line 254
    return-void
.end method

.method public blacklist writeToJson(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 258
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->writeToJson(Lorg/json/JSONObject;)V

    .line 260
    :try_start_3
    const-string v0, "processName"

    iget-object v1, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string v0, "packageName"

    iget-object v1, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string v0, "threadName"

    iget-object v1, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->threadName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v0, "policy"

    iget v1, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->schedPolicy:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 264
    const-string v0, "priority"

    iget v1, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->schedPriority:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 265
    const-string v0, "runningTime"

    iget v1, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->runningTimeMs:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 266
    const-string v0, "runnableTime"

    iget v1, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->runnableTimeMs:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 267
    const-string v0, "sleepingTime"

    iget v1, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->sleepingTimeMs:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 268
    const-string v0, "endRealTime"

    iget-wide v1, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->endRealTimeMs:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_42} :catch_43

    .line 271
    goto :goto_47

    .line 269
    :catch_43
    move-exception v0

    .line 270
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 272
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_47
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 230
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->writeToParcel(Landroid/os/Parcel;I)V

    .line 231
    iget-object v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->threadName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->schedPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->schedPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->runningTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->runnableTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->sleepingTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-wide v0, p0, Landroid/os/statistics/MicroscopicEvent$RootEventFields;->endRealTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 240
    return-void
.end method
