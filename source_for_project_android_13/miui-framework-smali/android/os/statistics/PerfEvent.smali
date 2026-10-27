.class public abstract Landroid/os/statistics/PerfEvent;
.super Ljava/lang/Object;
.source "PerfEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/PerfEvent$DetailFields;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/os/statistics/PerfEvent$DetailFields;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final blacklist TYPE_UNKNOWN:I = -0x1


# instance fields
.field public blacklist beginUptimeMillis:J

.field private blacklist details:Landroid/os/statistics/PerfEvent$DetailFields;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public blacklist endUptimeMillis:J

.field public blacklist eventFlags:I

.field public blacklist eventSeq:J

.field public final blacklist eventType:I

.field public blacklist inclusionId:J

.field private blacklist persistentId:J

.field public blacklist synchronizationId:J


# direct methods
.method protected constructor blacklist <init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V
    .registers 3
    .param p1, "_eventType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 28
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    .local p2, "_fields":Landroid/os/statistics/PerfEvent$DetailFields;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Landroid/os/statistics/PerfEvent;->eventType:I

    .line 30
    iput-object p2, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    .line 31
    return-void
.end method

.method public static blacklist generateCoordinationId(I)J
    .registers 4
    .param p0, "pid"    # I

    .line 193
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static blacklist generateCoordinationId(II)J
    .registers 6
    .param p0, "pid"    # I
    .param p1, "code"    # I

    .line 189
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final blacklist clearDetailFields()V
    .registers 2

    .line 144
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    .line 145
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 35
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final blacklist fillIn(IJJJJJLandroid/os/statistics/JniParcel;[Ljava/lang/Class;[Ljava/lang/StackTraceElement;Landroid/os/statistics/NativeBackTrace;)V
    .registers 32
    .param p1, "eventFlags"    # I
    .param p2, "beginUptimeMillis"    # J
    .param p4, "endUptimeMillis"    # J
    .param p6, "inclusionId"    # J
    .param p8, "synchronizationId"    # J
    .param p10, "eventSeq"    # J
    .param p12, "dataParcel"    # Landroid/os/statistics/JniParcel;
    .param p13, "javaStackTraceClasses"    # [Ljava/lang/Class;
    .param p14, "javaStackTraceElements"    # [Ljava/lang/StackTraceElement;
    .param p15, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .line 40
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    iput v1, v0, Landroid/os/statistics/PerfEvent;->eventFlags:I

    .line 41
    move-wide/from16 v2, p2

    iput-wide v2, v0, Landroid/os/statistics/PerfEvent;->beginUptimeMillis:J

    .line 42
    move-wide/from16 v4, p4

    iput-wide v4, v0, Landroid/os/statistics/PerfEvent;->endUptimeMillis:J

    .line 43
    move-wide/from16 v6, p6

    iput-wide v6, v0, Landroid/os/statistics/PerfEvent;->inclusionId:J

    .line 44
    move-wide/from16 v8, p8

    iput-wide v8, v0, Landroid/os/statistics/PerfEvent;->synchronizationId:J

    .line 45
    move-wide/from16 v10, p10

    iput-wide v10, v0, Landroid/os/statistics/PerfEvent;->eventSeq:J

    .line 46
    iget-object v12, v0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    move-object/from16 v13, p12

    invoke-virtual {v12, v13}, Landroid/os/statistics/PerfEvent$DetailFields;->fillIn(Landroid/os/statistics/JniParcel;)V

    .line 47
    iget-object v12, v0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    iget-boolean v12, v12, Landroid/os/statistics/PerfEvent$DetailFields;->needStackTrace:Z

    if-eqz v12, :cond_33

    .line 48
    iget-object v12, v0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v0, p15

    invoke-virtual {v12, v14, v15, v0}, Landroid/os/statistics/PerfEvent$DetailFields;->fillInStackTrace([Ljava/lang/Class;[Ljava/lang/StackTraceElement;Landroid/os/statistics/NativeBackTrace;)V

    goto :goto_39

    .line 47
    :cond_33
    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v0, p15

    .line 50
    :goto_39
    return-void
.end method

.method public final blacklist fillInDetails(Landroid/os/statistics/JniParcel;[Ljava/lang/Class;[Ljava/lang/StackTraceElement;Landroid/os/statistics/NativeBackTrace;)V
    .registers 6
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;
    .param p2, "javaStackTraceClasses"    # [Ljava/lang/Class;
    .param p3, "javaStackTraceElements"    # [Ljava/lang/StackTraceElement;
    .param p4, "nativeBackTrace"    # Landroid/os/statistics/NativeBackTrace;

    .line 57
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    invoke-virtual {v0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->fillIn(Landroid/os/statistics/JniParcel;)V

    .line 58
    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    iget-boolean v0, v0, Landroid/os/statistics/PerfEvent$DetailFields;->needStackTrace:Z

    if-eqz v0, :cond_10

    .line 59
    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    invoke-virtual {v0, p2, p3, p4}, Landroid/os/statistics/PerfEvent$DetailFields;->fillInStackTrace([Ljava/lang/Class;[Ljava/lang/StackTraceElement;Landroid/os/statistics/NativeBackTrace;)V

    .line 61
    :cond_10
    return-void
.end method

.method public final blacklist fillInSeq(J)V
    .registers 3
    .param p1, "eventSeq"    # J

    .line 53
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    iput-wide p1, p0, Landroid/os/statistics/PerfEvent;->eventSeq:J

    .line 54
    return-void
.end method

.method public final blacklist getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 132
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    return-object v0
.end method

.method public final blacklist getPersistentId()J
    .registers 3

    .line 136
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    iget-wide v0, p0, Landroid/os/statistics/PerfEvent;->persistentId:J

    return-wide v0
.end method

.method public blacklist isMeaningful()Z
    .registers 2

    .line 74
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readDetailsFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 101
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    invoke-virtual {v0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->readFromParcel(Landroid/os/Parcel;)V

    .line 102
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 90
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/PerfEvent;->eventFlags:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/PerfEvent;->beginUptimeMillis:J

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/PerfEvent;->endUptimeMillis:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/PerfEvent;->inclusionId:J

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/PerfEvent;->synchronizationId:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/PerfEvent;->eventSeq:J

    .line 97
    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    invoke-virtual {v0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->readFromParcel(Landroid/os/Parcel;)V

    .line 98
    return-void
.end method

.method public final blacklist resolveKernelLazyInfo()V
    .registers 3

    .line 105
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    iget v0, p0, Landroid/os/statistics/PerfEvent;->eventFlags:I

    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_f

    .line 106
    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/os/statistics/PerfEvent;->eventFlags:I

    .line 107
    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    invoke-virtual {v0}, Landroid/os/statistics/PerfEvent$DetailFields;->resolveKernelLazyInfo()V

    .line 109
    :cond_f
    return-void
.end method

.method public final blacklist resolveLazyInfo()V
    .registers 3

    .line 64
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    iget v0, p0, Landroid/os/statistics/PerfEvent;->eventFlags:I

    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_f

    .line 65
    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/os/statistics/PerfEvent;->eventFlags:I

    .line 66
    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    invoke-virtual {v0}, Landroid/os/statistics/PerfEvent$DetailFields;->resolveLazyInfo()V

    .line 68
    :cond_f
    return-void
.end method

.method public final blacklist setPersistentId(J)V
    .registers 3
    .param p1, "persistentId"    # J

    .line 140
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    iput-wide p1, p0, Landroid/os/statistics/PerfEvent;->persistentId:J

    .line 141
    return-void
.end method

.method public final blacklist toJson()Lorg/json/JSONObject;
    .registers 2

    .line 112
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 113
    .local v0, "json":Lorg/json/JSONObject;
    invoke-virtual {p0, v0}, Landroid/os/statistics/PerfEvent;->writeToJson(Lorg/json/JSONObject;)V

    .line 114
    return-object v0
.end method

.method public final blacklist writeToJson(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 119
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    :try_start_0
    const-string v0, "eventType"

    iget v1, p0, Landroid/os/statistics/PerfEvent;->eventType:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 120
    const-string v0, "eventTypeName"

    iget v1, p0, Landroid/os/statistics/PerfEvent;->eventType:I

    invoke-static {v1}, Landroid/os/statistics/PerfEventConstants;->getTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v0, "beginTime"

    iget-wide v1, p0, Landroid/os/statistics/PerfEvent;->beginUptimeMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 122
    const-string v0, "endTime"

    iget-wide v1, p0, Landroid/os/statistics/PerfEvent;->endUptimeMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 123
    const-string v0, "occurTime"

    iget-wide v1, p0, Landroid/os/statistics/PerfEvent;->endUptimeMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 124
    const-string v0, "seq"

    iget-wide v1, p0, Landroid/os/statistics/PerfEvent;->eventSeq:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 127
    goto :goto_33

    .line 125
    :catch_2f
    move-exception v0

    .line 126
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 128
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_33
    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    invoke-virtual {v0, p1}, Landroid/os/statistics/PerfEvent$DetailFields;->writeToJson(Lorg/json/JSONObject;)V

    .line 129
    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 79
    .local p0, "this":Landroid/os/statistics/PerfEvent;, "Landroid/os/statistics/PerfEvent<TT;>;"
    iget v0, p0, Landroid/os/statistics/PerfEvent;->eventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Landroid/os/statistics/PerfEvent;->eventFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-wide v0, p0, Landroid/os/statistics/PerfEvent;->beginUptimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    iget-wide v0, p0, Landroid/os/statistics/PerfEvent;->endUptimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    iget-wide v0, p0, Landroid/os/statistics/PerfEvent;->inclusionId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 84
    iget-wide v0, p0, Landroid/os/statistics/PerfEvent;->synchronizationId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    iget-wide v0, p0, Landroid/os/statistics/PerfEvent;->eventSeq:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget-object v0, p0, Landroid/os/statistics/PerfEvent;->details:Landroid/os/statistics/PerfEvent$DetailFields;

    invoke-virtual {v0, p1, p2}, Landroid/os/statistics/PerfEvent$DetailFields;->writeToParcel(Landroid/os/Parcel;I)V

    .line 87
    return-void
.end method
