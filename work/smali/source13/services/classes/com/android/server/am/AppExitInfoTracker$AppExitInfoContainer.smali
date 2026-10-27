.class final Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
.super Ljava/lang/Object;
.source "AppExitInfoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppExitInfoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AppExitInfoContainer"
.end annotation


# instance fields
.field private mInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxCapacity:I

.field private mUid:I

.field final synthetic this$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method static bridge synthetic -$$Nest$fputmUid(Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mUid:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/AppExitInfoTracker;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/am/AppExitInfoTracker;
    .param p2, "maxCapacity"    # I

    .line 1295
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1296
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    .line 1297
    iput p2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mMaxCapacity:I

    .line 1298
    return-void
.end method

.method static synthetic lambda$dumpLocked$2(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .registers 6
    .param p0, "a"    # Landroid/app/ApplicationExitInfo;
    .param p1, "b"    # Landroid/app/ApplicationExitInfo;

    .line 1430
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$getExitInfoLocked$0(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .registers 6
    .param p0, "a"    # Landroid/app/ApplicationExitInfo;
    .param p1, "b"    # Landroid/app/ApplicationExitInfo;

    .line 1316
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$getExitInfoLocked$1(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .registers 6
    .param p0, "a"    # Landroid/app/ApplicationExitInfo;
    .param p1, "b"    # Landroid/app/ApplicationExitInfo;

    .line 1336
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method


# virtual methods
.method addExitInfoLocked(Landroid/app/ApplicationExitInfo;)V
    .registers 10
    .param p1, "info"    # Landroid/app/ApplicationExitInfo;

    .line 1349
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v1, v0

    .local v1, "size":I
    iget v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mMaxCapacity:I

    if-lt v0, v2, :cond_44

    .line 1350
    const/4 v0, -0x1

    .line 1351
    .local v0, "oldestIndex":I
    const-wide v2, 0x7fffffffffffffffL

    .line 1352
    .local v2, "oldestTimeStamp":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    if-ge v4, v1, :cond_2c

    .line 1353
    iget-object v5, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ApplicationExitInfo;

    .line 1354
    .local v5, "r":Landroid/app/ApplicationExitInfo;
    invoke-virtual {v5}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_29

    .line 1355
    invoke-virtual {v5}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    .line 1356
    move v0, v4

    .line 1352
    .end local v5    # "r":Landroid/app/ApplicationExitInfo;
    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1359
    .end local v4    # "i":I
    :cond_2c
    if-ltz v0, :cond_44

    .line 1360
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v4}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    move-result-object v4

    .line 1361
    .local v4, "traceFile":Ljava/io/File;
    if-eqz v4, :cond_3f

    .line 1362
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1364
    :cond_3f
    iget-object v5, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1368
    .end local v0    # "oldestIndex":I
    .end local v2    # "oldestTimeStamp":J
    .end local v4    # "traceFile":Ljava/io/File;
    :cond_44
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v0

    .line 1369
    .local v0, "uid":I
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    .line 1370
    .local v2, "pid":I
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v3, v3, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-static {v3, v0, v2}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$smfindAndRemoveFromSparse2dArray(Landroid/util/SparseArray;II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {p1, v3}, Landroid/app/ApplicationExitInfo;->setProcessStateSummary([B)V

    .line 1372
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v3, v3, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-static {v3, v0, v2}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$smfindAndRemoveFromSparse2dArray(Landroid/util/SparseArray;II)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {p1, v3}, Landroid/app/ApplicationExitInfo;->setTraceFile(Ljava/io/File;)V

    .line 1373
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v3, v3, Lcom/android/server/am/AppExitInfoTracker;->mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    invoke-virtual {p1, v3}, Landroid/app/ApplicationExitInfo;->setAppTraceRetriever(Landroid/app/IAppTraceRetriever;)V

    .line 1374
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1375
    return-void
.end method

.method appendTraceIfNecessaryLocked(ILjava/io/File;)Z
    .registers 5
    .param p1, "pid"    # I
    .param p2, "traceFile"    # Ljava/io/File;

    .line 1379
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    .line 1380
    .local v0, "r":Landroid/app/ApplicationExitInfo;
    if-eqz v0, :cond_16

    .line 1381
    invoke-virtual {v0, p2}, Landroid/app/ApplicationExitInfo;->setTraceFile(Ljava/io/File;)V

    .line 1382
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v1, v1, Lcom/android/server/am/AppExitInfoTracker;->mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setAppTraceRetriever(Landroid/app/IAppTraceRetriever;)V

    .line 1383
    const/4 v1, 0x1

    return v1

    .line 1385
    :cond_16
    const/4 v1, 0x0

    return v1
.end method

.method destroyLocked()V
    .registers 5

    .line 1390
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_25

    .line 1391
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ApplicationExitInfo;

    .line 1392
    .local v1, "ai":Landroid/app/ApplicationExitInfo;
    invoke-virtual {v1}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    move-result-object v2

    .line 1393
    .local v2, "traceFile":Ljava/io/File;
    if-eqz v2, :cond_1b

    .line 1394
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1396
    :cond_1b
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/ApplicationExitInfo;->setTraceFile(Ljava/io/File;)V

    .line 1397
    invoke-virtual {v1, v3}, Landroid/app/ApplicationExitInfo;->setAppTraceRetriever(Landroid/app/IAppTraceRetriever;)V

    .line 1390
    .end local v1    # "ai":Landroid/app/ApplicationExitInfo;
    .end local v2    # "traceFile":Ljava/io/File;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1399
    .end local v0    # "i":I
    :cond_25
    return-void
.end method

.method dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "sdf"    # Landroid/icu/text/SimpleDateFormat;

    .line 1426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1427
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_1d

    .line 1428
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 1430
    .end local v1    # "i":I
    :cond_1d
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1431
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1432
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    if-ge v2, v1, :cond_5e

    .line 1433
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationExitInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p1, v4, v5, p3}, Landroid/app/ApplicationExitInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V

    .line 1432
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 1435
    .end local v2    # "i":I
    :cond_5e
    return-void
.end method

.method forEachRecordLocked(Ljava/util/function/BiFunction;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/Integer;",
            "Landroid/app/ApplicationExitInfo;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1403
    .local p1, "callback":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/Integer;Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_48

    .line 1404
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_48

    .line 1405
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationExitInfo;

    invoke-interface {p1, v1, v2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_4a

    goto :goto_45

    .line 1414
    :pswitch_2c
    const/4 v0, 0x0

    .line 1415
    goto :goto_45

    .line 1407
    :pswitch_2e
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v1}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    move-result-object v1

    .line 1408
    .local v1, "traceFile":Ljava/io/File;
    if-eqz v1, :cond_3f

    .line 1409
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1411
    :cond_3f
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1412
    nop

    .line 1404
    .end local v1    # "traceFile":Ljava/io/File;
    :goto_45
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1422
    .end local v0    # "i":I
    :cond_48
    return-void

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_2c
    .end packed-switch
.end method

.method getExitInfoLocked(IILjava/util/ArrayList;)V
    .registers 12
    .param p1, "filterPid"    # I
    .param p2, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationExitInfo;",
            ">;)V"
        }
    .end annotation

    .line 1303
    .local p3, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    if-lez p1, :cond_11

    .line 1304
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    .line 1305
    .local v0, "r":Landroid/app/ApplicationExitInfo;
    if-eqz v0, :cond_f

    .line 1306
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    .end local v0    # "r":Landroid/app/ApplicationExitInfo;
    :cond_f
    goto/16 :goto_93

    .line 1309
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1310
    .local v0, "numRep":I
    if-lez p2, :cond_7a

    if-gt v0, p2, :cond_1c

    goto :goto_7a

    .line 1318
    :cond_1c
    const/4 v1, 0x1

    if-ne p2, v1, :cond_47

    .line 1320
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ApplicationExitInfo;

    .line 1321
    .local v1, "r":Landroid/app/ApplicationExitInfo;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_29
    if-ge v2, v0, :cond_43

    .line 1322
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationExitInfo;

    .line 1323
    .local v3, "t":Landroid/app/ApplicationExitInfo;
    invoke-virtual {v1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_40

    .line 1324
    move-object v1, v3

    .line 1321
    .end local v3    # "t":Landroid/app/ApplicationExitInfo;
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 1327
    .end local v2    # "i":I
    :cond_43
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1328
    .end local v1    # "r":Landroid/app/ApplicationExitInfo;
    goto :goto_93

    .line 1330
    :cond_47
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v1, v1, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    .line 1331
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1332
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4f
    if-ge v2, v0, :cond_5f

    .line 1333
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1332
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 1335
    .end local v2    # "i":I
    :cond_5f
    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1337
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_68
    if-ge v2, p2, :cond_76

    .line 1338
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationExitInfo;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1337
    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    .line 1340
    .end local v2    # "i":I
    :cond_76
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_93

    .line 1312
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    :cond_7a
    :goto_7a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7b
    if-ge v1, v0, :cond_8b

    .line 1313
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationExitInfo;

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1312
    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    .line 1315
    .end local v1    # "i":I
    :cond_8b
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1344
    .end local v0    # "numRep":I
    :goto_93
    return-void
.end method

.method readFromProto(Landroid/util/proto/ProtoInputStream;J)I
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;
        }
    .end annotation

    .line 1450
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 1451
    .local v0, "token":J
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    .line 1452
    .local v2, "next":I
    :goto_8
    const/4 v3, -0x1

    if-eq v2, v3, :cond_37

    .line 1454
    packed-switch v2, :pswitch_data_3e

    goto :goto_32

    .line 1459
    :pswitch_f
    new-instance v3, Landroid/app/ApplicationExitInfo;

    invoke-direct {v3}, Landroid/app/ApplicationExitInfo;-><init>()V

    .line 1460
    .local v3, "info":Landroid/app/ApplicationExitInfo;
    const-wide v4, 0x20b00000002L

    invoke-virtual {v3, p1, v4, v5}, Landroid/app/ApplicationExitInfo;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    .line 1461
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_32

    .line 1456
    .end local v3    # "info":Landroid/app/ApplicationExitInfo;
    :pswitch_26
    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v3

    iput v3, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mUid:I

    .line 1457
    nop

    .line 1453
    :goto_32
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v2

    goto :goto_8

    .line 1465
    .end local v2    # "next":I
    :cond_37
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 1466
    iget v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mUid:I

    return v2

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_26
        :pswitch_f
    .end packed-switch
.end method

.method toListLocked(Ljava/util/List;I)Ljava/util/List;
    .registers 5
    .param p2, "filterPid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ApplicationExitInfo;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation

    .line 1471
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ApplicationExitInfo;>;"
    if-nez p1, :cond_8

    .line 1472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p1, v0

    .line 1474
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_10
    if-ltz v0, :cond_2a

    .line 1475
    if-eqz p2, :cond_1c

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-ne p2, v1, :cond_27

    .line 1476
    :cond_1c
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ApplicationExitInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1474
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 1479
    .end local v0    # "i":I
    :cond_2a
    return-object p1
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1439
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1440
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mUid:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1441
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1442
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v2, :cond_2a

    .line 1443
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ApplicationExitInfo;

    const-wide v5, 0x20b00000002L

    invoke-virtual {v4, p1, v5, v6}, Landroid/app/ApplicationExitInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1442
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1445
    .end local v3    # "i":I
    :cond_2a
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1446
    return-void
.end method
