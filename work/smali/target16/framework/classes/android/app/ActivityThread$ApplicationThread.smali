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
.field private static final blacklist DB_CONNECTION_INFO_FORMAT:Ljava/lang/String; = "  %8s %8s %14s %5d %5d %5d  %s"

.field private static final blacklist DB_CONNECTION_INFO_HEADER:Ljava/lang/String; = "  %8s %8s %14s %5s %5s %5s  %s"

.field private static final blacklist DB_POOL_INFO_FORMAT:Ljava/lang/String; = "  %13d %13d %13d  %s"

.field private static final blacklist DB_POOL_INFO_HEADER:Ljava/lang/String; = "  %13s %13s %13s  %s"


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ActivityThread;


# direct methods
.method public static synthetic blacklist $r8$lambda$G6hCvS-Qza2XVRHE5EG8OQS6lcg(Landroid/app/ActivityThread;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/app/ActivityThread;->-$$Nest$mhandleTrimMemory(Landroid/app/ActivityThread;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JtANQHbm8_woSrSSrItwPFzx9Rc(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/app/ActivityThread;->-$$Nest$mhandleRequestDirectActions(Landroid/app/ActivityThread;Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vumqJ-Lh07Ah5KHzY1DRdGdc7Do(Landroid/app/ActivityThread;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Landroid/app/ActivityThread;->-$$Nest$mhandlePerformDirectAction(Landroid/app/ActivityThread;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdumpDatabaseInfo(Landroid/app/ActivityThread$ApplicationThread;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/ActivityThread$ApplicationThread;->dumpDatabaseInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/ActivityThread;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1172
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/app/IApplicationThread$Stub;-><init>()V

    .line 1173
    return-void
.end method

.method private blacklist dumpDatabaseInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V
    .registers 6

    .line 2139
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    .line 2140
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2141
    new-instance p1, Landroid/util/PrintWriterPrinter;

    invoke-direct {p1, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 2142
    invoke-static {p1, p2, p3}, Landroid/database/sqlite/SQLiteDebug;->dump(Landroid/util/Printer;[Ljava/lang/String;Z)V

    .line 2143
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 2144
    return-void
.end method

.method private greylist-max-o dumpMemInfo(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZZZ)V
    .registers 69
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1981
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v2

    const-wide/16 v17, 0x400

    div-long v5, v2, v17

    .line 1982
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    div-long v7, v2, v17

    .line 1983
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v2

    div-long v9, v2, v17

    .line 1985
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 1986
    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 1987
    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    div-long v11, v3, v17

    .line 1988
    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    div-long v15, v2, v17

    .line 1989
    sub-long v13, v11, v15

    .line 1991
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/app/ContextImpl;

    const/16 v19, 0x0

    aput-object v3, v2, v19

    const-class v3, Landroid/app/Activity;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-class v3, Landroid/webkit/WebView;

    const/16 v20, 0x2

    aput-object v3, v2, v20

    const-class v3, Landroid/view/View;

    const/16 v21, 0x3

    aput-object v3, v2, v21

    const-class v3, Landroid/view/ViewRootImpl;

    const/16 v22, 0x4

    aput-object v3, v2, v22

    .line 1998
    invoke-static {v2, v4}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    move-result-object v2

    .line 1999
    move-object/from16 p3, v2

    aget-wide v2, p3, v19

    .line 2000
    move-wide/from16 v23, v2

    aget-wide v2, p3, v4

    .line 2001
    move-wide/from16 v25, v2

    aget-wide v2, p3, v20

    .line 2002
    move-wide/from16 v27, v2

    aget-wide v2, p3, v21

    .line 2003
    move-wide/from16 v29, v2

    aget-wide v2, p3, v22

    .line 2005
    move-wide/from16 v21, v2

    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v2

    .line 2006
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v3

    .line 2007
    move/from16 p3, v2

    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v2

    .line 2008
    move/from16 v31, v2

    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v2

    .line 2009
    move/from16 v32, v2

    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v2

    .line 2010
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocSize()J

    move-result-wide v33

    .line 2011
    move/from16 v36, v2

    move/from16 v35, v3

    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocCount()J

    move-result-wide v2

    .line 2012
    move-wide/from16 v37, v2

    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v2

    .line 2014
    move-wide/from16 v39, v5

    const-wide v4, 0x10b00000001L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 2015
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    move-object/from16 v41, v2

    const-wide v2, 0x10500000001L

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2016
    nop

    .line 2017
    iget-object v6, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v6, :cond_ba

    iget-object v6, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v6, v6, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_bd

    :cond_ba
    const-string/jumbo v6, "unknown"

    .line 2016
    :goto_bd
    const-wide v2, 0x10900000002L

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2018
    move-object/from16 v2, p2

    move/from16 v0, p3

    move/from16 v3, p4

    move-wide/from16 v60, v4

    move-wide/from16 v51, v21

    move-wide/from16 v43, v23

    move-wide/from16 v45, v25

    move-wide/from16 v47, v27

    move-wide/from16 v49, v29

    move/from16 v54, v31

    move/from16 v55, v32

    move/from16 v53, v35

    move/from16 v56, v36

    move-wide/from16 v57, v37

    move-wide/from16 v5, v39

    move-object/from16 v59, v41

    const/16 v42, 0x1

    move/from16 v4, p5

    invoke-static/range {v1 .. v16}, Landroid/app/ActivityThread;->dumpMemInfoTable(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZJJJJJJ)V

    .line 2021
    move-wide/from16 v2, v60

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2023
    const-wide v2, 0x10b00000002L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 2024
    move-wide/from16 v4, v49

    const-wide v6, 0x10500000001L

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2026
    const-wide v4, 0x10500000002L

    move-wide/from16 v8, v51

    invoke-virtual {v1, v4, v5, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2028
    const-wide v8, 0x10500000003L

    move-wide/from16 v10, v43

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2030
    const-wide v10, 0x10500000004L

    move-wide/from16 v12, v45

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2032
    const-wide v12, 0x10500000005L

    invoke-virtual {v1, v12, v13, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2034
    const-wide v12, 0x10500000006L

    move/from16 v0, v53

    invoke-virtual {v1, v12, v13, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2036
    const-wide v14, 0x10500000007L

    move/from16 v0, v54

    invoke-virtual {v1, v14, v15, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2038
    const-wide v14, 0x10500000008L

    move/from16 v0, v55

    invoke-virtual {v1, v14, v15, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2040
    const-wide v14, 0x10300000009L

    div-long v12, v33, v17

    invoke-virtual {v1, v14, v15, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2042
    const-wide v12, 0x1050000000aL

    move-wide/from16 v14, v57

    invoke-virtual {v1, v12, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2043
    const-wide v12, 0x1050000000bL

    move/from16 v0, v56

    invoke-virtual {v1, v12, v13, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2045
    const-wide v12, 0x1050000000dL

    move-wide/from16 v14, v47

    invoke-virtual {v1, v12, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2047
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2050
    const-wide v2, 0x10b00000003L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 2051
    move-object/from16 v0, v59

    iget v12, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v12, v12, 0x400

    invoke-virtual {v1, v6, v7, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2053
    iget v6, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v6, v6, 0x400

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2055
    iget v6, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v6, v6, 0x400

    invoke-virtual {v1, v8, v9, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2057
    iget-object v6, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2058
    move/from16 v7, v19

    :goto_19b
    if-ge v7, v6, :cond_1fa

    .line 2059
    iget-object v12, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 2061
    const-wide v13, 0x20b00000004L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 2062
    const-wide v10, 0x10900000001L

    iget-object v15, v12, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    invoke-virtual {v1, v10, v11, v15}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2063
    iget-wide v10, v12, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    invoke-virtual {v1, v4, v5, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2064
    iget-wide v10, v12, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2065
    iget v10, v12, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    const-wide v4, 0x10500000004L

    invoke-virtual {v1, v4, v5, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2067
    iget v10, v12, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheHits:I

    const-wide v4, 0x10500000006L

    invoke-virtual {v1, v4, v5, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2069
    iget v10, v12, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheMisses:I

    const-wide v4, 0x10500000007L

    invoke-virtual {v1, v4, v5, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2071
    iget v10, v12, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheSize:I

    const-wide v11, 0x10500000008L

    invoke-virtual {v1, v11, v12, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2073
    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2058
    add-int/lit8 v7, v7, 0x1

    const-wide v4, 0x10500000002L

    const-wide v10, 0x10500000004L

    goto :goto_19b

    .line 2075
    :cond_1fa
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2078
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v0

    .line 2079
    if-eqz v0, :cond_20b

    .line 2080
    const-wide v2, 0x10900000004L

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2084
    :cond_20b
    if-eqz p6, :cond_23d

    .line 2085
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-nez v2, :cond_218

    move/from16 v0, v19

    goto :goto_220

    :cond_218
    iget-object v0, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2086
    :goto_220
    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_22c

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_229

    goto :goto_22c

    :cond_229
    move/from16 v0, v19

    goto :goto_22e

    :cond_22c
    :goto_22c
    move/from16 v0, v42

    .line 2088
    :goto_22e
    nop

    .line 2089
    const/16 v2, 0x64

    invoke-static {v2, v0}, Landroid/os/Debug;->getUnreachableMemory(IZ)Ljava/lang/String;

    move-result-object v0

    .line 2088
    const-wide v2, 0x10900000005L

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2091
    :cond_23d
    return-void
.end method

.method private blacklist dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZZZ)V
    .registers 62
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1796
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v1

    const-wide/16 v21, 0x400

    div-long v9, v1, v21

    .line 1797
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v1

    div-long v11, v1, v21

    .line 1798
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v1

    div-long v13, v1, v21

    .line 1800
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 1801
    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 1802
    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    div-long v15, v2, v21

    .line 1803
    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    div-long v19, v1, v21

    .line 1804
    sub-long v17, v15, v19

    .line 1806
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/app/ContextImpl;

    const/16 v23, 0x0

    aput-object v2, v1, v23

    const-class v2, Landroid/app/Activity;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Landroid/webkit/WebView;

    const/16 v24, 0x2

    aput-object v2, v1, v24

    const-class v2, Landroid/view/View;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const-class v2, Landroid/view/ViewRootImpl;

    const/4 v5, 0x4

    aput-object v2, v1, v5

    .line 1813
    invoke-static {v1, v3}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    move-result-object v1

    .line 1814
    aget-wide v6, v1, v23

    .line 1815
    move-object v8, v1

    aget-wide v1, v8, v3

    .line 1816
    aget-wide v25, v8, v24

    .line 1817
    move-wide/from16 v27, v1

    aget-wide v1, v8, v4

    .line 1818
    aget-wide v4, v8, v5

    .line 1820
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v8

    .line 1821
    move-wide/from16 v29, v1

    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v1

    .line 1822
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v2

    .line 1823
    move/from16 v31, v1

    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v1

    .line 1824
    move/from16 v32, v1

    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v1

    .line 1825
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocSize()J

    move-result-wide v33

    .line 1826
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocCount()J

    move-result-wide v35

    .line 1827
    move/from16 v37, v1

    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v1

    .line 1829
    nop

    .line 1830
    move-wide/from16 v38, v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    .line 1831
    iget-object v6, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v6, :cond_96

    iget-object v6, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v6, v6, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v6, v6, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_99

    :cond_96
    const-string/jumbo v6, "unknown"

    .line 1829
    :goto_99
    move-object/from16 v52, v1

    move/from16 v49, v2

    move-wide/from16 v46, v4

    move v0, v8

    move-wide/from16 v42, v27

    move-wide/from16 v44, v29

    move/from16 v48, v31

    move/from16 v50, v32

    move/from16 v51, v37

    move-wide/from16 v40, v38

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v27, v3

    move-object v8, v6

    move/from16 v3, p3

    move/from16 v6, p6

    invoke-static/range {v1 .. v20}, Landroid/app/ActivityThread;->dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V

    .line 1835
    if-eqz p3, :cond_180

    .line 1840
    move-wide/from16 v2, v44

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 1841
    move-wide/from16 v4, v46

    invoke-virtual {v1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 1842
    move-wide/from16 v6, v40

    invoke-virtual {v1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 1843
    move-wide/from16 v8, v42

    invoke-virtual {v1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 1845
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 1846
    move/from16 v10, v48

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 1847
    move/from16 v11, v49

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 1848
    move/from16 v12, v50

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 1850
    move/from16 v13, v51

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 1853
    move-object/from16 v14, v52

    iget v0, v14, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v0, v0, 0x400

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 1854
    iget v0, v14, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v0, v0, 0x400

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 1855
    iget v0, v14, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v0, v0, 0x400

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 1856
    iget v0, v14, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v0, v0, 0x400

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1857
    move/from16 v0, v23

    :goto_131
    iget-object v3, v14, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_17c

    .line 1858
    iget-object v3, v14, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1859
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    iget-object v4, v3, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1860
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    iget-wide v4, v3, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    invoke-virtual {v1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1861
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    iget-wide v4, v3, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    invoke-virtual {v1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1862
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    iget v4, v3, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1863
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    iget v4, v3, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheHits:I

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1864
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    iget v4, v3, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheMisses:I

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1865
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    iget v3, v3, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheSize:I

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1857
    add-int/lit8 v0, v0, 0x1

    goto :goto_131

    .line 1867
    :cond_17c
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1869
    return-void

    .line 1872
    :cond_180
    move-wide/from16 v6, v40

    move-wide/from16 v8, v42

    move-wide/from16 v2, v44

    move-wide/from16 v4, v46

    move/from16 v10, v48

    move/from16 v11, v49

    move/from16 v12, v50

    move/from16 v13, v51

    move-object/from16 v14, v52

    const-string v15, " "

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1873
    move/from16 v16, v0

    const-string v0, " Objects"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1874
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1875
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Views:"

    const-string v4, "ViewRootImpl:"

    filled-new-array {v3, v0, v4, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 1874
    const-string v2, "%21s %8d %21s %8d"

    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1877
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1878
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "AppContexts:"

    const-string v5, "Activities:"

    filled-new-array {v4, v0, v5, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 1877
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1880
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1881
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Assets:"

    const-string v5, "AssetManagers:"

    filled-new-array {v4, v0, v5, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 1880
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1883
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1884
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Local Binders:"

    const-string v5, "Proxy Binders:"

    filled-new-array {v4, v0, v5, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 1883
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1885
    div-long v33, v33, v21

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1886
    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Parcel memory:"

    const-string v5, "Parcel count:"

    filled-new-array {v4, v0, v5, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 1885
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1887
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1888
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Death Recipients:"

    const-string v5, "WebViews:"

    filled-new-array {v4, v0, v5, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 1887
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1890
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/readonly/Flags;->nativeMetrics()Z

    move-result v0

    if-eqz v0, :cond_21d

    .line 1891
    invoke-direct/range {p0 .. p1}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfoNativeAllocations(Ljava/io/PrintWriter;)V

    .line 1895
    :cond_21d
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1896
    const-string v0, " SQL"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1897
    iget v0, v14, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v0, v0, 0x400

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "MEMORY_USED:"

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "%21s %8d"

    invoke-static {v1, v3, v0}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1898
    iget v0, v14, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v0, v0, 0x400

    .line 1899
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v3, v14, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v3, v3, 0x400

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "PAGECACHE_OVERFLOW:"

    const-string v5, "MALLOC_SIZE:"

    filled-new-array {v4, v0, v5, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 1898
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1900
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1901
    iget-object v0, v14, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1902
    if-lez v0, :cond_32e

    .line 1903
    const-string v2, " DATABASES"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1904
    const-string v8, "cache size"

    const-string v9, "Dbname"

    const-string/jumbo v3, "pgsz"

    const-string v4, "dbsz"

    const-string v5, "Lookaside(b)"

    const-string v6, "cache hits"

    const-string v7, "cache misses"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  %8s %8s %14s %5s %5s %5s  %s"

    invoke-static {v1, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1906
    const-string v2, "PER CONNECTION STATS"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1907
    move/from16 v2, v23

    :goto_282
    if-ge v2, v0, :cond_2e7

    .line 1908
    iget-object v3, v14, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1909
    iget-boolean v4, v3, Landroid/database/sqlite/SQLiteDebug$DbStats;->arePoolStats:Z

    if-eqz v4, :cond_291

    .line 1911
    goto :goto_2e4

    .line 1913
    :cond_291
    nop

    .line 1914
    iget-wide v4, v3, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2a3

    iget-wide v4, v3, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v16, v4

    goto :goto_2a5

    :cond_2a3
    move-object/from16 v16, v15

    .line 1915
    :goto_2a5
    iget-wide v4, v3, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2b4

    iget-wide v4, v3, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v4

    goto :goto_2b6

    :cond_2b4
    move-object/from16 v17, v15

    .line 1916
    :goto_2b6
    iget v4, v3, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    if-lez v4, :cond_2c3

    iget v4, v3, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v4

    goto :goto_2c5

    :cond_2c3
    move-object/from16 v18, v15

    :goto_2c5
    iget v4, v3, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheHits:I

    .line 1917
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v4, v3, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheMisses:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget v4, v3, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    move-object/from16 v22, v3

    filled-new-array/range {v16 .. v22}, [Ljava/lang/Object;

    move-result-object v3

    .line 1913
    const-string v4, "  %8s %8s %14s %5d %5d %5d  %s"

    invoke-static {v1, v4, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1907
    :goto_2e4
    add-int/lit8 v2, v2, 0x1

    goto :goto_282

    .line 1922
    :cond_2e7
    const-string v2, "POOL STATS"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1923
    const-string v2, "cache size"

    const-string v3, "Dbname"

    const-string v4, "cache hits"

    const-string v5, "cache misses"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  %13s %13s %13s  %s"

    invoke-static {v1, v3, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1925
    move/from16 v2, v23

    :goto_2ff
    if-ge v2, v0, :cond_32e

    .line 1926
    iget-object v3, v14, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1927
    iget-boolean v4, v3, Landroid/database/sqlite/SQLiteDebug$DbStats;->arePoolStats:Z

    if-nez v4, :cond_30e

    .line 1928
    goto :goto_32b

    .line 1930
    :cond_30e
    iget v4, v3, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheHits:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v3, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheMisses:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v3, Landroid/database/sqlite/SQLiteDebug$DbStats;->cacheSize:I

    .line 1931
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    filled-new-array {v4, v5, v6, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 1930
    const-string v4, "  %13d %13d %13d  %s"

    invoke-static {v1, v4, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1925
    :goto_32b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2ff

    .line 1936
    :cond_32e
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v0

    .line 1937
    if-eqz v0, :cond_33f

    .line 1938
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1939
    const-string v2, " Asset Allocations"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1940
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1944
    :cond_33f
    if-eqz p7, :cond_36f

    .line 1945
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v2, :cond_355

    iget-object v0, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_359

    :cond_355
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_35c

    :cond_359
    move/from16 v0, v27

    goto :goto_35e

    :cond_35c
    move/from16 v0, v23

    .line 1948
    :goto_35e
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1949
    const-string v2, " Unreachable memory"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1950
    const/16 v2, 0x64

    invoke-static {v2, v0}, Landroid/os/Debug;->getUnreachableMemory(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1952
    :cond_36f
    if-eqz p8, :cond_374

    .line 1953
    invoke-static {}, Landroid/os/Debug;->logAllocatorStats()Z

    .line 1956
    :cond_374
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1958
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->parcelStringCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_382

    .line 1959
    sget-object v0, Lcom/android/internal/util/StringCache;->INSTANCE:Lcom/android/internal/util/StringCache;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StringCache;->dump(Ljava/io/PrintWriter;)V

    .line 1961
    :cond_382
    return-void
.end method

.method private blacklist dumpMemInfoNativeAllocations(Ljava/io/PrintWriter;)V
    .registers 15
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1768
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1769
    const-string v0, " Native Allocations"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1770
    const-string v0, "Count"

    const-string v1, "Total(kB)"

    const-string v2, ""

    filled-new-array {v2, v0, v2, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%21s %8s %21s %8s"

    invoke-static {p1, v1, v0}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1771
    const-string v0, "------"

    filled-new-array {v2, v0, v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1773
    invoke-static {}, Llibcore/util/NativeAllocationRegistry;->getMetrics()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/util/NativeAllocationRegistry$Metrics;

    .line 1775
    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_e2

    :cond_41
    goto :goto_56

    :sswitch_42
    const-string v4, "android.hardware.HardwareBuffer"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    const/4 v3, 0x1

    goto :goto_57

    :sswitch_4c
    const-string v4, "android.graphics.Bitmap"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    const/4 v3, 0x0

    goto :goto_57

    :goto_56
    const/4 v3, -0x1

    :goto_57
    packed-switch v3, :pswitch_data_ec

    .line 1778
    const-string v3, "Other"

    goto :goto_62

    .line 1777
    :pswitch_5d
    const-string v3, "HardwareBuffer"

    goto :goto_62

    .line 1776
    :pswitch_60
    const-string v3, "Bitmap"

    .line 1781
    :goto_62
    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getMallocedCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const-wide/16 v8, 0x400

    const-string v5, "%21s %8d %21s %8d"

    if-nez v4, :cond_78

    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getMallocedBytes()J

    move-result-wide v10

    cmp-long v4, v10, v6

    if-eqz v4, :cond_a3

    .line 1782
    :cond_78
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " (malloced):"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1783
    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getMallocedCount()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getMallocedBytes()J

    move-result-wide v11

    div-long/2addr v11, v8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array {v4, v10, v2, v11}, [Ljava/lang/Object;

    move-result-object v4

    .line 1782
    invoke-static {p1, v5, v4}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1785
    :cond_a3
    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getNonmallocedCount()J

    move-result-wide v10

    cmp-long v4, v10, v6

    if-nez v4, :cond_b3

    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getNonmallocedBytes()J

    move-result-wide v10

    cmp-long v4, v10, v6

    if-eqz v4, :cond_de

    .line 1786
    :cond_b3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (nonmalloced):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1787
    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getNonmallocedCount()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1}, Llibcore/util/NativeAllocationRegistry$Metrics;->getNonmallocedBytes()J

    move-result-wide v6

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v3, v4, v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1786
    invoke-static {p1, v5, v1}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1789
    :cond_de
    goto/16 :goto_2a

    .line 1790
    :cond_e0
    return-void

    nop

    :sswitch_data_e2
    .sparse-switch
        -0xb9ab36d -> :sswitch_4c
        0x48440eaf -> :sswitch_42
    .end sparse-switch

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_60
        :pswitch_5d
    .end packed-switch
.end method

.method private blacklist getDatabasesDir(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    .line 2135
    const-string v0, "a"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private blacklist updateCameraCompatInfo(Landroid/content/res/CompatibilityInfo;)V
    .registers 3

    .line 1506
    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->isOverrideCameraCompatibilityInfoRequired()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1507
    iget-object p1, p1, Landroid/content/res/CompatibilityInfo;->cameraCompatibilityInfo:Landroid/content/res/CameraCompatibilityInfo;

    invoke-static {p1}, Landroid/content/res/CompatibilityInfo;->setCameraCompatibilityInfo(Landroid/content/res/CameraCompatibilityInfo;)V

    goto :goto_f

    .line 1509
    :cond_c
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->resetCameraCompatibilityInfo()V

    .line 1511
    :goto_f
    return-void
.end method

.method private blacklist updateCompatOverrideScale(Landroid/content/res/CompatibilityInfo;)V
    .registers 4

    .line 1496
    invoke-virtual {p1}, Landroid/content/res/CompatibilityInfo;->hasOverrideScaling()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1497
    iget v0, p1, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    iget v1, p1, Landroid/content/res/CompatibilityInfo;->applicationDensityInvertedScale:F

    iget-object p1, p1, Landroid/content/res/CompatibilityInfo;->overrideDensityDisplayIds:[I

    invoke-static {v0, v1, p1}, Landroid/content/res/CompatibilityInfo;->setOverrideInvertedScale(FF[I)V

    goto :goto_16

    .line 1500
    :cond_10
    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v0, p1}, Landroid/content/res/CompatibilityInfo;->setOverrideInvertedScale(FF[I)V

    .line 1503
    :goto_16
    return-void
.end method


# virtual methods
.method public greylist-max-o attachAgent(Ljava/lang/String;)V
    .registers 4

    .line 1669
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1670
    return-void
.end method

.method public blacklist attachStartupAgents(Ljava/lang/String;)V
    .registers 4

    .line 1674
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0xa2

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1675
    return-void
.end method

.method public final blacklist bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/pm/ProviderInfoList;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/AutofillOptions;Landroid/content/ContentCaptureOptions;[J[JZLandroid/os/SharedMemory;Ljava/io/FileDescriptor;JJ)V
    .registers 37

    .line 1420
    move-object/from16 v0, p18

    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1421
    invoke-static {}, Lcom/android/internal/os/DebugStore;->recordScheduleBindApplication()V

    .line 1423
    :cond_b
    if-eqz p19, :cond_10

    .line 1446
    invoke-static/range {p19 .. p19}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    .line 1451
    :cond_10
    nop

    .line 1452
    const/4 v1, 0x0

    move-object/from16 v2, p28

    invoke-static {v2, v1}, Lcom/android/internal/os/ApplicationSharedMemory;->fromFileDescriptor(Ljava/io/FileDescriptor;Z)Lcom/android/internal/os/ApplicationSharedMemory;

    move-result-object v1

    .line 1454
    new-instance v2, Landroid/content/pm/SystemFeaturesCache;

    .line 1455
    invoke-virtual {v1}, Lcom/android/internal/os/ApplicationSharedMemory;->readSystemFeaturesCache()[I

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/SystemFeaturesCache;-><init>([I)V

    .line 1454
    invoke-static {v2}, Landroid/content/pm/SystemFeaturesCache;->setInstance(Landroid/content/pm/SystemFeaturesCache;)V

    .line 1456
    invoke-virtual {v1}, Lcom/android/internal/os/ApplicationSharedMemory;->closeFileDescriptor()V

    .line 1457
    invoke-static {v1}, Lcom/android/internal/os/ApplicationSharedMemory;->setInstance(Lcom/android/internal/os/ApplicationSharedMemory;)V

    .line 1459
    move-object/from16 v1, p20

    invoke-virtual {p0, v1}, Landroid/app/ActivityThread$ApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V

    .line 1461
    new-instance v1, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v1}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    .line 1462
    iput-object p1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 1463
    iput-object p2, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1464
    iput-object p3, v1, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

    .line 1465
    iput-object p4, v1, Landroid/app/ActivityThread$AppBindData;->sdkSandboxClientAppPackage:Ljava/lang/String;

    .line 1466
    iput-boolean p5, v1, Landroid/app/ActivityThread$AppBindData;->isSdkInSandbox:Z

    .line 1467
    invoke-virtual {p6}, Landroid/content/pm/ProviderInfoList;->getList()Ljava/util/List;

    move-result-object p1

    iput-object p1, v1, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    .line 1468
    iput-object p7, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 1469
    iput-object p9, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    .line 1470
    iput-object p10, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 1471
    iput-object p11, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 1472
    move/from16 p1, p12

    iput p1, v1, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    .line 1473
    move/from16 p1, p13

    iput-boolean p1, v1, Landroid/app/ActivityThread$AppBindData;->enableBinderTracking:Z

    .line 1474
    move/from16 p1, p14

    iput-boolean p1, v1, Landroid/app/ActivityThread$AppBindData;->trackAllocation:Z

    .line 1475
    move/from16 p1, p15

    iput-boolean p1, v1, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    .line 1476
    move/from16 p1, p16

    iput-boolean p1, v1, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    .line 1477
    move-object/from16 p1, p17

    iput-object p1, v1, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    .line 1478
    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 1479
    iput-object p8, v1, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    .line 1480
    move-object/from16 p2, p21

    iput-object p2, v1, Landroid/app/ActivityThread$AppBindData;->buildSerial:Ljava/lang/String;

    .line 1481
    move-object/from16 p2, p22

    iput-object p2, v1, Landroid/app/ActivityThread$AppBindData;->autofillOptions:Landroid/content/AutofillOptions;

    .line 1482
    move-object/from16 p2, p23

    iput-object p2, v1, Landroid/app/ActivityThread$AppBindData;->contentCaptureOptions:Landroid/content/ContentCaptureOptions;

    .line 1483
    move-object/from16 p2, p24

    iput-object p2, v1, Landroid/app/ActivityThread$AppBindData;->disabledCompatChanges:[J

    .line 1484
    move-object/from16 p2, p25

    iput-object p2, v1, Landroid/app/ActivityThread$AppBindData;->mLoggableCompatChanges:[J

    .line 1485
    move/from16 p2, p26

    iput-boolean p2, v1, Landroid/app/ActivityThread$AppBindData;->mLogChangeChecksToStatsD:Z

    .line 1486
    move-object/from16 p2, p27

    iput-object p2, v1, Landroid/app/ActivityThread$AppBindData;->mSerializedSystemFontMap:Landroid/os/SharedMemory;

    .line 1487
    move-wide/from16 p2, p29

    iput-wide p2, v1, Landroid/app/ActivityThread$AppBindData;->startRequestedElapsedTime:J

    .line 1488
    move-wide/from16 p2, p31

    iput-wide p2, v1, Landroid/app/ActivityThread$AppBindData;->startRequestedUptime:J

    .line 1489
    invoke-direct {p0, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateCompatOverrideScale(Landroid/content/res/CompatibilityInfo;)V

    .line 1490
    invoke-direct {p0, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateCameraCompatInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 1491
    invoke-static {p1}, Landroid/content/res/CompatibilityInfo;->applyOverrideIfNeeded(Landroid/content/res/Configuration;)V

    .line 1492
    iget-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 p2, 0x6e

    invoke-virtual {p1, p2, v1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1493
    return-void
.end method

.method public greylist-max-o clearDnsCache()V
    .registers 2

    .line 1556
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 1559
    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/event/NetworkEventDispatcher;->dispatchNetworkConfigurationChange()V

    .line 1560
    return-void
.end method

.method public greylist-max-o dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .registers 5

    .line 1692
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x85

    invoke-static {v0, v1, p2, p1}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1693
    return-void
.end method

.method public greylist-max-o dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11

    .line 1720
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 1722
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1723
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1724
    iput-object p3, v2, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    .line 1725
    iput-object p4, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1726
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v1, 0x88

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1b} :catch_1f
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1c

    goto :goto_28

    .line 1730
    :catchall_1c
    move-exception v0

    move-object p2, v0

    goto :goto_2d

    .line 1727
    :catch_1f
    move-exception v0

    move-object p2, v0

    .line 1728
    :try_start_21
    const-string p3, "ActivityThread"

    const-string p4, "dumpActivity failed"

    invoke-static {p3, p4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_1c

    .line 1730
    :goto_28
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1731
    nop

    .line 1732
    return-void

    .line 1730
    :goto_2d
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1731
    throw p2
.end method

.method public blacklist dumpBitmapsProto(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 7
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2112
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 2113
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v1, :cond_11

    .line 2114
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_15

    .line 2115
    :cond_11
    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v1

    .line 2116
    :goto_15
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v2, v0, v1, p2}, Landroid/app/ActivityThread;->dumpBitmapsProto(Landroid/util/proto/ProtoOutputStream;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_0 .. :try_end_21} :catchall_26

    .line 2119
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2120
    nop

    .line 2121
    return-void

    .line 2119
    :catchall_26
    move-exception p2

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2120
    throw p2
.end method

.method public blacklist dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .registers 3

    .line 2126
    :try_start_0
    invoke-static {p1, p2}, Landroid/app/PropertyInvalidatedCache;->dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 2127
    invoke-static {p1}, Landroid/app/BroadcastStickyCache;->dumpCacheInfo(Landroid/os/ParcelFileDescriptor;)V
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_b

    .line 2129
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2130
    nop

    .line 2131
    return-void

    .line 2129
    :catchall_b
    move-exception p2

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2130
    throw p2
.end method

.method public greylist-max-o dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .registers 5

    .line 2148
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    if-eqz v0, :cond_44

    .line 2154
    :try_start_6
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_a} :catch_1b
    .catchall {:try_start_6 .. :try_end_a} :catchall_19

    .line 2159
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2160
    nop

    .line 2162
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/ActivityThread$ApplicationThread$1;

    invoke-direct {v1, p0, v0, p2}, Landroid/app/ActivityThread$ApplicationThread$1;-><init>(Landroid/app/ActivityThread$ApplicationThread;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2172
    goto :goto_4b

    .line 2159
    :catchall_19
    move-exception p2

    goto :goto_40

    .line 2155
    :catch_1b
    move-exception p2

    .line 2156
    :try_start_1c
    const-string p2, "ActivityThread"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not dup FD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_19

    .line 2159
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2157
    return-void

    .line 2159
    :goto_40
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2160
    throw p2

    .line 2173
    :cond_44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ActivityThread$ApplicationThread;->dumpDatabaseInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V

    .line 2174
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2176
    :goto_4b
    return-void
.end method

.method public greylist-max-o dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .registers 9

    .line 2095
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 2097
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 2098
    const/4 v0, 0x0

    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 2099
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 2100
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v1, 0xa5

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1a} :catch_1e
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1b

    goto :goto_27

    .line 2104
    :catchall_1b
    move-exception v0

    move-object p2, v0

    goto :goto_2c

    .line 2101
    :catch_1e
    move-exception v0

    move-object p2, v0

    .line 2102
    :try_start_20
    const-string v0, "ActivityThread"

    const-string v1, "dumpGfxInfo failed"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_1b

    .line 2104
    :goto_27
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2105
    nop

    .line 2106
    return-void

    .line 2104
    :goto_2c
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2105
    throw p2
.end method

.method public blacklist dumpHeap(ZZZLjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .registers 9

    .line 1647
    move v0, p2

    new-instance p2, Landroid/app/ActivityThread$DumpHeapData;

    invoke-direct {p2}, Landroid/app/ActivityThread$DumpHeapData;-><init>()V

    .line 1648
    iput-boolean p1, p2, Landroid/app/ActivityThread$DumpHeapData;->managed:Z

    .line 1649
    iput-boolean v0, p2, Landroid/app/ActivityThread$DumpHeapData;->mallocInfo:Z

    .line 1650
    iput-object p4, p2, Landroid/app/ActivityThread$DumpHeapData;->dumpBitmaps:Ljava/lang/String;

    .line 1651
    iput-boolean p3, p2, Landroid/app/ActivityThread$DumpHeapData;->runGc:Z

    .line 1652
    iput-object p5, p2, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    .line 1656
    :try_start_10
    invoke-virtual {p6}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p2, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_2d
    .catchall {:try_start_10 .. :try_end_16} :catchall_2a

    .line 1661
    invoke-static {p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1662
    nop

    .line 1663
    iput-object p7, p2, Landroid/app/ActivityThread$DumpHeapData;->finishCallback:Landroid/os/RemoteCallback;

    .line 1664
    iget-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 p4, 0x0

    const/4 p5, 0x1

    move-object p3, p1

    const/16 p1, 0x87

    move-object p6, p3

    const/4 p3, 0x0

    move-object p0, p6

    invoke-static/range {p0 .. p5}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V

    .line 1665
    return-void

    .line 1661
    :catchall_2a
    move-exception v0

    move-object p1, v0

    goto :goto_3a

    .line 1657
    :catch_2d
    move-exception v0

    move-object p1, v0

    .line 1658
    :try_start_2f
    const-string p2, "ActivityThread"

    const-string p3, "Failed to duplicate heap dump file descriptor"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_2a

    .line 1661
    invoke-static {p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1659
    return-void

    .line 1661
    :goto_3a
    invoke-static {p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1662
    throw p1
.end method

.method public blacklist dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZZ[Ljava/lang/String;)V
    .registers 21
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1755
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1756
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v3, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1758
    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    :try_start_1a
    invoke-direct/range {v2 .. v10}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZZZ)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_25

    .line 1761
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 1762
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1763
    nop

    .line 1764
    return-void

    .line 1761
    :catchall_25
    move-exception v0

    move-object p2, v0

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 1762
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1763
    throw p2
.end method

.method public greylist-max-o dumpMemInfoProto(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V
    .registers 15
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 1968
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p7

    invoke-direct {v1, p7}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1970
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

    .line 1972
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1973
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1974
    nop

    .line 1975
    return-void

    .line 1972
    :catchall_1a
    move-exception v0

    move-object p2, v0

    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1973
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1974
    throw p2
.end method

.method public greylist-max-o dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .registers 10

    .line 1737
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 1739
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1740
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1741
    iput-object p3, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1742
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v1, 0x8d

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_19} :catch_1d
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    goto :goto_26

    .line 1746
    :catchall_1a
    move-exception v0

    move-object p2, v0

    goto :goto_2b

    .line 1743
    :catch_1d
    move-exception v0

    move-object p2, v0

    .line 1744
    :try_start_1f
    const-string p3, "ActivityThread"

    const-string v0, "dumpProvider failed"

    invoke-static {p3, v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_1a

    .line 1746
    :goto_26
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1747
    nop

    .line 1748
    return-void

    .line 1746
    :goto_2b
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1747
    throw p2
.end method

.method public blacklist dumpResources(Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .registers 9

    .line 1705
    new-instance v2, Landroid/app/ActivityThread$DumpResourcesData;

    invoke-direct {v2}, Landroid/app/ActivityThread$DumpResourcesData;-><init>()V

    .line 1707
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v2, Landroid/app/ActivityThread$DumpResourcesData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1708
    iput-object p2, v2, Landroid/app/ActivityThread$DumpResourcesData;->finishCallback:Landroid/os/RemoteCallback;

    .line 1709
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v1, 0xa6

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_17} :catch_1b
    .catchall {:try_start_5 .. :try_end_17} :catchall_18

    goto :goto_24

    .line 1713
    :catchall_18
    move-exception v0

    move-object p2, v0

    goto :goto_29

    .line 1710
    :catch_1b
    move-exception v0

    move-object p2, v0

    .line 1711
    :try_start_1d
    const-string v0, "ActivityThread"

    const-string v1, "dumpResources failed"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_18

    .line 1713
    :goto_24
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1714
    nop

    .line 1715
    return-void

    .line 1713
    :goto_29
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1714
    throw p2
.end method

.method public greylist-max-o dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .registers 10

    .line 1586
    new-instance v2, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v2}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 1588
    :try_start_5
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v2, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1589
    iput-object p2, v2, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1590
    iput-object p3, v2, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1591
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v1, 0x7b

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_19} :catch_1d
    .catchall {:try_start_5 .. :try_end_19} :catchall_1a

    goto :goto_26

    .line 1595
    :catchall_1a
    move-exception v0

    move-object p2, v0

    goto :goto_2b

    .line 1592
    :catch_1d
    move-exception v0

    move-object p2, v0

    .line 1593
    :try_start_1f
    const-string p3, "ActivityThread"

    const-string v0, "dumpService failed"

    invoke-static {p3, v0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_1a

    .line 1595
    :goto_26
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1596
    nop

    .line 1597
    return-void

    .line 1595
    :goto_2b
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1596
    throw p2
.end method

.method public blacklist getExecutableMethodFileOffsets(Landroid/os/instrumentation/MethodDescriptor;Landroid/os/instrumentation/IOffsetCallback;)V
    .registers 6

    .line 2420
    nop

    .line 2421
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 2420
    invoke-static {v0, p1}, Landroid/os/instrumentation/MethodDescriptorParser;->parseMethodDescriptor(Ljava/lang/ClassLoader;Landroid/os/instrumentation/MethodDescriptor;)Ljava/lang/reflect/Executable;

    move-result-object p1

    .line 2423
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/art/flags/Flags;->executableMethodFileOffsetsV2()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2424
    invoke-static {p1}, Ldalvik/system/VMDebug;->getExecutableMethodFileOffsets(Ljava/lang/reflect/Executable;)Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;

    move-result-object p1

    goto :goto_22

    .line 2425
    :cond_18
    instance-of v0, p1, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4b

    .line 2426
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {p1}, Ldalvik/system/VMDebug;->getExecutableMethodFileOffsets(Ljava/lang/reflect/Method;)Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;

    move-result-object p1

    .line 2431
    :goto_22
    if-nez p1, :cond_29

    .line 2432
    const/4 p1, 0x0

    :try_start_25
    invoke-interface {p2, p1}, Landroid/os/instrumentation/IOffsetCallback;->onResult(Landroid/os/instrumentation/ExecutableMethodFileOffsets;)V

    .line 2433
    return-void

    .line 2435
    :cond_29
    new-instance v0, Landroid/os/instrumentation/ExecutableMethodFileOffsets;

    invoke-direct {v0}, Landroid/os/instrumentation/ExecutableMethodFileOffsets;-><init>()V

    .line 2436
    invoke-virtual {p1}, Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;->getContainerPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/instrumentation/ExecutableMethodFileOffsets;->containerPath:Ljava/lang/String;

    .line 2437
    invoke-virtual {p1}, Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;->getContainerOffset()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/instrumentation/ExecutableMethodFileOffsets;->containerOffset:J

    .line 2438
    invoke-virtual {p1}, Ldalvik/system/VMDebug$ExecutableMethodFileOffsets;->getMethodOffset()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/instrumentation/ExecutableMethodFileOffsets;->methodOffset:J

    .line 2439
    invoke-interface {p2, v0}, Landroid/os/instrumentation/IOffsetCallback;->onResult(Landroid/os/instrumentation/ExecutableMethodFileOffsets;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_43} :catch_45

    .line 2442
    nop

    .line 2443
    return-void

    .line 2440
    :catch_45
    move-exception p1

    .line 2441
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2428
    :cond_4b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public greylist-max-o handleTrustStorageUpdate()V
    .registers 2

    .line 2325
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->handleTrustStorageUpdate()V

    .line 2326
    return-void
.end method

.method public blacklist instrumentWithoutRestart(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;Landroid/content/pm/ApplicationInfo;)V
    .registers 7

    .line 2393
    new-instance v0, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v0}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    .line 2394
    iput-object p1, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 2395
    iput-object p2, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    .line 2396
    iput-object p3, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 2397
    iput-object p4, v0, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 2398
    iput-object p5, v0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 2399
    iget-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 p2, 0xaa

    invoke-virtual {p1, p2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2400
    return-void
.end method

.method public greylist-max-o notifyCleartextNetwork([B)V
    .registers 3

    .line 2294
    invoke-static {}, Landroid/os/StrictMode;->vmCleartextNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2295
    invoke-static {p1}, Landroid/os/StrictMode;->onCleartextNetworkDetected([B)V

    .line 2297
    :cond_9
    return-void
.end method

.method public blacklist notifyContentProviderPublishStatus(Landroid/app/ContentProviderHolder;Ljava/lang/String;IZ)V
    .registers 8

    .line 2379
    const-string p4, ";"

    invoke-virtual {p2, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 2380
    array-length p4, p2

    const/4 v0, 0x0

    :goto_8
    if-ge v0, p4, :cond_23

    aget-object v1, p2, v0

    .line 2381
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v2, v1, p3}, Landroid/app/ActivityThread;->-$$Nest$mgetGetProviderKey(Landroid/app/ActivityThread;Ljava/lang/String;I)Landroid/app/ActivityThread$ProviderKey;

    move-result-object v1

    .line 2382
    iget-object v2, v1, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2383
    :try_start_15
    iput-object p1, v1, Landroid/app/ActivityThread$ProviderKey;->mHolder:Landroid/app/ContentProviderHolder;

    .line 2384
    iget-object v1, v1, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2385
    monitor-exit v2

    .line 2380
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2385
    :catchall_20
    move-exception p1

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_20

    throw p1

    .line 2387
    :cond_23
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1179
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->checkApplicationThreadCalledBySystem()Z

    move-result v0

    .line 1180
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v1, :cond_a

    if-eqz v0, :cond_ae

    .line 1181
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1182
    if-eqz v1, :cond_ae

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_ae

    .line 1183
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 1184
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 1186
    if-eqz v2, :cond_49

    array-length v3, v2

    if-nez v3, :cond_28

    goto :goto_49

    .line 1188
    :cond_28
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_30

    .line 1189
    const/4 v3, 0x0

    aget-object v2, v2, v3

    goto :goto_4c

    .line 1191
    :cond_30
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v2

    .line 1192
    const-string v3, ", "

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    .line 1191
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_4c

    .line 1187
    :cond_49
    :goto_49
    const-string/jumbo v2, "unknown"

    .line 1194
    :goto_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ApplicationThread called by non-system process (callingUid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; packageName: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "; code: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "; flags: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "ActivityThread"

    invoke-static {v7, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    if-nez v0, :cond_8b

    goto :goto_ae

    .line 1201
    :cond_8b
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1208
    :cond_ae
    :goto_ae
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/IApplicationThread$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1
.end method

.method public blacklist performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 13

    .line 2362
    new-instance v5, Landroid/os/CancellationSignal;

    invoke-direct {v5}, Landroid/os/CancellationSignal;-><init>()V

    .line 2363
    if-eqz p4, :cond_20

    .line 2364
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0, v5}, Landroid/app/ActivityThread;->-$$Nest$mcreateSafeCancellationTransport(Landroid/app/ActivityThread;Landroid/os/CancellationSignal;)Landroid/app/ActivityThread$SafeCancellationTransport;

    move-result-object v0

    .line 2366
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2367
    nop

    .line 2368
    invoke-interface {v0}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2367
    const-string/jumbo v2, "key_cancellation_signal"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2369
    invoke-virtual {p4, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 2371
    :cond_20
    iget-object p4, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object p4, p4, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    new-instance v0, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda0;-><init>()V

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 2374
    return-void
.end method

.method public greylist-max-o processInBackground()V
    .registers 4

    .line 1580
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 1581
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v1}, Landroid/app/ActivityThread$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 1582
    return-void
.end method

.method public greylist-max-o profilerControl(ZLandroid/app/ProfilerInfo;I)V
    .registers 6

    .line 1641
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7f

    invoke-static {v0, v1, p2, p1, p3}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 1642
    return-void
.end method

.method public greylist-max-o requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V
    .registers 7

    .line 2186
    new-instance v0, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-direct {v0}, Landroid/app/ActivityThread$RequestAssistContextExtras;-><init>()V

    .line 2187
    iput-object p1, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    .line 2188
    iput-object p2, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    .line 2189
    iput p3, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    .line 2190
    iput p4, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    .line 2191
    iput p5, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->flags:I

    .line 2192
    iget-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 p2, 0x8f

    invoke-virtual {p1, p2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2193
    return-void
.end method

.method public blacklist requestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 12

    .line 2344
    new-instance v4, Landroid/os/CancellationSignal;

    invoke-direct {v4}, Landroid/os/CancellationSignal;-><init>()V

    .line 2345
    if-eqz p3, :cond_20

    .line 2346
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0, v4}, Landroid/app/ActivityThread;->-$$Nest$mcreateSafeCancellationTransport(Landroid/app/ActivityThread;Landroid/os/CancellationSignal;)Landroid/app/ActivityThread$SafeCancellationTransport;

    move-result-object v0

    .line 2348
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2349
    nop

    .line 2350
    invoke-interface {v0}, Landroid/os/ICancellationSignal;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2349
    const-string/jumbo v2, "key_cancellation_signal"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2351
    invoke-virtual {p3, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 2353
    :cond_20
    iget-object p3, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object p3, p3, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    new-instance v0, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda1;-><init>()V

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 2355
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 2353
    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 2356
    return-void
.end method

.method public blacklist requestHandoffActivityData(Landroid/os/IBinder;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .line 2204
    new-instance v0, Landroid/app/ActivityThread$RequestHandoffActivityData;

    invoke-direct {v0}, Landroid/app/ActivityThread$RequestHandoffActivityData;-><init>()V

    .line 2205
    iput-object p2, v0, Landroid/app/ActivityThread$RequestHandoffActivityData;->activityTokens:Ljava/util/List;

    .line 2206
    iput-object p1, v0, Landroid/app/ActivityThread$RequestHandoffActivityData;->requestToken:Landroid/os/IBinder;

    .line 2207
    iget-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 p2, 0xad

    invoke-virtual {p1, p2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2208
    return-void
.end method

.method public final greylist-max-o runIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    .line 1515
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1516
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1517
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1518
    iget-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 p2, 0x9e

    invoke-virtual {p1, p2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1519
    return-void
.end method

.method public greylist-max-o scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .registers 8

    .line 1533
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$fgetmResourcesManager(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    move-result-object v0

    monitor-enter v0

    .line 1534
    :try_start_7
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v1}, Landroid/app/ActivityThread;->-$$Nest$fgetmPendingAppInfoUpdates(Landroid/app/ActivityThread;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1535
    if-eqz v1, :cond_52

    iget-wide v2, v1, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    iget-wide v4, p1, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_52

    .line 1536
    const-string v2, "ActivityThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping application info changed for obsolete AI with TS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < already pending TS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v2}, Landroid/app/ActivityThread;->-$$Nest$fgetmPendingAppInfoUpdates(Landroid/app/ActivityThread;)Landroid/util/ArrayMap;

    move-result-object v2

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    monitor-exit v0

    return-void

    .line 1542
    :cond_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_7 .. :try_end_53} :catchall_75

    .line 1543
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$fgetmResourcesManager(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/app/ResourcesManager;->appendPendingAppInfoUpdate([Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 1544
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x9c

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityThread$H;->removeMessages(ILjava/lang/Object;)V

    .line 1545
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1546
    return-void

    .line 1542
    :catchall_75
    move-exception p1

    :try_start_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw p1
.end method

.method public final blacklist scheduleBindService(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;ZIJ)V
    .registers 10

    .line 1292
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v1, 0x0

    invoke-virtual {v0, p5, v1}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 1293
    new-instance p5, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {p5}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 1294
    iput-object p1, p5, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 1295
    iput-object p2, p5, Landroid/app/ActivityThread$BindServiceData;->bindToken:Landroid/os/IBinder;

    .line 1296
    iput-object p3, p5, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 1297
    iput-boolean p4, p5, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    .line 1298
    iput-wide p6, p5, Landroid/app/ActivityThread$BindServiceData;->bindSeq:J

    .line 1305
    const-wide/16 p2, 0x40

    invoke-static {p2, p3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p4

    if-eqz p4, :cond_3e

    .line 1306
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "scheduleBindService. token="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " bindSeq="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 1309
    :cond_3e
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 1310
    invoke-static {p5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    iget-object p2, p5, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    invoke-static {p1, p2}, Lcom/android/internal/os/DebugStore;->recordScheduleServiceBind(ILandroid/content/Intent;)V

    .line 1312
    :cond_4d
    iget-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 p2, 0x79

    invoke-virtual {p1, p2, p5}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1313
    return-void
.end method

.method public blacklist scheduleCrash(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 5

    .line 1697
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1698
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1699
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1700
    iget-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 p3, 0x86

    invoke-static {p1, p3, v0, p2}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1701
    return-void
.end method

.method public final blacklist scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;III)V
    .registers 6

    .line 1253
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 1254
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1255
    iput p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    .line 1256
    iput p3, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    .line 1257
    iput p4, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupDestination:I

    .line 1259
    iget-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 p2, 0x80

    invoke-virtual {p1, p2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1260
    return-void
.end method

.method public final greylist-max-o scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V
    .registers 8

    .line 1274
    iget-object p3, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v0, 0x0

    invoke-virtual {p3, p4, v0}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 1275
    new-instance p3, Landroid/app/ActivityThread$CreateServiceData;

    invoke-direct {p3}, Landroid/app/ActivityThread$CreateServiceData;-><init>()V

    .line 1276
    iput-object p1, p3, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 1277
    iput-object p2, p3, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    .line 1279
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p4

    if-eqz p4, :cond_2e

    .line 1280
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleCreateService. token="

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 1283
    :cond_2e
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 1284
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1, p2}, Lcom/android/internal/os/DebugStore;->recordScheduleServiceCreate(ILandroid/content/pm/ServiceInfo;)V

    .line 1286
    :cond_3b
    iget-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 p2, 0x72

    invoke-virtual {p1, p2, p3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1287
    return-void
.end method

.method public final blacklist scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;I)V
    .registers 4

    .line 1264
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 1265
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1266
    iput p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->userId:I

    .line 1268
    iget-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 p2, 0x81

    invoke-virtual {p1, p2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1269
    return-void
.end method

.method public greylist-max-o scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    .registers 4

    .line 2289
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x95

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2290
    return-void
.end method

.method public final greylist-max-o scheduleExit()V
    .registers 4

    .line 1523
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1524
    return-void
.end method

.method public greylist-max-o scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .registers 4

    .line 2268
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x91

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2269
    return-void
.end method

.method public greylist-max-o scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2317
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2318
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2319
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2320
    iget-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 p2, 0x9a

    invoke-virtual {p1, p2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2321
    return-void
.end method

.method public greylist-max-o scheduleLowMemory()V
    .registers 4

    .line 1636
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1637
    return-void
.end method

.method public blacklist scheduleOnNewSceneTransitionInfo(Landroid/os/IBinder;Landroid/app/ActivityOptions$SceneTransitionInfo;)V
    .registers 5

    .line 2245
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 p1, 0x92

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2247
    return-void
.end method

.method public final blacklist schedulePing(Landroid/os/RemoteCallback;)V
    .registers 4

    .line 1374
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0xa8

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1375
    return-void
.end method

.method public final blacklist scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V
    .registers 27

    .line 1221
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v1, 0x0

    move/from16 v2, p10

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 1222
    new-instance v2, Landroid/app/ActivityThread$ReceiverData;

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 1223
    invoke-virtual {v0}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    const/4 v8, 0x0

    move-object v3, p1

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    move/from16 v11, p9

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v2 .. v13}, Landroid/app/ActivityThread$ReceiverData;-><init>(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZLandroid/os/IBinder;IILjava/lang/String;)V

    .line 1225
    move-object/from16 v0, p2

    iput-object v0, v2, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 1226
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1227
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/internal/os/DebugStore;->recordScheduleBroadcastReceive(ILandroid/content/Intent;)V

    .line 1229
    :cond_38
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1230
    return-void
.end method

.method public final blacklist scheduleReceiverList(Ljava/util/List;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ReceiverInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1234
    const/4 v0, 0x0

    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6b

    .line 1235
    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ReceiverInfo;

    .line 1236
    iget-boolean v3, v2, Landroid/app/ReceiverInfo;->registered:Z

    if-eqz v3, :cond_33

    .line 1237
    iget-object v5, v2, Landroid/app/ReceiverInfo;->receiver:Landroid/content/IIntentReceiver;

    iget-object v6, v2, Landroid/app/ReceiverInfo;->intent:Landroid/content/Intent;

    iget v7, v2, Landroid/app/ReceiverInfo;->resultCode:I

    iget-object v8, v2, Landroid/app/ReceiverInfo;->data:Ljava/lang/String;

    iget-object v9, v2, Landroid/app/ReceiverInfo;->extras:Landroid/os/Bundle;

    iget-boolean v10, v2, Landroid/app/ReceiverInfo;->ordered:Z

    iget-boolean v11, v2, Landroid/app/ReceiverInfo;->sticky:Z

    iget-boolean v12, v2, Landroid/app/ReceiverInfo;->assumeDelivered:Z

    iget v13, v2, Landroid/app/ReceiverInfo;->sendingUser:I

    iget v14, v2, Landroid/app/ReceiverInfo;->processState:I

    iget v15, v2, Landroid/app/ReceiverInfo;->sendingUid:I

    iget-object v2, v2, Landroid/app/ReceiverInfo;->sendingPackage:Ljava/lang/String;

    move-object/from16 v4, p0

    move-object/from16 v16, v2

    invoke-virtual/range {v4 .. v16}, Landroid/app/ActivityThread$ApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V

    goto :goto_68

    .line 1242
    :cond_33
    iget-object v3, v2, Landroid/app/ReceiverInfo;->intent:Landroid/content/Intent;

    iget-object v4, v2, Landroid/app/ReceiverInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v2, Landroid/app/ReceiverInfo;->compatInfo:Landroid/content/res/CompatibilityInfo;

    iget v6, v2, Landroid/app/ReceiverInfo;->resultCode:I

    iget-object v7, v2, Landroid/app/ReceiverInfo;->data:Ljava/lang/String;

    iget-object v8, v2, Landroid/app/ReceiverInfo;->extras:Landroid/os/Bundle;

    iget-boolean v9, v2, Landroid/app/ReceiverInfo;->sync:Z

    iget-boolean v10, v2, Landroid/app/ReceiverInfo;->assumeDelivered:Z

    iget v11, v2, Landroid/app/ReceiverInfo;->sendingUser:I

    iget v12, v2, Landroid/app/ReceiverInfo;->processState:I

    iget v13, v2, Landroid/app/ReceiverInfo;->sendingUid:I

    iget-object v2, v2, Landroid/app/ReceiverInfo;->sendingPackage:Ljava/lang/String;

    move-object/from16 v16, p0

    move-object/from16 v28, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    invoke-virtual/range {v16 .. v28}, Landroid/app/ActivityThread$ApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V

    .line 1234
    :goto_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1248
    :cond_6b
    return-void
.end method

.method public blacklist scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1608
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v1, 0x0

    move/from16 v2, p10

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 1614
    instance-of v0, p1, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;

    if-eqz v0, :cond_25

    .line 1615
    move-object v0, p1

    check-cast v0, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p11

    move-object/from16 v10, p12

    invoke-virtual/range {v0 .. v10}, Landroid/app/LoadedApk$ReceiverDispatcher$InnerReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIILjava/lang/String;)V

    goto/16 :goto_9e

    .line 1619
    :cond_25
    move/from16 v9, p11

    move-object/from16 v10, p12

    const-string v0, " and "

    const-string/jumbo v2, "scheduleRegisteredReceiver() called for "

    const-string v3, "ActivityThread"

    if-nez p8, :cond_54

    .line 1620
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " without mechanism to finish delivery"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :cond_54
    const/4 v4, -0x1

    if-ne v9, v4, :cond_59

    if-eqz v10, :cond_8f

    .line 1624
    :cond_59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (UID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") without mechanism to propagate the sender\'s identity"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    :cond_8f
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p9

    invoke-interface/range {v1 .. v8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 1632
    :goto_9e
    return-void
.end method

.method public final greylist-max-o scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V
    .registers 9

    .line 1332
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    .line 1334
    const/4 v0, 0x0

    :goto_5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6c

    .line 1335
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ServiceStartArgs;

    .line 1336
    new-instance v2, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-direct {v2}, Landroid/app/ActivityThread$ServiceArgsData;-><init>()V

    .line 1337
    iput-object p1, v2, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    .line 1338
    iget-boolean v3, v1, Landroid/app/ServiceStartArgs;->taskRemoved:Z

    iput-boolean v3, v2, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    .line 1339
    iget v3, v1, Landroid/app/ServiceStartArgs;->startId:I

    iput v3, v2, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    .line 1340
    iget v3, v1, Landroid/app/ServiceStartArgs;->flags:I

    iput v3, v2, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    .line 1341
    iget-object v1, v1, Landroid/app/ServiceStartArgs;->args:Landroid/content/Intent;

    iput-object v1, v2, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 1343
    const-wide/16 v3, 0x40

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 1344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scheduleServiceArgs. token="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " startId="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v2, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 1347
    :cond_53
    invoke-static {}, Landroid/app/ActivityThread;->-$$Nest$sfgetDEBUG_STORE_ENABLED()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 1348
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    iget-object v3, v2, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    invoke-static {v1, v3}, Lcom/android/internal/os/DebugStore;->recordScheduleServiceStart(ILandroid/content/Intent;)V

    .line 1350
    :cond_62
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x73

    invoke-virtual {v1, v3, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1334
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1352
    :cond_6c
    return-void
.end method

.method public final greylist-max-o scheduleStopService(Landroid/os/IBinder;)V
    .registers 6

    .line 1356
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleStopService. token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 1360
    :cond_1f
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x74

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1361
    return-void
.end method

.method public final greylist-max-o scheduleSuicide()V
    .registers 4

    .line 1528
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x82

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1529
    return-void
.end method

.method public blacklist scheduleTaskFragmentTransaction(Landroid/window/ITaskFragmentOrganizer;Landroid/window/TaskFragmentTransaction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2337
    invoke-interface {p1, p2}, Landroid/window/ITaskFragmentOrganizer;->onTransactionReady(Landroid/window/TaskFragmentTransaction;)V

    .line 2338
    return-void
.end method

.method public final blacklist scheduleTimeoutService(Landroid/os/IBinder;I)V
    .registers 7

    .line 1365
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleTimeoutService. token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 1369
    :cond_1f
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0xa7

    invoke-static {v0, v1, p1, p2}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1370
    return-void
.end method

.method public final blacklist scheduleTimeoutServiceForType(Landroid/os/IBinder;II)V
    .registers 8

    .line 1380
    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleTimeoutServiceForType. token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 1384
    :cond_1f
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0xac

    invoke-static {v0, v1, p1, p2, p3}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 1385
    return-void
.end method

.method public greylist-max-o scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2330
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 2331
    return-void
.end method

.method public greylist-max-o scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .registers 5

    .line 2240
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x90

    invoke-static {v0, v1, p1, p2}, Landroid/app/ActivityThread;->-$$Nest$msendMessage(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 2241
    return-void
.end method

.method public greylist-max-o scheduleTrimMemory(I)V
    .registers 5

    .line 2227
    new-instance v0, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/app/ActivityThread$ApplicationThread$$ExternalSyntheticLambda2;-><init>()V

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 2228
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2227
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 2228
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 2230
    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v0

    .line 2231
    if-eqz v0, :cond_1f

    .line 2232
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_26

    .line 2234
    :cond_1f
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    .line 2236
    :goto_26
    return-void
.end method

.method public final blacklist scheduleUnbindService(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;)V
    .registers 7

    .line 1317
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 1318
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 1319
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->bindToken:Landroid/os/IBinder;

    .line 1320
    iput-object p3, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 1321
    const-wide/16 p2, -0x1

    iput-wide p2, v0, Landroid/app/ActivityThread$BindServiceData;->bindSeq:J

    .line 1323
    const-wide/16 p2, 0x40

    invoke-static {p2, p3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleUnbindService. token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 1327
    :cond_2e
    iget-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 p2, 0x7a

    invoke-virtual {p1, p2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1328
    return-void
.end method

.method public greylist-max-o setCoreSettings(Landroid/os/Bundle;)V
    .registers 4

    .line 2212
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2213
    return-void
.end method

.method public greylist-max-o setNetworkBlockSeq(J)V
    .registers 5

    .line 2261
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->-$$Nest$fgetmNetworkPolicyLock(Landroid/app/ActivityThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2262
    :try_start_7
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v1, p1, p2}, Landroid/app/ActivityThread;->-$$Nest$fputmNetworkBlockSeq(Landroid/app/ActivityThread;J)V

    .line 2263
    monitor-exit v0

    .line 2264
    return-void

    .line 2263
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public greylist-max-o setProcessState(I)V
    .registers 4

    .line 2251
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityThread;->updateProcessState(IZ)V

    .line 2252
    return-void
.end method

.method public greylist-max-o setSchedulingGroup(I)V
    .registers 5

    .line 1684
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 1687
    goto :goto_21

    .line 1685
    :catch_8
    move-exception v0

    .line 1686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed setting process group to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ActivityThread"

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1688
    :goto_21
    return-void
.end method

.method public greylist-max-o startBinderTracking()V
    .registers 4

    .line 2301
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x96

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2302
    return-void
.end method

.method public greylist-max-o stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V
    .registers 5

    .line 2307
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    const/16 v2, 0x97

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_11
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_12

    .line 2310
    :catchall_c
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2311
    throw v0

    .line 2308
    :catch_11
    move-exception v0

    .line 2310
    :goto_12
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2311
    nop

    .line 2312
    return-void
.end method

.method public greylist-max-o unstableProviderDied(Landroid/os/IBinder;)V
    .registers 4

    .line 2180
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2181
    return-void
.end method

.method public blacklist updateHttpProxy()V
    .registers 4

    .line 1565
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    monitor-enter v0

    .line 1566
    :try_start_3
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 1567
    if-nez v1, :cond_13

    .line 1570
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/app/ActivityThread;->-$$Nest$fputmUpdateHttpProxyOnBind(Landroid/app/ActivityThread;Z)V

    .line 1571
    monitor-exit v0

    return-void

    .line 1573
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    .line 1575
    invoke-static {v1}, Landroid/app/ActivityThread;->updateHttpProxy(Landroid/content/Context;)V

    .line 1576
    return-void

    .line 1573
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public greylist-max-o updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .registers 4

    .line 2217
    new-instance v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-direct {v0}, Landroid/app/ActivityThread$UpdateCompatibilityData;-><init>()V

    .line 2218
    iput-object p1, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    .line 2219
    iput-object p2, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    .line 2220
    invoke-direct {p0, p2}, Landroid/app/ActivityThread$ApplicationThread;->updateCompatOverrideScale(Landroid/content/res/CompatibilityInfo;)V

    .line 2221
    invoke-direct {p0, p2}, Landroid/app/ActivityThread$ApplicationThread;->updateCameraCompatInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 2222
    iget-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 p2, 0x8b

    invoke-virtual {p1, p2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2223
    return-void
.end method

.method public final greylist-max-o updateTimePrefs(I)V
    .registers 3

    .line 2275
    if-nez p1, :cond_5

    .line 2276
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_c

    .line 2277
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 2278
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_c

    .line 2282
    :cond_b
    const/4 p1, 0x0

    .line 2284
    :goto_c
    invoke-static {p1}, Ljava/text/DateFormat;->set24HourTimePref(Ljava/lang/Boolean;)V

    .line 2285
    return-void
.end method

.method public greylist-max-o updateTimeZone()V
    .registers 2

    .line 1550
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1551
    return-void
.end method

.method public blacklist updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .registers 8
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

    .line 2406
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2407
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2408
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2409
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2410
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2411
    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 2412
    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 2413
    iget-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 p2, 0xa3

    invoke-virtual {p1, p2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 2414
    return-void
.end method
