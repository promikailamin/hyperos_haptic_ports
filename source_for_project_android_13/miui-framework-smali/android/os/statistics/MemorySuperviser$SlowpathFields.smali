.class public Landroid/os/statistics/MemorySuperviser$SlowpathFields;
.super Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;
.source "MemorySuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MemorySuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlowpathFields"
.end annotation


# static fields
.field private static final blacklist FIELD_ORDER:Ljava/lang/String; = "order"


# instance fields
.field public blacklist order:I

.field public blacklist version:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;-><init>(Z)V

    .line 21
    return-void
.end method


# virtual methods
.method public blacklist fillIn(Landroid/os/statistics/JniParcel;)V
    .registers 3
    .param p1, "dataParcel"    # Landroid/os/statistics/JniParcel;

    .line 25
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->version:I

    .line 26
    if-ltz v0, :cond_35

    .line 27
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->pid:I

    .line 28
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->threadId:I

    .line 29
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->schedPolicy:I

    .line 30
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->schedPriority:I

    .line 31
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->runningTimeMs:I

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->runnableTimeMs:I

    .line 33
    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->sleepingTimeMs:I

    .line 34
    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->order:I

    .line 36
    :cond_35
    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->version:I

    .line 54
    if-ltz v0, :cond_35

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->pid:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->threadId:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->schedPolicy:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->schedPriority:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->runningTimeMs:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->runnableTimeMs:I

    .line 61
    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->sleepingTimeMs:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->order:I

    .line 64
    :cond_35
    return-void
.end method

.method public blacklist writeToJson(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 68
    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent$MeasurementEventFields;->writeToJson(Lorg/json/JSONObject;)V

    .line 70
    :try_start_3
    const-string v0, "order"

    iget v1, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->order:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_a} :catch_b

    .line 73
    goto :goto_f

    .line 71
    :catch_b
    move-exception v0

    .line 72
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 74
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_f
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 40
    iget v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->version:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->version:I

    if-ltz v0, :cond_27

    .line 42
    iget v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->threadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->schedPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->schedPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->runningTimeMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v0, p0, Landroid/os/statistics/MemorySuperviser$SlowpathFields;->order:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    :cond_27
    return-void
.end method
