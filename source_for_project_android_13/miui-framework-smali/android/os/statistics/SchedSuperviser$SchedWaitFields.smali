.class public Landroid/os/statistics/SchedSuperviser$SchedWaitFields;
.super Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;
.source "SchedSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/SchedSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SchedWaitFields"
.end annotation


# static fields
.field private static final blacklist FIELD_INTERRUPTIBLE:Ljava/lang/String; = "interruptible"

.field private static final blacklist FIELD_WAIT_REASON:Ljava/lang/String; = "waitReason"

.field private static final blacklist FIELD_WAKING_PID:Ljava/lang/String; = "wakingPid"

.field private static final blacklist FIELD_WAKING_THREAD_ID:Ljava/lang/String; = "wakingThreadId"

.field private static final blacklist FIELD_WCHAN:Ljava/lang/String; = "wchan"


# instance fields
.field public blacklist interruptible:Z

.field public blacklist version:I

.field public blacklist waitReason:Ljava/lang/String;

.field public blacklist wakingPid:I

.field public blacklist wakingThreadId:I

.field public blacklist wchan:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;-><init>(Z)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wakingPid:I

    .line 22
    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wakingThreadId:I

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 4
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;

    .line 33
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->version:I

    .line 34
    if-ltz v0, :cond_45

    .line 35
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->pid:I

    .line 36
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->threadId:I

    .line 37
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->schedPolicy:I

    .line 38
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->schedPriority:I

    .line 39
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wakingPid:I

    .line 40
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wakingThreadId:I

    .line 41
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wchan:J

    .line 42
    const-string v0, ""

    iput-object v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->waitReason:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    goto :goto_43

    :cond_42
    const/4 v1, 0x0

    :goto_43
    iput-boolean v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->interruptible:Z

    .line 45
    :cond_45
    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->version:I

    .line 65
    if-ltz v0, :cond_45

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->pid:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->threadId:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->schedPolicy:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->schedPriority:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wakingPid:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wakingThreadId:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wchan:J

    .line 73
    const-string v0, ""

    iput-object v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->waitReason:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    goto :goto_43

    :cond_42
    const/4 v1, 0x0

    :goto_43
    iput-boolean v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->interruptible:Z

    .line 76
    :cond_45
    return-void
.end method

.method public blacklist resolveKernelLazyInfo()V
    .registers 3

    .line 80
    iget-wide v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wchan:J

    invoke-static {v0, v1}, Landroid/os/statistics/OsUtils;->translateKernelAddress(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->waitReason:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public blacklist writeToJson(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 85
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$BlockedEventFields;->writeToJson(Lorg/json/JSONObject;)V

    .line 87
    :try_start_3
    const-string v0, "wakingPid"

    iget v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wakingPid:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    const-string v0, "wakingThreadId"

    iget v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wakingThreadId:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    const-string v0, "wchan"

    iget-wide v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wchan:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 90
    const-string v0, "waitReason"

    iget-object v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->waitReason:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v0, "interruptible"

    iget-boolean v1, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->interruptible:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_26} :catch_27

    .line 94
    goto :goto_2b

    .line 92
    :catch_27
    move-exception v0

    .line 93
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 95
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2b
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 49
    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->version:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->version:I

    if-ltz v0, :cond_31

    .line 51
    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->threadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->schedPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->schedPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wakingPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wakingThreadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-wide v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->wchan:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    iget-boolean v0, p0, Landroid/os/statistics/SchedSuperviser$SchedWaitFields;->interruptible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    :cond_31
    return-void
.end method
