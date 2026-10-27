.class public Landroid/os/statistics/SchedSuperviser$SchedWakeFields;
.super Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;
.source "SchedSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/SchedSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SchedWakeFields"
.end annotation


# static fields
.field private static final blacklist FIELD_AWAKEN_PID:Ljava/lang/String; = "awakenPid"

.field private static final blacklist FIELD_AWAKEN_THREAD_ID:Ljava/lang/String; = "awakenThreadId"


# instance fields
.field public blacklist awakenPid:I

.field public blacklist awakenThreadId:I

.field public blacklist processName:Ljava/lang/String;

.field public blacklist version:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;-><init>(Z)V

    .line 129
    return-void
.end method


# virtual methods
.method public blacklist fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 4
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;

    .line 133
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->processName:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    .line 135
    .local v0, "version":I
    if-ltz v0, :cond_3a

    .line 136
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->pid:I

    .line 137
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->threadId:I

    .line 138
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->threadName:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v1

    invoke-static {v1}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v1

    iput v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->schedPolicy:I

    .line 140
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->schedPriority:I

    .line 141
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->awakenPid:I

    .line 142
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->awakenThreadId:I

    .line 144
    :cond_3a
    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->processName:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 165
    .local v0, "version":I
    if-ltz v0, :cond_3a

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->pid:I

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->threadId:I

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->threadName:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v1

    iput v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->schedPolicy:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->schedPriority:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->awakenPid:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->awakenThreadId:I

    .line 174
    :cond_3a
    return-void
.end method

.method public blacklist writeToJson(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 178
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$BlockerEventFields;->writeToJson(Lorg/json/JSONObject;)V

    .line 180
    :try_start_3
    const-string v0, "processName"

    iget-object v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string v0, "awakenPid"

    iget v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->awakenPid:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 182
    const-string v0, "awakenThreadId"

    iget v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->awakenThreadId:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_18} :catch_19

    .line 185
    goto :goto_1d

    .line 183
    :catch_19
    move-exception v0

    .line 184
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 186
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1d
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 148
    iget-object v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->version:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->version:I

    if-ltz v0, :cond_31

    .line 151
    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->threadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->threadName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->schedPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->schedPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->awakenPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;->awakenThreadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    :cond_31
    return-void
.end method
