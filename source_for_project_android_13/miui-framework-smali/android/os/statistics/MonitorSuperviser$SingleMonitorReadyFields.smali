.class public Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;
.super Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;
.source "MonitorSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MonitorSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleMonitorReadyFields"
.end annotation


# static fields
.field private static final blacklist FIELD_MONITOR_ID:Ljava/lang/String; = "monitorId"

.field private static final blacklist FIELD_STACK:Ljava/lang/String; = "stack"


# instance fields
.field public blacklist monitorId:J

.field public blacklist stackTrace:[Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 156
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;-><init>(Z)V

    .line 157
    return-void
.end method


# virtual methods
.method public blacklist fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 4
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;

    .line 161
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;->fillIn(Landroid/os/statistics/JniParcel;)V

    .line 162
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;->monitorId:J

    .line 163
    return-void
.end method

.method public blacklist fillInStackTrace([Ljava/lang/Class;[Ljava/lang/StackTraceElement;Landroid/os/statistics/NativeBackTrace;)V
    .registers 5
    .param p1, "javaStackTraceClasses"    # [Ljava/lang/Class;
    .param p2, "javaStackTraceElements"    # [Ljava/lang/StackTraceElement;
    .param p3, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .line 167
    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/os/statistics/StackUtils;->getStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;->stackTrace:[Ljava/lang/String;

    .line 168
    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 179
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;->readFromParcel(Landroid/os/Parcel;)V

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;->monitorId:J

    .line 181
    invoke-static {p1}, Landroid/os/statistics/ParcelUtils;->readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;->stackTrace:[Ljava/lang/String;

    .line 182
    if-nez v0, :cond_15

    .line 183
    sget-object v0, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    iput-object v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;->stackTrace:[Ljava/lang/String;

    .line 185
    :cond_15
    return-void
.end method

.method public blacklist writeToJson(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 189
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;->writeToJson(Lorg/json/JSONObject;)V

    .line 191
    :try_start_3
    const-string v0, "monitorId"

    iget-wide v1, p0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;->monitorId:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 192
    const-string v0, "stack"

    iget-object v1, p0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;->stackTrace:[Ljava/lang/String;

    invoke-static {v1}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_15} :catch_16

    .line 195
    goto :goto_1a

    .line 193
    :catch_16
    move-exception v0

    .line 194
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 196
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1a
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 172
    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;->writeToParcel(Landroid/os/Parcel;I)V

    .line 173
    iget-wide v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;->monitorId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 174
    iget-object v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorReadyFields;->stackTrace:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/os/statistics/ParcelUtils;->writeStringArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    .line 175
    return-void
.end method
