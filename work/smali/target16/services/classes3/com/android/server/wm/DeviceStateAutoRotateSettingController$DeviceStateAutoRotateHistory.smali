.class public Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory;
.super Ljava/lang/Object;
.source "DeviceStateAutoRotateSettingController.java"


# instance fields
.field public final mRecords:Ljava/util/ArrayDeque;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory;->mRecords:Ljava/util/ArrayDeque;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/DeviceStateAutoRotateSettingController-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory;-><init>()V

    return-void
.end method


# virtual methods
.method public addRecord(Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;ZLcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;IZLcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;Z)V
    .registers 17

    .line 468
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory;->mRecords:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_f

    .line 469
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory;->mRecords:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 471
    :cond_f
    iget-object p0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory;->mRecords:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory$Record;

    const/4 v8, 0x0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory$Record;-><init>(Lcom/android/server/wm/DeviceStateAutoRotateSettingController$Event;ZLcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;IZLcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager$DeviceStateAutoRotateSetting;ZLcom/android/server/wm/DeviceStateAutoRotateSettingController-IA;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5

    .line 426
    iget-object v0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory;->mRecords:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_49

    .line 427
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  DeviceStateAutoRotateHistory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 430
    iget-object p0, p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory;->mRecords:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory$Record;

    .line 431
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController$DeviceStateAutoRotateHistory$Record;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_36

    .line 433
    :cond_46
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_49
    return-void
.end method
