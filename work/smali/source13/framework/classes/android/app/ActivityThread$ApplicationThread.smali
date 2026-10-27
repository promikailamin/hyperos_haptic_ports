.class Landroid/app/ActivityThread$ApplicationThread;
.super Landroid/app/IApplicationThread$Stub;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationThread"
.end annotation


# static fields
.field private static final greylist-max-o DB_INFO_FORMAT:Ljava/lang/String; = "  %8s %8s %14s %14s  %s"


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityThread;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdumpDatabaseInfo(Landroid/app/ActivityThread$ApplicationThread;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread$ApplicationThread;->dumpDatabaseInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/ActivityThread;)V
    .registers 2

    .line 1103
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/app/IApplicationThread$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$ApplicationThread-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private blacklist dumpDatabaseInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V
    .registers 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "isSystem"    # Z

    .line 1770
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    .line 1771
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1772
    .local v0, "pw":Ljava/io/PrintWriter;
    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1773
    .local v1, "printer":Landroid/util/PrintWriterPrinter;
    invoke-static {v1, p2, p3}, Landroid/database/sqlite/SQLiteDebug;->dump(Landroid/util/Printer;[Ljava/lang/String;Z)V

    .line 1774
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1775
    return-void
.end method

.method private greylist-max-o dumpMemInfo(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZZZ)V
    .registers 76
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "dumpFullInfo"    # Z
    .param p4, "dumpDalvik"    # Z
    .param p5, "dumpSummaryOnly"    # Z
    .param p6, "dumpUnreachable"    # Z

    .line 1634
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v1

    const-wide/16 v17, 0x400

    div-long v19, v1, v17

    .line 1635
    .local v19, "nativeMax":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v1

    div-long v21, v1, v17

    .line 1636
    .local v21, "nativeAllocated":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v1

    div-long v23, v1, v17

    .line 1638
    .local v23, "nativeFree":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v25

    .line 1639
    .local v25, "runtime":Ljava/lang/Runtime;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Runtime;->gc()V

    .line 1640
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    div-long v26, v1, v17

    .line 1641
    .local v26, "dalvikMax":J
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    div-long v28, v1, v17

    .line 1642
    .local v28, "dalvikFree":J
    sub-long v30, v26, v28

    .line 1644
    .local v30, "dalvikAllocated":J
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/app/ContextImpl;

    const/16 v32, 0x0

    aput-object v2, v1, v32

    const-class v2, Landroid/app/Activity;

    const/4 v13, 0x1

    aput-object v2, v1, v13

    const-class v2, Landroid/webkit/WebView;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-class v2, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    move-object v14, v1

    .line 1650
    .local v14, "classesToCount":[Ljava/lang/Class;
    invoke-static {v14, v13}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    move-result-object v33

    .line 1651
    .local v33, "instanceCounts":[J
    aget-wide v11, v33, v32

    .line 1652
    .local v11, "appContextInstanceCount":J
    aget-wide v9, v33, v13

    .line 1653
    .local v9, "activityInstanceCount":J
    aget-wide v7, v33, v3

    .line 1654
    .local v7, "webviewInstanceCount":J
    aget-wide v5, v33, v4

    .line 1656
    .local v5, "openSslSocketCount":J
    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    move-result-wide v3

    .line 1657
    .local v3, "viewInstanceCount":J
    invoke-static {}, Landroid/view/ViewDebug;->getViewRootImplCount()J

    move-result-wide v1

    .line 1658
    .local v1, "viewRootInstanceCount":J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v13

    .line 1659
    .local v13, "globalAssetCount":I
    move/from16 v34, v13

    .end local v13    # "globalAssetCount":I
    .local v34, "globalAssetCount":I
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v13

    .line 1660
    .local v13, "globalAssetManagerCount":I
    move/from16 v35, v13

    .end local v13    # "globalAssetManagerCount":I
    .local v35, "globalAssetManagerCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v13

    .line 1661
    .local v13, "binderLocalObjectCount":I
    move/from16 v36, v13

    .end local v13    # "binderLocalObjectCount":I
    .local v36, "binderLocalObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v13

    .line 1662
    .local v13, "binderProxyObjectCount":I
    move/from16 v37, v13

    .end local v13    # "binderProxyObjectCount":I
    .local v37, "binderProxyObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v13

    .line 1663
    .local v13, "binderDeathObjectCount":I
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocSize()J

    move-result-wide v38

    .line 1664
    .local v38, "parcelSize":J
    move/from16 v41, v13

    move-object/from16 v40, v14

    .end local v13    # "binderDeathObjectCount":I
    .end local v14    # "classesToCount":[Ljava/lang/Class;
    .local v40, "classesToCount":[Ljava/lang/Class;
    .local v41, "binderDeathObjectCount":I
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocCount()J

    move-result-wide v13

    .line 1665
    .local v13, "parcelCount":J
    move-wide/from16 v42, v13

    .end local v13    # "parcelCount":J
    .local v42, "parcelCount":J
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v13

    .line 1667
    .local v13, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    move-wide/from16 v44, v1

    .end local v1    # "viewRootInstanceCount":J
    .local v44, "viewRootInstanceCount":J
    const-wide v1, 0x10b00000001L

    invoke-virtual {v15, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 1668
    .local v1, "mToken":J
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    move-wide/from16 v46, v11

    .end local v11    # "appContextInstanceCount":J
    .local v46, "appContextInstanceCount":J
    const-wide v11, 0x10500000001L

    invoke-virtual {v15, v11, v12, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1669
    nop

    .line 1670
    iget-object v14, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v14, v14, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v14, :cond_af

    iget-object v14, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v14, v14, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v14, v14, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_b2

    :cond_af
    const-string/jumbo v14, "unknown"

    .line 1669
    :goto_b2
    const-wide v11, 0x10900000002L

    invoke-virtual {v15, v11, v12, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1671
    move-wide/from16 v48, v1

    move-wide/from16 v11, v44

    .end local v1    # "mToken":J
    .end local v44    # "viewRootInstanceCount":J
    .local v11, "viewRootInstanceCount":J
    .local v48, "mToken":J
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v50, v3

    .end local v3    # "viewInstanceCount":J
    .local v50, "viewInstanceCount":J
    move/from16 v3, p4

    move/from16 v4, p5

    move-wide/from16 v52, v5

    .end local v5    # "openSslSocketCount":J
    .local v52, "openSslSocketCount":J
    move-wide/from16 v5, v19

    move-wide/from16 v54, v7

    .end local v7    # "webviewInstanceCount":J
    .local v54, "webviewInstanceCount":J
    move-wide/from16 v7, v21

    move-wide/from16 v56, v9

    .end local v9    # "activityInstanceCount":J
    .local v56, "activityInstanceCount":J
    move-wide/from16 v9, v23

    move-wide/from16 v60, v11

    move-wide/from16 v58, v46

    .end local v11    # "viewRootInstanceCount":J
    .end local v46    # "appContextInstanceCount":J
    .local v58, "appContextInstanceCount":J
    .local v60, "viewRootInstanceCount":J
    move-wide/from16 v11, v26

    move-object/from16 v68, v13

    move/from16 v0, v34

    move/from16 v62, v35

    move/from16 v63, v36

    move/from16 v64, v37

    move-object/from16 v34, v40

    move/from16 v65, v41

    move-wide/from16 v66, v42

    const/16 v35, 0x1

    .end local v13    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v35    # "globalAssetManagerCount":I
    .end local v36    # "binderLocalObjectCount":I
    .end local v37    # "binderProxyObjectCount":I
    .end local v40    # "classesToCount":[Ljava/lang/Class;
    .end local v41    # "binderDeathObjectCount":I
    .end local v42    # "parcelCount":J
    .local v0, "globalAssetCount":I
    .local v34, "classesToCount":[Ljava/lang/Class;
    .local v62, "globalAssetManagerCount":I
    .local v63, "binderLocalObjectCount":I
    .local v64, "binderProxyObjectCount":I
    .local v65, "binderDeathObjectCount":I
    .local v66, "parcelCount":J
    .local v68, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    move-wide/from16 v13, v30

    move/from16 v36, v0

    move-object v0, v15

    .end local v0    # "globalAssetCount":I
    .local v36, "globalAssetCount":I
    move-wide/from16 v15, v28

    invoke-static/range {v1 .. v16}, Landroid/app/ActivityThread;->dumpMemInfoTable(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZJJJJJJ)V

    .line 1674
    move-wide/from16 v1, v48

    .end local v48    # "mToken":J
    .restart local v1    # "mToken":J
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1676
    const-wide v3, 0x10b00000002L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1677
    .local v3, "oToken":J
    move-wide/from16 v5, v50

    const-wide v7, 0x10500000001L

    .end local v50    # "viewInstanceCount":J
    .local v5, "viewInstanceCount":J
    invoke-virtual {v0, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1679
    const-wide v9, 0x10500000002L

    move-wide/from16 v11, v60

    .end local v60    # "viewRootInstanceCount":J
    .restart local v11    # "viewRootInstanceCount":J
    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1681
    const-wide v13, 0x10500000003L

    move-wide/from16 v9, v58

    .end local v58    # "appContextInstanceCount":J
    .local v9, "appContextInstanceCount":J
    invoke-virtual {v0, v13, v14, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1683
    const-wide v13, 0x10500000004L

    move-wide/from16 v7, v56

    .end local v56    # "activityInstanceCount":J
    .local v7, "activityInstanceCount":J
    invoke-virtual {v0, v13, v14, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1685
    const-wide v13, 0x10500000005L

    move/from16 v15, v36

    .end local v36    # "globalAssetCount":I
    .local v15, "globalAssetCount":I
    invoke-virtual {v0, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1687
    const-wide v13, 0x10500000006L

    move/from16 v1, v62

    .end local v62    # "globalAssetManagerCount":I
    .local v1, "globalAssetManagerCount":I
    .restart local v48    # "mToken":J
    invoke-virtual {v0, v13, v14, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1689
    const-wide v13, 0x10500000007L

    move/from16 v2, v63

    .end local v63    # "binderLocalObjectCount":I
    .local v2, "binderLocalObjectCount":I
    invoke-virtual {v0, v13, v14, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1691
    const-wide v13, 0x10500000008L

    move/from16 v1, v64

    .end local v64    # "binderProxyObjectCount":I
    .local v1, "binderProxyObjectCount":I
    .restart local v62    # "globalAssetManagerCount":I
    invoke-virtual {v0, v13, v14, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1693
    const-wide v13, 0x10300000009L

    .end local v1    # "binderProxyObjectCount":I
    .end local v2    # "binderLocalObjectCount":I
    .restart local v63    # "binderLocalObjectCount":I
    .restart local v64    # "binderProxyObjectCount":I
    div-long v1, v38, v17

    invoke-virtual {v0, v13, v14, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1695
    const-wide v1, 0x1050000000aL

    move-wide/from16 v13, v66

    .end local v66    # "parcelCount":J
    .local v13, "parcelCount":J
    invoke-virtual {v0, v1, v2, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1696
    const-wide v1, 0x1050000000bL

    move/from16 v5, v65

    .end local v65    # "binderDeathObjectCount":I
    .local v5, "binderDeathObjectCount":I
    .restart local v50    # "viewInstanceCount":J
    invoke-virtual {v0, v1, v2, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1698
    const-wide v1, 0x1050000000cL

    move-wide/from16 v5, v52

    .end local v52    # "openSslSocketCount":J
    .local v5, "openSslSocketCount":J
    .restart local v65    # "binderDeathObjectCount":I
    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1700
    const-wide v1, 0x1050000000dL

    move-wide/from16 v5, v54

    .end local v54    # "webviewInstanceCount":J
    .local v5, "webviewInstanceCount":J
    .restart local v52    # "openSslSocketCount":J
    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1702
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1705
    const-wide v1, 0x10b00000003L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 1706
    .local v1, "sToken":J
    move-wide/from16 v16, v3

    move-object/from16 v3, v68

    .end local v68    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v3, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v16, "oToken":J
    iget v4, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v4, v4, 0x400

    const-wide v5, 0x10500000001L

    .end local v5    # "webviewInstanceCount":J
    .restart local v54    # "webviewInstanceCount":J
    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1708
    iget v4, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v4, v4, 0x400

    const-wide v5, 0x10500000002L

    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1710
    iget v6, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v6, v6, 0x400

    const-wide v4, 0x10500000003L

    invoke-virtual {v0, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1712
    iget-object v4, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1713
    .local v4, "n":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1c1
    move-wide/from16 v56, v7

    .end local v7    # "activityInstanceCount":J
    .restart local v56    # "activityInstanceCount":J
    if-ge v5, v4, :cond_21c

    .line 1714
    iget-object v8, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1716
    .local v8, "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    const-wide v6, 0x20b00000004L

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1717
    .local v6, "dToken":J
    move-object/from16 v68, v3

    move/from16 v18, v4

    .end local v3    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v4    # "n":I
    .local v18, "n":I
    .restart local v68    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    const-wide v3, 0x10900000001L

    move-wide/from16 v58, v9

    .end local v9    # "appContextInstanceCount":J
    .restart local v58    # "appContextInstanceCount":J
    iget-object v9, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1718
    iget-wide v3, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    const-wide v9, 0x10500000002L

    invoke-virtual {v0, v9, v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1719
    iget-wide v3, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    const-wide v9, 0x10500000003L

    invoke-virtual {v0, v9, v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1720
    iget v3, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    const-wide v9, 0x10500000004L

    invoke-virtual {v0, v9, v10, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1722
    iget-object v3, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    const-wide v9, 0x10900000005L

    invoke-virtual {v0, v9, v10, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1723
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1713
    .end local v6    # "dToken":J
    .end local v8    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v18

    move-wide/from16 v7, v56

    move-wide/from16 v9, v58

    move-object/from16 v3, v68

    goto :goto_1c1

    .end local v18    # "n":I
    .end local v58    # "appContextInstanceCount":J
    .end local v68    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v3    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v4    # "n":I
    .restart local v9    # "appContextInstanceCount":J
    :cond_21c
    move-object/from16 v68, v3

    move/from16 v18, v4

    move-wide/from16 v58, v9

    .line 1725
    .end local v3    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v4    # "n":I
    .end local v5    # "i":I
    .end local v9    # "appContextInstanceCount":J
    .restart local v18    # "n":I
    .restart local v58    # "appContextInstanceCount":J
    .restart local v68    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1728
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v3

    .line 1729
    .local v3, "assetAlloc":Ljava/lang/String;
    if-eqz v3, :cond_233

    .line 1730
    const-wide v4, 0x10900000004L

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1734
    :cond_233
    if-eqz p6, :cond_264

    .line 1735
    move-object/from16 v4, p0

    move v5, v15

    .end local v15    # "globalAssetCount":I
    .local v5, "globalAssetCount":I
    iget-object v6, v4, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-nez v6, :cond_241

    move/from16 v6, v32

    goto :goto_249

    :cond_241
    iget-object v6, v4, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v6, v6, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1736
    .local v6, "flags":I
    :goto_249
    and-int/lit8 v7, v6, 0x2

    if-nez v7, :cond_251

    sget-boolean v7, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v7, :cond_253

    :cond_251
    move/from16 v32, v35

    :cond_253
    move/from16 v7, v32

    .line 1738
    .local v7, "showContents":Z
    const/16 v8, 0x64

    .line 1739
    invoke-static {v8, v7}, Landroid/os/Debug;->getUnreachableMemory(IZ)Ljava/lang/String;

    move-result-object v8

    .line 1738
    const-wide v9, 0x10900000005L

    invoke-virtual {v0, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_267

    .line 1734
    .end local v5    # "globalAssetCount":I
    .end local v6    # "flags":I
    .end local v7    # "showContents":Z
    .restart local v15    # "globalAssetCount":I
    :cond_264
    move-object/from16 v4, p0

    move v5, v15

    .line 1741
    .end local v15    # "globalAssetCount":I
    .restart local v5    # "globalAssetCount":I
    :goto_267
    return-void
.end method

.method private blacklist dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZZZ)V
    .registers 73
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpFullInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpUnknown"    # Z
    .param p7, "dumpSummaryOnly"    # Z
    .param p8, "dumpUnreachable"    # Z

    .line 1477
    move-object/from16 v0, p0

    move-object/from16 v14, p1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v1

    const-wide/16 v22, 0x400

    div-long v24, v1, v22

    .line 1478
    .local v24, "nativeMax":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v1

    div-long v26, v1, v22

    .line 1479
    .local v26, "nativeAllocated":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v1

    div-long v28, v1, v22

    .line 1481
    .local v28, "nativeFree":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v30

    .line 1482
    .local v30, "runtime":Ljava/lang/Runtime;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Runtime;->gc()V

    .line 1483
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    div-long v31, v1, v22

    .line 1484
    .local v31, "dalvikMax":J
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    div-long v33, v1, v22

    .line 1485
    .local v33, "dalvikFree":J
    sub-long v35, v31, v33

    .line 1487
    .local v35, "dalvikAllocated":J
    const/4 v15, 0x4

    new-array v1, v15, [Ljava/lang/Class;

    const-class v2, Landroid/app/ContextImpl;

    const/16 v37, 0x0

    aput-object v2, v1, v37

    const-class v2, Landroid/app/Activity;

    const/4 v12, 0x1

    aput-object v2, v1, v12

    const-class v2, Landroid/webkit/WebView;

    const/4 v13, 0x2

    aput-object v2, v1, v13

    const-class v2, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    const/16 v38, 0x3

    aput-object v2, v1, v38

    move-object v10, v1

    .line 1493
    .local v10, "classesToCount":[Ljava/lang/Class;
    invoke-static {v10, v12}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    move-result-object v39

    .line 1494
    .local v39, "instanceCounts":[J
    aget-wide v8, v39, v37

    .line 1495
    .local v8, "appContextInstanceCount":J
    aget-wide v6, v39, v12

    .line 1496
    .local v6, "activityInstanceCount":J
    aget-wide v40, v39, v13

    .line 1497
    .local v40, "webviewInstanceCount":J
    aget-wide v4, v39, v38

    .line 1499
    .local v4, "openSslSocketCount":J
    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    move-result-wide v2

    .line 1500
    .local v2, "viewInstanceCount":J
    invoke-static {}, Landroid/view/ViewDebug;->getViewRootImplCount()J

    move-result-wide v14

    .line 1501
    .local v14, "viewRootInstanceCount":J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v11

    .line 1502
    .local v11, "globalAssetCount":I
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v1

    .line 1503
    .local v1, "globalAssetManagerCount":I
    move-wide/from16 v17, v14

    .end local v14    # "viewRootInstanceCount":J
    .local v17, "viewRootInstanceCount":J
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v14

    .line 1504
    .local v14, "binderLocalObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v15

    .line 1505
    .local v15, "binderProxyObjectCount":I
    move/from16 v19, v14

    .end local v14    # "binderLocalObjectCount":I
    .local v19, "binderLocalObjectCount":I
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v14

    .line 1506
    .local v14, "binderDeathObjectCount":I
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocSize()J

    move-result-wide v42

    .line 1507
    .local v42, "parcelSize":J
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocCount()J

    move-result-wide v44

    .line 1508
    .local v44, "parcelCount":J
    move/from16 v20, v14

    .end local v14    # "binderDeathObjectCount":I
    .local v20, "binderDeathObjectCount":I
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v14

    .line 1515
    .local v14, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    nop

    .line 1516
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v21

    .line 1517
    iget-object v12, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v12, v12, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v12, :cond_93

    iget-object v12, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v12, v12, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v12, v12, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_96

    :cond_93
    const-string/jumbo v12, "unknown"

    .line 1515
    :goto_96
    move v0, v1

    .end local v1    # "globalAssetManagerCount":I
    .local v0, "globalAssetManagerCount":I
    move-object/from16 v1, p1

    move-wide/from16 v47, v2

    .end local v2    # "viewInstanceCount":J
    .local v47, "viewInstanceCount":J
    move-object/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v49, v4

    .end local v4    # "openSslSocketCount":J
    .local v49, "openSslSocketCount":J
    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v51, v6

    .end local v6    # "activityInstanceCount":J
    .local v51, "activityInstanceCount":J
    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v53, v8

    .end local v8    # "appContextInstanceCount":J
    .local v53, "appContextInstanceCount":J
    move/from16 v8, v21

    move-object v9, v12

    move-object/from16 v55, v10

    move v12, v11

    .end local v10    # "classesToCount":[Ljava/lang/Class;
    .end local v11    # "globalAssetCount":I
    .local v12, "globalAssetCount":I
    .local v55, "classesToCount":[Ljava/lang/Class;
    move-wide/from16 v10, v24

    move/from16 v56, v0

    move v0, v12

    const/16 v46, 0x1

    .end local v12    # "globalAssetCount":I
    .local v0, "globalAssetCount":I
    .local v56, "globalAssetManagerCount":I
    move-wide/from16 v12, v26

    move/from16 v57, v0

    move-object/from16 v63, v14

    move/from16 v61, v15

    move-wide/from16 v58, v17

    move/from16 v60, v19

    move/from16 v62, v20

    move-object/from16 v0, p1

    .end local v0    # "globalAssetCount":I
    .end local v14    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v15    # "binderProxyObjectCount":I
    .end local v17    # "viewRootInstanceCount":J
    .end local v19    # "binderLocalObjectCount":I
    .end local v20    # "binderDeathObjectCount":I
    .local v57, "globalAssetCount":I
    .local v58, "viewRootInstanceCount":J
    .local v60, "binderLocalObjectCount":I
    .local v61, "binderProxyObjectCount":I
    .local v62, "binderDeathObjectCount":I
    .local v63, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    move-wide/from16 v14, v28

    move-wide/from16 v16, v31

    move-wide/from16 v18, v35

    move-wide/from16 v20, v33

    invoke-static/range {v1 .. v21}, Landroid/app/ActivityThread;->dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZZILjava/lang/String;JJJJJJ)V

    .line 1521
    if-eqz p3, :cond_1a8

    .line 1526
    move-wide/from16 v1, v47

    .end local v47    # "viewInstanceCount":J
    .local v1, "viewInstanceCount":J
    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1527
    move-wide/from16 v4, v58

    .end local v58    # "viewRootInstanceCount":J
    .local v4, "viewRootInstanceCount":J
    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1528
    move-wide/from16 v6, v53

    .end local v53    # "appContextInstanceCount":J
    .local v6, "appContextInstanceCount":J
    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1529
    move-wide/from16 v8, v51

    .end local v51    # "activityInstanceCount":J
    .local v8, "activityInstanceCount":J
    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1531
    move/from16 v10, v57

    .end local v57    # "globalAssetCount":I
    .local v10, "globalAssetCount":I
    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1532
    move/from16 v11, v56

    .end local v56    # "globalAssetManagerCount":I
    .local v11, "globalAssetManagerCount":I
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1533
    move/from16 v12, v60

    .end local v60    # "binderLocalObjectCount":I
    .local v12, "binderLocalObjectCount":I
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1534
    move/from16 v13, v61

    .end local v61    # "binderProxyObjectCount":I
    .local v13, "binderProxyObjectCount":I
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1536
    move/from16 v14, v62

    .end local v62    # "binderDeathObjectCount":I
    .local v14, "binderDeathObjectCount":I
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1537
    move-wide/from16 v14, v49

    .end local v49    # "openSslSocketCount":J
    .local v14, "openSslSocketCount":J
    .restart local v62    # "binderDeathObjectCount":I
    invoke-virtual {v0, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 1540
    move-object/from16 v3, v63

    .end local v14    # "openSslSocketCount":J
    .end local v63    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v3, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v49    # "openSslSocketCount":J
    iget v14, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v14, v14, 0x400

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    const/16 v14, 0x2c

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 1541
    iget v15, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v15, v15, 0x400

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 1542
    iget v15, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v15, v15, 0x400

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(C)V

    .line 1543
    iget v14, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v14, v14, 0x400

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 1544
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_153
    iget-object v15, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_1a4

    .line 1545
    iget-object v15, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1546
    .local v15, "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    move-object/from16 v63, v3

    const/16 v3, 0x2c

    .end local v3    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v63    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    iget-object v3, v15, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1547
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    move-wide/from16 v58, v4

    .end local v4    # "viewRootInstanceCount":J
    .restart local v58    # "viewRootInstanceCount":J
    iget-wide v3, v15, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 1548
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    iget-wide v4, v15, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    invoke-virtual {v0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1549
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    iget v4, v15, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1550
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    iget-object v4, v15, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1551
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    iget-object v4, v15, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1544
    .end local v15    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v4, v58

    move-object/from16 v3, v63

    goto :goto_153

    .line 1553
    .end local v14    # "i":I
    .end local v58    # "viewRootInstanceCount":J
    .end local v63    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v3    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v4    # "viewRootInstanceCount":J
    :cond_1a4
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1555
    return-void

    .line 1558
    .end local v1    # "viewInstanceCount":J
    .end local v3    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v4    # "viewRootInstanceCount":J
    .end local v6    # "appContextInstanceCount":J
    .end local v8    # "activityInstanceCount":J
    .end local v10    # "globalAssetCount":I
    .end local v11    # "globalAssetManagerCount":I
    .end local v12    # "binderLocalObjectCount":I
    .end local v13    # "binderProxyObjectCount":I
    .restart local v47    # "viewInstanceCount":J
    .restart local v51    # "activityInstanceCount":J
    .restart local v53    # "appContextInstanceCount":J
    .restart local v56    # "globalAssetManagerCount":I
    .restart local v57    # "globalAssetCount":I
    .restart local v58    # "viewRootInstanceCount":J
    .restart local v60    # "binderLocalObjectCount":I
    .restart local v61    # "binderProxyObjectCount":I
    .restart local v63    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    :cond_1a8
    move-wide/from16 v1, v47

    move-wide/from16 v8, v51

    move-wide/from16 v6, v53

    move/from16 v11, v56

    move/from16 v10, v57

    move/from16 v12, v60

    move/from16 v13, v61

    .end local v47    # "viewInstanceCount":J
    .end local v51    # "activityInstanceCount":J
    .end local v53    # "appContextInstanceCount":J
    .end local v56    # "globalAssetManagerCount":I
    .end local v57    # "globalAssetCount":I
    .end local v60    # "binderLocalObjectCount":I
    .end local v61    # "binderProxyObjectCount":I
    .restart local v1    # "viewInstanceCount":J
    .restart local v6    # "appContextInstanceCount":J
    .restart local v8    # "activityInstanceCount":J
    .restart local v10    # "globalAssetCount":I
    .restart local v11    # "globalAssetManagerCount":I
    .restart local v12    # "binderLocalObjectCount":I
    .restart local v13    # "binderProxyObjectCount":I
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1559
    const-string v4, " Objects"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1560
    const/4 v4, 0x4

    new-array v5, v4, [Ljava/lang/Object;

    const-string v14, "Views:"

    aput-object v14, v5, v37

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v5, v46

    const-string v14, "ViewRootImpl:"

    const/4 v15, 0x2

    aput-object v14, v5, v15

    .line 1561
    invoke-static/range {v58 .. v59}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v5, v38

    .line 1560
    const-string v14, "%21s %8d %21s %8d"

    invoke-static {v0, v14, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1563
    new-array v5, v4, [Ljava/lang/Object;

    const-string v16, "AppContexts:"

    aput-object v16, v5, v37

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v5, v46

    const-string v16, "Activities:"

    aput-object v16, v5, v15

    .line 1564
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v5, v38

    .line 1563
    invoke-static {v0, v14, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1566
    new-array v5, v4, [Ljava/lang/Object;

    const-string v16, "Assets:"

    aput-object v16, v5, v37

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v5, v46

    const-string v16, "AssetManagers:"

    aput-object v16, v5, v15

    .line 1567
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v5, v38

    .line 1566
    invoke-static {v0, v14, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1569
    new-array v5, v4, [Ljava/lang/Object;

    const-string v16, "Local Binders:"

    aput-object v16, v5, v37

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v5, v46

    const-string v16, "Proxy Binders:"

    aput-object v16, v5, v15

    .line 1570
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v5, v38

    .line 1569
    invoke-static {v0, v14, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1571
    new-array v5, v4, [Ljava/lang/Object;

    const-string v16, "Parcel memory:"

    aput-object v16, v5, v37

    div-long v16, v42, v22

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v5, v46

    const-string v16, "Parcel count:"

    aput-object v16, v5, v15

    .line 1572
    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v5, v38

    .line 1571
    invoke-static {v0, v14, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1573
    new-array v5, v4, [Ljava/lang/Object;

    const-string v16, "Death Recipients:"

    aput-object v16, v5, v37

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v5, v46

    const-string v16, "OpenSSL Sockets:"

    aput-object v16, v5, v15

    .line 1574
    invoke-static/range {v49 .. v50}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v5, v38

    .line 1573
    invoke-static {v0, v14, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1575
    new-array v5, v15, [Ljava/lang/Object;

    const-string v16, "WebViews:"

    aput-object v16, v5, v37

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v5, v46

    const-string v4, "%21s %8d"

    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1578
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1579
    const-string v5, " SQL"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1580
    new-array v5, v15, [Ljava/lang/Object;

    const-string v16, "MEMORY_USED:"

    aput-object v16, v5, v37

    move-object/from16 v15, v63

    .end local v1    # "viewInstanceCount":J
    .end local v63    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v15, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v47    # "viewInstanceCount":J
    iget v1, v15, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v1, v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v46

    invoke-static {v0, v4, v5}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1581
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Object;

    const-string v1, "PAGECACHE_OVERFLOW:"

    aput-object v1, v2, v37

    iget v1, v15, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v1, v1, 0x400

    .line 1582
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v46

    const-string v1, "MALLOC_SIZE:"

    const/4 v4, 0x2

    aput-object v1, v2, v4

    iget v1, v15, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v1, v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v38

    .line 1581
    invoke-static {v0, v14, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1583
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1584
    iget-object v1, v15, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1585
    .local v1, "N":I
    if-lez v1, :cond_33a

    .line 1586
    const-string v2, " DATABASES"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1587
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/Object;

    const-string/jumbo v5, "pgsz"

    aput-object v5, v4, v37

    const-string v5, "dbsz"

    aput-object v5, v4, v46

    const-string v5, "Lookaside(b)"

    const/4 v14, 0x2

    aput-object v5, v4, v14

    const-string v5, "cache"

    aput-object v5, v4, v38

    const-string v5, "Dbname"

    const/4 v14, 0x4

    aput-object v5, v4, v14

    const-string v5, "  %8s %8s %14s %14s  %s"

    invoke-static {v0, v5, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1589
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2dd
    if-ge v4, v1, :cond_335

    .line 1590
    iget-object v14, v15, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1591
    .local v14, "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    move/from16 v16, v1

    .end local v1    # "N":I
    .local v16, "N":I
    new-array v1, v2, [Ljava/lang/Object;

    .line 1592
    move-object/from16 v17, v3

    iget-wide v2, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    const-wide/16 v19, 0x0

    cmp-long v2, v2, v19

    if-lez v2, :cond_2fc

    iget-wide v2, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_2fe

    :cond_2fc
    move-object/from16 v2, v17

    :goto_2fe
    aput-object v2, v1, v37

    .line 1593
    iget-wide v2, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    cmp-long v2, v2, v19

    if-lez v2, :cond_30d

    iget-wide v2, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_30f

    :cond_30d
    move-object/from16 v2, v17

    :goto_30f
    aput-object v2, v1, v46

    .line 1594
    iget v2, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    if-lez v2, :cond_31c

    iget v2, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_31e

    :cond_31c
    move-object/from16 v2, v17

    :goto_31e
    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    aput-object v2, v1, v38

    iget-object v2, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 1591
    invoke-static {v0, v5, v1}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1589
    .end local v14    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v16

    move-object/from16 v3, v17

    const/4 v2, 0x5

    goto :goto_2dd

    .end local v16    # "N":I
    .restart local v1    # "N":I
    :cond_335
    move/from16 v16, v1

    move-object/from16 v17, v3

    .end local v1    # "N":I
    .restart local v16    # "N":I
    goto :goto_33e

    .line 1585
    .end local v4    # "i":I
    .end local v16    # "N":I
    .restart local v1    # "N":I
    :cond_33a
    move/from16 v16, v1

    move-object/from16 v17, v3

    .line 1600
    .end local v1    # "N":I
    .restart local v16    # "N":I
    :goto_33e
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v1

    .line 1601
    .local v1, "assetAlloc":Ljava/lang/String;
    if-eqz v1, :cond_352

    .line 1602
    move-object/from16 v2, v17

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1603
    const-string v3, " Asset Allocations"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1604
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_354

    .line 1601
    :cond_352
    move-object/from16 v2, v17

    .line 1608
    :goto_354
    if-eqz p8, :cond_385

    .line 1609
    move-object/from16 v3, p0

    move v4, v11

    .end local v11    # "globalAssetManagerCount":I
    .local v4, "globalAssetManagerCount":I
    iget-object v5, v3, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v5, :cond_36b

    iget-object v5, v3, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v5, v5, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v5, v5, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v11, 0x2

    and-int/2addr v5, v11

    if-nez v5, :cond_36f

    :cond_36b
    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_371

    :cond_36f
    move/from16 v37, v46

    :cond_371
    move/from16 v5, v37

    .line 1612
    .local v5, "showContents":Z
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1613
    const-string v2, " Unreachable memory"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1614
    const/16 v2, 0x64

    invoke-static {v2, v5}, Landroid/os/Debug;->getUnreachableMemory(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_388

    .line 1608
    .end local v4    # "globalAssetManagerCount":I
    .end local v5    # "showContents":Z
    .restart local v11    # "globalAssetManagerCount":I
    :cond_385
    move-object/from16 v3, p0

    move v4, v11

    .line 1616
    .end local v11    # "globalAssetManagerCount":I
    .restart local v4    # "globalAssetManagerCount":I
    :goto_388
    return-void
.end method

.method private blacklist getDatabasesDir(Landroid/content/Context;)Ljava/io/File;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1766
    const-string v0, "a"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$performDirectAction$2(Ljava/lang/Object;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;)V
    .registers 12
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/os/IBinder;
    .param p2, "x$1"    # Ljava/lang/String;
    .param p3, "x$2"    # Landroid/os/Bundle;
    .param p4, "x$3"    # Landroid/os/CancellationSignal;
    .param p5, "x$4"    # Landroid/os/RemoteCallback;

    .line 2003
    move-object v0, p0

    check-cast v0, Landroid/app/ActivityThread;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-$$Nest$mhandlePerformDirectAction(Landroid/app/ActivityThread;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static synthetic blacklist lambda$requestDirectActions$1(Ljava/lang/Object;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V
    .registers 12
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/os/IBinder;
    .param p2, "x$1"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p3, "x$2"    # Landroid/os/CancellationSignal;
    .param p4, "x$3"    # Landroid/os/RemoteCallback;
    .param p5, "x$4"    # I

    .line 1985
    move-object v0, p0

    check-cast v0, Landroid/app/ActivityThread;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-$$Nest$mhandleRequestDirectActions(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V

    return-void
.end method

.method static synthetic blacklist lambda$scheduleTrimMemory$0(Ljava/lang/Object;I)V
    .registers 3
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # I

    .line 1838
    move-object v0, p0

    check-cast v0, Landroid/app/ActivityThread;

    invoke-static {v0, p1}, Landroid/app/ActivityThread;->-$$Nest$mhandleTrimMemory(Landroid/app/ActivityThread;I)V

    return-void
.end method


# virtual methods
.method public greylist-max-o attachAgent(Ljava/lang/String;)V
    .registers 4
    .param p1, "agent"    # Ljava/lang/String;

    .line 1373
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1374
    return-void
.end method

.method public blacklist attachStartupAgents(Ljava/lang/String;)V
    .registers 4
    .param p1, "dataDir"    # Ljava/lang/String;

    .line 1377
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0xa2

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1378
    return-void
.end method

.method public final blacklist bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ProviderInfoList;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/AutofillOptions;Landroid/content/ContentCaptureOptions;[JLandroid/os/SharedMemory;JJ)V
    .registers 45
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "sdkSandboxClientAppVolumeUuid"    # Ljava/lang/String;
    .param p4, "sdkSandboxClientAppPackage"    # Ljava/lang/String;
    .param p5, "providerList"    # Landroid/content/pm/ProviderInfoList;
    .param p6, "instrumentationName"    # Landroid/content/ComponentName;
    .param p7, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p8, "instrumentationArgs"    # Landroid/os/Bundle;
    .param p9, "instrumentationWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p10, "instrumentationUiConnection"    # Landroid/app/IUiAutomationConnection;
    .param p11, "debugMode"    # I
    .param p12, "enableBinderTracking"    # Z
    .param p13, "trackAllocation"    # Z
    .param p14, "isRestrictedBackupMode"    # Z
    .param p15, "persistent"    # Z
    .param p16, "config"    # Landroid/content/res/Configuration;
    .param p17, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p18, "services"    # Ljava/util/Map;
    .param p19, "coreSettings"    # Landroid/os/Bundle;
    .param p20, "buildSerial"    # Ljava/lang/String;
    .param p21, "autofillOptions"    # Landroid/content/AutofillOptions;
    .param p22, "contentCaptureOptions"    # Landroid/content/ContentCaptureOptions;
    .param p23, "disabledCompatChanges"    # [J
    .param p24, "serializedSystemFontMap"    # Landroid/os/SharedMemory;
    .param p25, "startRequestedElapsedTime"    # J
    .param p27, "startRequestedUptime"    # J

    .line 1206
    move-object/from16 v0, p0

    if-eqz p18, :cond_7

    .line 1229
    invoke-static/range {p18 .. p18}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    .line 1232
    :cond_7
    move-object/from16 v1, p19

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$ApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V

    .line 1234
    new-instance v2, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v2}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    .line 1235
    .local v2, "data":Landroid/app/ActivityThread$AppBindData;
    move-object/from16 v3, p1

    iput-object v3, v2, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 1236
    move-object/from16 v4, p2

    iput-object v4, v2, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1237
    move-object/from16 v5, p3

    iput-object v5, v2, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

    .line 1238
    move-object/from16 v6, p4

    iput-object v6, v2, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppPackage:Ljava/lang/String;

    .line 1239
    invoke-virtual/range {p5 .. p5}, Landroid/content/pm/ProviderInfoList;->getList()Ljava/util/List;

    move-result-object v7

    iput-object v7, v2, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    .line 1240
    move-object/from16 v7, p6

    iput-object v7, v2, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 1241
    move-object/from16 v8, p8

    iput-object v8, v2, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    .line 1242
    move-object/from16 v9, p9

    iput-object v9, v2, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 1243
    move-object/from16 v10, p10

    iput-object v10, v2, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 1244
    move/from16 v11, p11

    iput v11, v2, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    .line 1245
    move/from16 v12, p12

    iput-boolean v12, v2, Landroid/app/ActivityThread$AppBindData;->enableBinderTracking:Z

    .line 1246
    move/from16 v13, p13

    iput-boolean v13, v2, Landroid/app/ActivityThread$AppBindData;->trackAllocation:Z

    .line 1247
    move/from16 v14, p14

    iput-boolean v14, v2, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    .line 1248
    move/from16 v15, p15

    iput-boolean v15, v2, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    .line 1249
    move-object/from16 v1, p16

    iput-object v1, v2, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    .line 1250
    move-object/from16 v1, p17

    iput-object v1, v2, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 1251
    move-object/from16 v1, p7

    iput-object v1, v2, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    .line 1252
    move-object/from16 v1, p20

    iput-object v1, v2, Landroid/app/ActivityThread$AppBindData;->buildSerial:Ljava/lang/String;

    .line 1253
    move-object/from16 v1, p21

    iput-object v1, v2, Landroid/app/ActivityThread$AppBindData;->autofillOptions:Landroid/content/AutofillOptions;

    .line 1254
    move-object/from16 v1, p22

    iput-object v1, v2, Landroid/app/ActivityThread$AppBindData;->contentCaptureOptions:Landroid/content/ContentCaptureOptions;

    .line 1255
    move-object/from16 v1, p23

    iput-object v1, v2, Landroid/app/ActivityThread$AppBindData;->disabledCompatChanges:[J

    .line 1256
    move-object/from16 v1, p24

    iput-object v1, v2, Landroid/app/ActivityThread$AppBindData;->mSerializedSystemFontMap:Landroid/os/SharedMemory;

    .line 1257
    move-wide/from16 v3, p25

    iput-wide v3, v2, Landroid/app/ActivityThread$AppBindData;->startRequestedElapsedTime:J

    .line 1258
    move-wide/from16 v3, p27

    iput-wide v3, v2, Landroid/app/ActivityThread$AppBindData;->startRequestedUptime:J

    .line 1259
    iget-object v1, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v0, 0x6e

    invoke-virtual {v1, v0, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1260
    return-void
.end method

.method public greylist-max-o clearDnsCache()V
    .registers 2

    .line 1289
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 1292
    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/event/NetworkEventDispatcher;->dispatchNetworkConfigurationChange()V

    .line 1293
    return-void
.end method

.method public greylist-max-o dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .registers 5
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .line 1393
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x85

    invoke-static {v0, v1, p2, p1}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1394
    return-void
.end method

.method public greylist-max-o dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 12
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "activitytoken"    # Landroid/os/IBinder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .line 1420
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 1422
    .local v0, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1423
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1424
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    .line 1425
    iput-object p4, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1426
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x88

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1c} :catch_1f
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1d

    .line 1430
    goto :goto_28

    :catchall_1d
    move-exception v1

    goto :goto_2d

    .line 1427
    :catch_1f
    move-exception v1

    .line 1428
    .local v1, "e":Ljava/io/IOException;
    :try_start_20
    const-string v2, "ActivityThread"

    const-string v3, "dumpActivity failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_1d

    .line 1430
    nop

    .end local v1    # "e":Ljava/io/IOException;
    :goto_28
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1431
    nop

    .line 1432
    return-void

    .line 1430
    :goto_2d
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1431
    throw v1
.end method

.method public blacklist dumpBinderAllocations(Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 1944
    invoke-static {}, Landroid/os/BinderStub;->get()Landroid/os/BinderStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/BinderStub;->dump(Landroid/os/ParcelFileDescriptor;)V

    .line 1945
    return-void
.end method

.method public blacklist dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .registers 3
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1760
    invoke-static {p1, p2}, Landroid/app/PropertyInvalidatedCache;->dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 1761
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1762
    return-void
.end method

.method public greylist-max-o dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .registers 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1779
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    if-eqz v0, :cond_44

    .line 1785
    :try_start_6
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_a} :catch_1b
    .catchall {:try_start_6 .. :try_end_a} :catchall_19

    .line 1790
    .local v0, "dup":Landroid/os/ParcelFileDescriptor;
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1791
    nop

    .line 1793
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/app/ActivityThread$ApplicationThread$1;

    invoke-direct {v2, p0, v0, p2}, Landroid/app/ActivityThread$ApplicationThread$1;-><init>(Landroid/app/ActivityThread$ApplicationThread;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1803
    .end local v0    # "dup":Landroid/os/ParcelFileDescriptor;
    goto :goto_4b

    .line 1790
    :catchall_19
    move-exception v0

    goto :goto_40

    .line 1786
    :catch_1b
    move-exception v0

    .line 1787
    .local v0, "e":Ljava/io/IOException;
    :try_start_1c
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not dup FD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_19

    .line 1790
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1788
    return-void

    .line 1790
    .end local v0    # "e":Ljava/io/IOException;
    :goto_40
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1791
    throw v0

    .line 1804
    :cond_44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ActivityThread$ApplicationThread;->dumpDatabaseInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V

    .line 1805
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1807
    :goto_4b
    return-void
.end method

.method public greylist-max-o dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .registers 10
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1745
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 1747
    .local v0, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1748
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1749
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1750
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0xa5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1b} :catch_1e
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    .line 1754
    goto :goto_27

    :catchall_1c
    move-exception v1

    goto :goto_2c

    .line 1751
    :catch_1e
    move-exception v1

    .line 1752
    .local v1, "e":Ljava/io/IOException;
    :try_start_1f
    const-string v2, "ActivityThread"

    const-string v3, "dumpGfxInfo failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_1c

    .line 1754
    nop

    .end local v1    # "e":Ljava/io/IOException;
    :goto_27
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1755
    nop

    .line 1756
    return-void

    .line 1754
    :goto_2c
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1755
    throw v1
.end method

.method public blacklist dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .registers 14
    .param p1, "managed"    # Z
    .param p2, "mallocInfo"    # Z
    .param p3, "runGc"    # Z
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p6, "finishCallback"    # Landroid/os/RemoteCallback;

    .line 1353
    new-instance v0, Landroid/app/ActivityThread$DumpHeapData;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpHeapData;-><init>()V

    .line 1354
    .local v0, "dhd":Landroid/app/ActivityThread$DumpHeapData;
    iput-boolean p1, v0, Landroid/app/ActivityThread$DumpHeapData;->managed:Z

    .line 1355
    iput-boolean p2, v0, Landroid/app/ActivityThread$DumpHeapData;->mallocInfo:Z

    .line 1356
    iput-boolean p3, v0, Landroid/app/ActivityThread$DumpHeapData;->runGc:Z

    .line 1357
    iput-object p4, v0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    .line 1361
    :try_start_d
    invoke-virtual {p5}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_27
    .catchall {:try_start_d .. :try_end_13} :catchall_25

    .line 1366
    invoke-static {p5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1367
    nop

    .line 1368
    iput-object p6, v0, Landroid/app/ActivityThread$DumpHeapData;->finishCallback:Landroid/os/RemoteCallback;

    .line 1369
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x87

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V

    .line 1370
    return-void

    .line 1366
    :catchall_25
    move-exception v1

    goto :goto_33

    .line 1362
    :catch_27
    move-exception v1

    .line 1363
    .local v1, "e":Ljava/io/IOException;
    :try_start_28
    const-string v2, "ActivityThread"

    const-string v3, "Failed to duplicate heap dump file descriptor"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_25

    .line 1366
    invoke-static {p5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1364
    return-void

    .line 1366
    .end local v1    # "e":Ljava/io/IOException;
    :goto_33
    invoke-static {p5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1367
    throw v1
.end method

.method public blacklist dumpLogText(Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 1958
    invoke-static {}, Landroid/app/ActivityThreadStub;->get()Landroid/app/ActivityThreadStub;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/ActivityThreadStub;->dumpLogText(Landroid/os/ParcelFileDescriptor;)V

    .line 1959
    return-void
.end method

.method public blacklist dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZZ[Ljava/lang/String;)V
    .registers 21
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpFullInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpUnknown"    # Z
    .param p7, "dumpSummaryOnly"    # Z
    .param p8, "dumpUnreachable"    # Z
    .param p9, "args"    # [Ljava/lang/String;

    .line 1459
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v0

    .line 1460
    .local v1, "fout":Ljava/io/FileOutputStream;
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v3, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1464
    .local v3, "pw":Ljava/io/PrintWriter;
    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    :try_start_1b
    invoke-direct/range {v2 .. v10}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZZZ)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_26

    .line 1467
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 1468
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1469
    nop

    .line 1470
    return-void

    .line 1467
    :catchall_26
    move-exception v0

    move-object v2, v0

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 1468
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1469
    throw v2
.end method

.method public greylist-max-o dumpMemInfoProto(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V
    .registers 15
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "dumpFullInfo"    # Z
    .param p4, "dumpDalvik"    # Z
    .param p5, "dumpSummaryOnly"    # Z
    .param p6, "dumpUnreachable"    # Z
    .param p7, "args"    # [Ljava/lang/String;

    .line 1622
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1624
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    :try_start_f
    invoke-direct/range {v0 .. v6}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZZZ)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1a

    .line 1626
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1627
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1628
    nop

    .line 1629
    return-void

    .line 1626
    :catchall_1a
    move-exception v0

    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1627
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1628
    throw v0
.end method

.method public blacklist dumpPeriodHistoryMessage(JI)V
    .registers 6
    .param p1, "anrTime"    # J
    .param p3, "duration"    # I

    .line 1938
    invoke-static {}, Landroid/app/ActivityThreadStub;->get()Landroid/app/ActivityThreadStub;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/ActivityThreadStub;->dumpPeriodHistoryMessage(JI)V

    .line 1939
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Looper;->printLoopInfo(I)V

    .line 1940
    return-void
.end method

.method public greylist-max-o dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .registers 11
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "providertoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1436
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 1438
    .local v0, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1439
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1440
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1441
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1a} :catch_1d
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    .line 1445
    goto :goto_26

    :catchall_1b
    move-exception v1

    goto :goto_2b

    .line 1442
    :catch_1d
    move-exception v1

    .line 1443
    .local v1, "e":Ljava/io/IOException;
    :try_start_1e
    const-string v2, "ActivityThread"

    const-string v3, "dumpProvider failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_1b

    .line 1445
    nop

    .end local v1    # "e":Ljava/io/IOException;
    :goto_26
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1446
    nop

    .line 1447
    return-void

    .line 1445
    :goto_2b
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1446
    throw v1
.end method

.method public blacklist dumpResources(Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .registers 10
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 1406
    new-instance v0, Landroid/app/ActivityThread$DumpResourcesData;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpResourcesData;-><init>()V

    .line 1408
    .local v0, "data":Landroid/app/ActivityThread$DumpResourcesData;
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread$DumpResourcesData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1409
    iput-object p2, v0, Landroid/app/ActivityThread$DumpResourcesData;->finishCallback:Landroid/os/RemoteCallback;

    .line 1410
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0xa6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_18} :catch_1b
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    .line 1414
    goto :goto_24

    :catchall_19
    move-exception v1

    goto :goto_29

    .line 1411
    :catch_1b
    move-exception v1

    .line 1412
    .local v1, "e":Ljava/io/IOException;
    :try_start_1c
    const-string v2, "ActivityThread"

    const-string v3, "dumpResources failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    .line 1414
    nop

    .end local v1    # "e":Ljava/io/IOException;
    :goto_24
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1415
    nop

    .line 1416
    return-void

    .line 1414
    :goto_29
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1415
    throw v1
.end method

.method public greylist-max-o dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .registers 11
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "servicetoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1316
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 1318
    .local v0, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1319
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1320
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1321
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1a} :catch_1d
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    .line 1325
    goto :goto_26

    :catchall_1b
    move-exception v1

    goto :goto_2b

    .line 1322
    :catch_1d
    move-exception v1

    .line 1323
    .local v1, "e":Ljava/io/IOException;
    :try_start_1e
    const-string v2, "ActivityThread"

    const-string v3, "dumpService failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_1b

    .line 1325
    nop

    .end local v1    # "e":Ljava/io/IOException;
    :goto_26
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1326
    nop

    .line 1327
    return-void

    .line 1325
    :goto_2b
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1326
    throw v1
.end method

.method public blacklist enableDebugConfig(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "config"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 1963
    invoke-static {}, Landroid/app/ActivityThreadStub;->get()Landroid/app/ActivityThreadStub;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/ActivityThreadStub;->enableDebugConfig(Ljava/lang/String;Z)V

    .line 1964
    return-void
.end method

.method public greylist-max-o handleTrustStorageUpdate()V
    .registers 2

    .line 1933
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->handleTrustStorageUpdate()V

    .line 1934
    return-void
.end method

.method public blacklist instrumentWithoutRestart(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;Landroid/content/pm/ApplicationInfo;)V
    .registers 9
    .param p1, "instrumentationName"    # Landroid/content/ComponentName;
    .param p2, "instrumentationArgs"    # Landroid/os/Bundle;
    .param p3, "instrumentationWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p4, "instrumentationUiConnection"    # Landroid/app/IUiAutomationConnection;
    .param p5, "targetInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 2025
    new-instance v0, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v0}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    .line 2026
    .local v0, "data":Landroid/app/ActivityThread$AppBindData;
    iput-object p1, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 2027
    iput-object p2, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    .line 2028
    iput-object p3, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 2029
    iput-object p4, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 2030
    iput-object p5, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 2031
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0xaa

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2032
    return-void
.end method

.method public greylist-max-o notifyCleartextNetwork([B)V
    .registers 3
    .param p1, "firstPacket"    # [B

    .line 1902
    invoke-static {}, Landroid/os/StrictMode;->vmCleartextNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1903
    invoke-static {p1}, Landroid/os/StrictMode;->onCleartextNetworkDetected([B)V

    .line 1905
    :cond_9
    return-void
.end method

.method public blacklist notifyContentProviderPublishStatus(Landroid/app/ContentProviderHolder;Ljava/lang/String;IZ)V
    .registers 12
    .param p1, "holder"    # Landroid/app/ContentProviderHolder;
    .param p2, "authorities"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "published"    # Z

    .line 2011
    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2012
    .local v0, "auths":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_23

    aget-object v3, v0, v2

    .line 2013
    .local v3, "auth":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v4, v3, p3}, Landroid/app/ActivityThread;->-$$Nest$mgetGetProviderKey(Landroid/app/ActivityThread;Ljava/lang/String;I)Landroid/app/ActivityThread$ProviderKey;

    move-result-object v4

    .line 2014
    .local v4, "key":Landroid/app/ActivityThread$ProviderKey;
    iget-object v5, v4, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2015
    :try_start_15
    iput-object p1, v4, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    .line 2016
    iget-object v6, v4, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 2017
    monitor-exit v5

    .line 2012
    .end local v3    # "auth":Ljava/lang/String;
    .end local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2017
    .restart local v3    # "auth":Ljava/lang/String;
    .restart local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    :catchall_20
    move-exception v1

    monitor-exit v5
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_20

    throw v1

    .line 2019
    .end local v3    # "auth":Ljava/lang/String;
    .end local v4    # "key":Landroid/app/ActivityThread$ProviderKey;
    :cond_23
    return-void
.end method

.method public blacklist performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 15
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "actionId"    # Ljava/lang/String;
    .param p3, "arguments"    # Landroid/os/Bundle;
    .param p4, "cancellationCallback"    # Landroid/os/RemoteCallback;
    .param p5, "resultCallback"    # Landroid/os/RemoteCallback;

    .line 1994
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 1995
    .local v0, "cancellationSignal":Landroid/os/CancellationSignal;
    if-eqz p4, :cond_1f

    .line 1996
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-$$Nest$mcreateSafeCancellationTransport(Landroid/app/ActivityThread;Landroid/os/CancellationSignal;)Landroid/app/ActivityThread$SafeCancellationTransport;

    move-result-object v1

    .line 1998
    .local v1, "transport":Landroid/os/ICancellationSignal;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1999
    .local v2, "cancellationResult":Landroid/os/Bundle;
    nop

    .line 2000
    invoke-interface {v1}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1999
    const-string v4, "key_cancellation_signal"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2001
    invoke-virtual {p4, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 2003
    .end local v1    # "transport":Landroid/os/ICancellationSignal;
    .end local v2    # "cancellationResult":Landroid/os/Bundle;
    :cond_1f
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v8, v1, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    new-instance v1, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 2006
    return-void
.end method

.method public greylist-max-o processInBackground()V
    .registers 4

    .line 1311
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 1312
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v1}, Landroid/app/ActivityThread$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 1313
    return-void
.end method

.method public greylist-max-o profilerControl(ZLandroid/app/ProfilerInfo;I)V
    .registers 6
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I

    .line 1347
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7f

    invoke-static {v0, v1, p2, p1, p3}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 1348
    return-void
.end method

.method public greylist-max-o requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V
    .registers 9
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "requestToken"    # Landroid/os/IBinder;
    .param p3, "requestType"    # I
    .param p4, "sessionId"    # I
    .param p5, "flags"    # I

    .line 1817
    new-instance v0, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-direct {v0}, Landroid/app/ActivityThread$RequestAssistContextExtras;-><init>()V

    .line 1818
    .local v0, "cmd":Landroid/app/ActivityThread$RequestAssistContextExtras;
    iput-object p1, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    .line 1819
    iput-object p2, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    .line 1820
    iput p3, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    .line 1821
    iput p4, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    .line 1822
    iput p5, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->flags:I

    .line 1823
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8f

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1824
    return-void
.end method

.method public blacklist requestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 14
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p3, "cancellationCallback"    # Landroid/os/RemoteCallback;
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .line 1976
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 1977
    .local v0, "cancellationSignal":Landroid/os/CancellationSignal;
    if-eqz p3, :cond_1f

    .line 1978
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v1, v0}, Landroid/app/ActivityThread;->-$$Nest$mcreateSafeCancellationTransport(Landroid/app/ActivityThread;Landroid/os/CancellationSignal;)Landroid/app/ActivityThread$SafeCancellationTransport;

    move-result-object v1

    .line 1980
    .local v1, "transport":Landroid/os/ICancellationSignal;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1981
    .local v2, "cancellationResult":Landroid/os/Bundle;
    nop

    .line 1982
    invoke-interface {v1}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1981
    const-string v4, "key_cancellation_signal"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1983
    invoke-virtual {p3, v2}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 1985
    .end local v1    # "transport":Landroid/os/ICancellationSignal;
    .end local v2    # "cancellationResult":Landroid/os/Bundle;
    :cond_1f
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v8, v1, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    new-instance v1, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v3, 0x7

    .line 1987
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1985
    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p4

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 1988
    return-void
.end method

.method public final greylist-max-o runIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "entryPoint"    # Ljava/lang/String;
    .param p2, "entryPointArgs"    # [Ljava/lang/String;

    .line 1263
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1264
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1265
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1266
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x9e

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1267
    return-void
.end method

.method public greylist-max-o scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .registers 6
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 1278
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$fgetmResourcesManager(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1, p1}, Landroid/app/ResourcesManager;->appendPendingAppInfoUpdate([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 1279
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x9c

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    .line 1280
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1281
    return-void
.end method

.method public final greylist-max-o scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "rebind"    # Z
    .param p4, "processState"    # I

    .line 1152
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 1153
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 1154
    .local v0, "s":Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 1155
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 1156
    iput-boolean p3, v0, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    .line 1158
    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_SERVICE:Z

    if-eqz v1, :cond_54

    .line 1159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleBindService token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1160
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1159
    const-string v2, "ActivityThread"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_54
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x79

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1162
    return-void
.end method

.method public blacklist scheduleCrash(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "typeId"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1398
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1399
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1400
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1401
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x86

    invoke-static {v1, v2, v0, p2}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1402
    return-void
.end method

.method public final blacklist scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;III)V
    .registers 9
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "backupMode"    # I
    .param p4, "userId"    # I
    .param p5, "operationType"    # I

    .line 1119
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 1120
    .local v0, "d":Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1121
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 1122
    iput p3, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    .line 1123
    iput p4, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    .line 1124
    iput p5, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->operationType:I

    .line 1126
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1127
    return-void
.end method

.method public final greylist-max-o scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V
    .registers 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/content/pm/ServiceInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "processState"    # I

    .line 1141
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p4, v1}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 1142
    new-instance v0, Landroid/app/ActivityThread$CreateServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateServiceData;-><init>()V

    .line 1143
    .local v0, "s":Landroid/app/ActivityThread$CreateServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 1144
    iput-object p2, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    .line 1145
    iput-object p3, v0, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 1147
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x72

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1148
    return-void
.end method

.method public final blacklist scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V
    .registers 7
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "userId"    # I

    .line 1131
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 1132
    .local v0, "d":Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1133
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 1134
    iput p3, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    .line 1136
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x81

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1137
    return-void
.end method

.method public greylist-max-o scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1897
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x95

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1898
    return-void
.end method

.method public final greylist-max-o scheduleExit()V
    .registers 4

    .line 1270
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1271
    return-void
.end method

.method public greylist-max-o scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .registers 4
    .param p1, "provider"    # Landroid/content/pm/ProviderInfo;

    .line 1876
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x91

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1877
    return-void
.end method

.method public greylist-max-o scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1925
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1926
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1927
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1928
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x9a

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1929
    return-void
.end method

.method public greylist-max-o scheduleLowMemory()V
    .registers 4

    .line 1342
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1343
    return-void
.end method

.method public greylist-max-o scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1854
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    new-instance v1, Landroid/util/Pair;

    .line 1855
    invoke-static {p2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1854
    const/16 v2, 0x92

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1856
    return-void
.end method

.method public final greylist-max-o scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V
    .registers 23
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "resultCode"    # I
    .param p5, "data"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I

    .line 1109
    move-object v0, p0

    iget-object v1, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v2, 0x0

    move/from16 v3, p9

    invoke-virtual {v1, v3, v2}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 1110
    new-instance v1, Landroid/app/ActivityThread$ReceiverData;

    iget-object v2, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 1111
    invoke-virtual {v2}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    const/4 v10, 0x0

    move-object v4, v1

    move-object v5, p1

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v12, p8

    invoke-direct/range {v4 .. v12}, Landroid/app/ActivityThread$ReceiverData;-><init>(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZLandroid/os/IBinder;I)V

    .line 1112
    .local v1, "r":Landroid/app/ActivityThread$ReceiverData;
    move-object v2, p2

    iput-object v2, v1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 1113
    move-object/from16 v4, p3

    iput-object v4, v1, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 1114
    iget-object v5, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v6, 0x71

    invoke-virtual {v5, v6, v1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1115
    return-void
.end method

.method public greylist-max-o scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V
    .registers 12
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "dataStr"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1335
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p9, v1}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 1336
    invoke-interface/range {p1 .. p8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 1338
    return-void
.end method

.method public final greylist-max-o scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "args"    # Landroid/content/pm/ParceledListSlice;

    .line 1173
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1175
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ServiceStartArgs;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 1176
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ServiceStartArgs;

    .line 1177
    .local v2, "ssa":Landroid/app/ServiceStartArgs;
    new-instance v3, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-direct {v3}, Landroid/app/ActivityThread$ServiceArgsData;-><init>()V

    .line 1178
    .local v3, "s":Landroid/app/ActivityThread$ServiceArgsData;
    iput-object p1, v3, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    .line 1179
    iget-boolean v4, v2, Landroid/app/ServiceStartArgs;->taskRemoved:Z

    iput-boolean v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    .line 1180
    iget v4, v2, Landroid/app/ServiceStartArgs;->startId:I

    iput v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    .line 1181
    iget v4, v2, Landroid/app/ServiceStartArgs;->flags:I

    iput v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    .line 1182
    iget-object v4, v2, Landroid/app/ServiceStartArgs;->args:Landroid/content/Intent;

    iput-object v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 1184
    iget-object v4, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v5, 0x73

    invoke-virtual {v4, v5, v3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1175
    .end local v2    # "ssa":Landroid/app/ServiceStartArgs;
    .end local v3    # "s":Landroid/app/ActivityThread$ServiceArgsData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1186
    .end local v1    # "i":I
    :cond_32
    return-void
.end method

.method public final greylist-max-o scheduleStopService(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1189
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x74

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1190
    return-void
.end method

.method public final greylist-max-o scheduleSuicide()V
    .registers 4

    .line 1274
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x82

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1275
    return-void
.end method

.method public greylist-max-o scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .registers 3
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1969
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 1970
    return-void
.end method

.method public greylist-max-o scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "drawComplete"    # Z

    .line 1850
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x90

    invoke-static {v0, v1, p1, p2}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1851
    return-void
.end method

.method public greylist-max-o scheduleTrimMemory(I)V
    .registers 6
    .param p1, "level"    # I

    .line 1838
    new-instance v0, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda2;-><init>()V

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 1839
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1838
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v0

    .line 1839
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v0

    .line 1841
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v1

    .line 1842
    .local v1, "choreographer":Landroid/view/Choreographer;
    if-eqz v1, :cond_1f

    .line 1843
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_26

    .line 1845
    :cond_1f
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v0}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    .line 1847
    :goto_26
    return-void
.end method

.method public final greylist-max-o scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1165
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 1166
    .local v0, "s":Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 1167
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 1169
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7a

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1170
    return-void
.end method

.method public greylist-max-o setCoreSettings(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "coreSettings"    # Landroid/os/Bundle;

    .line 1827
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1828
    return-void
.end method

.method public greylist-max-o setNetworkBlockSeq(J)V
    .registers 5
    .param p1, "procStateSeq"    # J

    .line 1869
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$fgetmNetworkPolicyLock(Landroid/app/ActivityThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1870
    :try_start_7
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v1, p1, p2}, Landroid/app/ActivityThread;->-$$Nest$fputmNetworkBlockSeq(Landroid/app/ActivityThread;J)V

    .line 1871
    monitor-exit v0

    .line 1872
    return-void

    .line 1871
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public greylist-max-o setProcessState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 1859
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 1860
    return-void
.end method

.method public greylist-max-o setSchedulingGroup(I)V
    .registers 5
    .param p1, "group"    # I

    .line 1386
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 1389
    goto :goto_21

    .line 1387
    :catch_8
    move-exception v0

    .line 1388
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed setting process group to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityThread"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1390
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_21
    return-void
.end method

.method public greylist-max-o startBinderTracking()V
    .registers 4

    .line 1909
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x96

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1910
    return-void
.end method

.method public greylist-max-o stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 1915
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x97

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_11
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_12

    .line 1918
    :catchall_c
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1919
    throw v0

    .line 1916
    :catch_11
    move-exception v0

    .line 1918
    :goto_12
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1919
    nop

    .line 1920
    return-void
.end method

.method public blacklist trackBinderAllocations(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 1949
    if-eqz p1, :cond_a

    .line 1950
    invoke-static {}, Landroid/os/BinderStub;->get()Landroid/os/BinderStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BinderStub;->startTracking()V

    goto :goto_11

    .line 1952
    :cond_a
    invoke-static {}, Landroid/os/BinderStub;->get()Landroid/os/BinderStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BinderStub;->stopTracking()V

    .line 1954
    :goto_11
    return-void
.end method

.method public greylist-max-o unstableProviderDied(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "provider"    # Landroid/os/IBinder;

    .line 1811
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1812
    return-void
.end method

.method public blacklist updateHttpProxy()V
    .registers 5

    .line 1297
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    monitor-enter v0

    .line 1298
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 1299
    .local v1, "app":Landroid/app/Application;
    if-nez v1, :cond_13

    .line 1302
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/app/ActivityThread;->-$$Nest$fputmUpdateHttpProxyOnBind(Landroid/app/ActivityThread;Z)V

    .line 1303
    monitor-exit v0

    return-void

    .line 1305
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    .line 1307
    invoke-static {v1}, Landroid/app/ActivityThread;->updateHttpProxy(Landroid/content/Context;)V

    .line 1308
    return-void

    .line 1305
    .end local v1    # "app":Landroid/app/Application;
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public greylist-max-o updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/res/CompatibilityInfo;

    .line 1831
    new-instance v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-direct {v0}, Landroid/app/ActivityThread$UpdateCompatibilityData;-><init>()V

    .line 1832
    .local v0, "ucd":Landroid/app/ActivityThread$UpdateCompatibilityData;
    iput-object p1, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    .line 1833
    iput-object p2, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    .line 1834
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8b

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1835
    return-void
.end method

.method public final greylist-max-o updateTimePrefs(I)V
    .registers 3
    .param p1, "timeFormatPreference"    # I

    .line 1883
    if-nez p1, :cond_5

    .line 1884
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .local v0, "timeFormatPreferenceBool":Ljava/lang/Boolean;
    goto :goto_c

    .line 1885
    .end local v0    # "timeFormatPreferenceBool":Ljava/lang/Boolean;
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 1886
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .restart local v0    # "timeFormatPreferenceBool":Ljava/lang/Boolean;
    goto :goto_c

    .line 1890
    .end local v0    # "timeFormatPreferenceBool":Ljava/lang/Boolean;
    :cond_b
    const/4 v0, 0x0

    .line 1892
    .restart local v0    # "timeFormatPreferenceBool":Ljava/lang/Boolean;
    :goto_c
    invoke-static {v0}, Ljava/text/DateFormat;->set24HourTimePref(Ljava/lang/Boolean;)V

    .line 1893
    return-void
.end method

.method public greylist-max-o updateTimeZone()V
    .registers 2

    .line 1284
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1285
    return-void
.end method

.method public blacklist updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .registers 10
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "state"    # I
    .param p3, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p4, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p6, "uiTranslationSpec"    # Landroid/view/translation/UiTranslationSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/view/translation/UiTranslationSpec;",
            ")V"
        }
    .end annotation

    .line 2038
    .local p5, "viewIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2039
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2040
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2041
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2042
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2043
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 2044
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 2045
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0xa3

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2046
    return-void
.end method
