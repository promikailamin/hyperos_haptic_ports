.class public Landroid/os/statistics/SingleJankRecord$JankRecordFields;
.super Landroid/os/statistics/PerfEvent$DetailFields;
.source "SingleJankRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/SingleJankRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JankRecordFields"
.end annotation


# static fields
.field private static final blacklist FIELD_APP_CAUSE:Ljava/lang/String; = "appCause"

.field private static final blacklist FIELD_BATTERY_LEVEL:Ljava/lang/String; = "batteryLevel"

.field private static final blacklist FIELD_BATTERY_TEMP:Ljava/lang/String; = "batteryTemperature"

.field private static final blacklist FIELD_CHARGING:Ljava/lang/String; = "isCharging"

.field private static final blacklist FIELD_CONCLUSION:Ljava/lang/String; = "conclusion"

.field private static final blacklist FIELD_MAX_FRAME_DURATION:Ljava/lang/String; = "maxFrameDuration"

.field private static final blacklist FIELD_NUM_FRAMES:Ljava/lang/String; = "numFrames"

.field private static final blacklist FIELD_RECEIVED_CURRENT_TIME:Ljava/lang/String; = "receivedCurrentTime"

.field private static final blacklist FIELD_RECEIVED_UPTIME:Ljava/lang/String; = "receivedUptime"

.field private static final blacklist FIELD_RENDER_THREAD_ID:Ljava/lang/String; = "renderThreadTid"

.field private static final blacklist FIELD_SYS_CAUSE:Ljava/lang/String; = "sysCause"

.field private static final blacklist FIELD_TOTAL_DURATION:Ljava/lang/String; = "totalDuration"

.field private static final blacklist FIELD_WINDOW_NAME:Ljava/lang/String; = "windowName"


# instance fields
.field public blacklist appCause:Ljava/lang/String;

.field public blacklist batteryLevel:I

.field public blacklist batteryTemperature:I

.field public blacklist conclusion:Ljava/lang/String;

.field public blacklist isCharging:Z

.field public blacklist maxFrameDuration:J

.field public blacklist numFrames:J

.field public blacklist packageName:Ljava/lang/String;

.field public blacklist processName:Ljava/lang/String;

.field public blacklist receivedCurrentTimeMillis:J

.field public blacklist receivedUptimeMillis:J

.field public blacklist renderThreadTid:I

.field public blacklist sysCause:Ljava/lang/String;

.field public blacklist totalDuration:J

.field public blacklist windowName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/statistics/PerfEvent$DetailFields;-><init>(Z)V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->windowName:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->appCause:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->sysCause:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->conclusion:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public blacklist fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 3
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;

    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 98
    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->readFromParcel(Landroid/os/Parcel;)V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "processName":Ljava/lang/String;
    const-string v1, ""

    if-eqz v0, :cond_d

    move-object v2, v0

    goto :goto_e

    :cond_d
    move-object v2, v1

    :goto_e
    move-object v0, v2

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_16

    move-object v1, v2

    .line 103
    .end local v2    # "packageName":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    :cond_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->renderThreadTid:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->windowName:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->appCause:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->sysCause:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->conclusion:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->totalDuration:J

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->maxFrameDuration:J

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->receivedUptimeMillis:J

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->receivedCurrentTimeMillis:J

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_54

    goto :goto_55

    :cond_54
    const/4 v3, 0x0

    :goto_55
    iput-boolean v3, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->isCharging:Z

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->batteryLevel:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->batteryTemperature:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->numFrames:J

    .line 116
    return-void
.end method

.method public blacklist writeToJson(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 120
    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->writeToJson(Lorg/json/JSONObject;)V

    .line 122
    :try_start_3
    const-string v0, "processName"

    iget-object v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v0, "packageName"

    iget-object v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v0, "renderThreadTid"

    iget v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->renderThreadTid:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    const-string v0, "windowName"

    iget-object v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->windowName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v0, "appCause"

    iget-object v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->appCause:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v0, "sysCause"

    iget-object v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->sysCause:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v0, "conclusion"

    iget-object v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->conclusion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v0, "totalDuration"

    iget-wide v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->totalDuration:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 130
    const-string v0, "maxFrameDuration"

    iget-wide v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->maxFrameDuration:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 131
    const-string v0, "receivedUptime"

    iget-wide v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->receivedUptimeMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 132
    const-string v0, "receivedCurrentTime"

    iget-wide v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->receivedCurrentTimeMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 133
    const-string v0, "isCharging"

    iget-boolean v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->isCharging:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 134
    const-string v0, "batteryLevel"

    iget v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->batteryLevel:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 135
    const-string v0, "batteryTemperature"

    iget v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->batteryTemperature:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 136
    const-string v0, "numFrames"

    iget-wide v1, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->numFrames:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_6c} :catch_6d

    .line 139
    goto :goto_71

    .line 137
    :catch_6d
    move-exception v0

    .line 138
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 140
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_71
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 78
    invoke-super {p0, p1, p2}, Landroid/os/statistics/PerfEvent$DetailFields;->writeToParcel(Landroid/os/Parcel;I)V

    .line 79
    iget-object v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->renderThreadTid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget-object v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->windowName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->appCause:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->sysCause:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->conclusion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-wide v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->totalDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    iget-wide v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->maxFrameDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 88
    iget-wide v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->receivedUptimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    iget-wide v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->receivedCurrentTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 90
    iget-boolean v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->isCharging:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->batteryLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->batteryTemperature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-wide v0, p0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->numFrames:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    return-void
.end method
