.class public Lcom/android/server/am/ProcessStateController$Builder;
.super Ljava/lang/Object;
.source "ProcessStateController.java"


# instance fields
.field public final mActiveUids:Lcom/android/server/am/ActiveUids;

.field public final mAms:Lcom/android/server/am/ActivityManagerService;

.field public mHandlerThread:Lcom/android/server/ServiceThread;

.field public mLock:Ljava/lang/Object;

.field public final mOomAdjCallback:Lcom/android/server/am/OomAdjuster$Callback;

.field public mOomAdjInjector:Lcom/android/server/am/OomAdjuster$Injector;

.field public final mProcessList:Lcom/android/server/am/ProcessList;

.field public mProcessLruUpdater:Lcom/android/server/am/ProcessStateController$ProcessLruUpdater;

.field public mTopChangeCallback:Ljava/util/function/Consumer;


# direct methods
.method public static synthetic $r8$lambda$jtVSIVI0F1Z9Xb1v4dx0pO2AEEs(Lcom/android/server/am/ProcessRecord;)V
    .registers 1

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/am/OomAdjuster$Callback;)V
    .registers 6

    .line 1133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1126
    iput-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 1127
    iput-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mLock:Ljava/lang/Object;

    .line 1128
    iput-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mTopChangeCallback:Ljava/util/function/Consumer;

    .line 1129
    iput-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mProcessLruUpdater:Lcom/android/server/am/ProcessStateController$ProcessLruUpdater;

    .line 1130
    iput-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mOomAdjInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 1134
    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$Builder;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 1135
    iput-object p2, p0, Lcom/android/server/am/ProcessStateController$Builder;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1136
    iput-object p3, p0, Lcom/android/server/am/ProcessStateController$Builder;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 1137
    iput-object p4, p0, Lcom/android/server/am/ProcessStateController$Builder;->mOomAdjCallback:Lcom/android/server/am/OomAdjuster$Callback;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/am/ProcessStateController;
    .registers 14

    .line 1144
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-nez v0, :cond_a

    .line 1145
    invoke-static {}, Lcom/android/server/am/OomAdjuster;->createAdjusterThread()Lcom/android/server/ServiceThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 1147
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mLock:Ljava/lang/Object;

    if-nez v0, :cond_15

    .line 1148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mLock:Ljava/lang/Object;

    .line 1150
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mTopChangeCallback:Ljava/util/function/Consumer;

    if-nez v0, :cond_20

    .line 1151
    new-instance v0, Lcom/android/server/am/ProcessStateController$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/am/ProcessStateController$Builder$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mTopChangeCallback:Ljava/util/function/Consumer;

    .line 1153
    :cond_20
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mProcessLruUpdater:Lcom/android/server/am/ProcessStateController$ProcessLruUpdater;

    if-nez v0, :cond_2b

    .line 1155
    new-instance v0, Lcom/android/server/am/ProcessStateController$Builder$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessStateController$Builder$1;-><init>(Lcom/android/server/am/ProcessStateController$Builder;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mProcessLruUpdater:Lcom/android/server/am/ProcessStateController$ProcessLruUpdater;

    .line 1161
    :cond_2b
    iget-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mOomAdjInjector:Lcom/android/server/am/OomAdjuster$Injector;

    if-nez v0, :cond_36

    .line 1162
    new-instance v0, Lcom/android/server/am/OomAdjuster$Injector;

    invoke-direct {v0}, Lcom/android/server/am/OomAdjuster$Injector;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStateController$Builder;->mOomAdjInjector:Lcom/android/server/am/OomAdjuster$Injector;

    .line 1164
    :cond_36
    new-instance v1, Lcom/android/server/am/ProcessStateController;

    iget-object v2, p0, Lcom/android/server/am/ProcessStateController$Builder;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/ProcessStateController$Builder;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v4, p0, Lcom/android/server/am/ProcessStateController$Builder;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget-object v5, p0, Lcom/android/server/am/ProcessStateController$Builder;->mHandlerThread:Lcom/android/server/ServiceThread;

    iget-object v6, p0, Lcom/android/server/am/ProcessStateController$Builder;->mLock:Ljava/lang/Object;

    iget-object v7, v2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iget-object v8, p0, Lcom/android/server/am/ProcessStateController$Builder;->mTopChangeCallback:Ljava/util/function/Consumer;

    iget-object v9, p0, Lcom/android/server/am/ProcessStateController$Builder;->mProcessLruUpdater:Lcom/android/server/am/ProcessStateController$ProcessLruUpdater;

    iget-object v10, p0, Lcom/android/server/am/ProcessStateController$Builder;->mOomAdjInjector:Lcom/android/server/am/OomAdjuster$Injector;

    iget-object v11, p0, Lcom/android/server/am/ProcessStateController$Builder;->mOomAdjCallback:Lcom/android/server/am/OomAdjuster$Callback;

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/ProcessStateController;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/Consumer;Lcom/android/server/am/ProcessStateController$ProcessLruUpdater;Lcom/android/server/am/OomAdjuster$Injector;Lcom/android/server/am/OomAdjuster$Callback;Lcom/android/server/am/ProcessStateController-IA;)V

    return-object v1
.end method

.method public setHandlerThread(Lcom/android/server/ServiceThread;)Lcom/android/server/am/ProcessStateController$Builder;
    .registers 2

    .line 1174
    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$Builder;->mHandlerThread:Lcom/android/server/ServiceThread;

    return-object p0
.end method

.method public setLockObject(Ljava/lang/Object;)Lcom/android/server/am/ProcessStateController$Builder;
    .registers 2

    .line 1191
    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$Builder;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public setOomAdjusterInjector(Lcom/android/server/am/OomAdjuster$Injector;)Lcom/android/server/am/ProcessStateController$Builder;
    .registers 2

    .line 1183
    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$Builder;->mOomAdjInjector:Lcom/android/server/am/OomAdjuster$Injector;

    return-object p0
.end method

.method public setProcessLruUpdater(Lcom/android/server/am/ProcessStateController$ProcessLruUpdater;)Lcom/android/server/am/ProcessStateController$Builder;
    .registers 2

    .line 1209
    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$Builder;->mProcessLruUpdater:Lcom/android/server/am/ProcessStateController$ProcessLruUpdater;

    return-object p0
.end method

.method public setTopProcessChangeCallback(Ljava/util/function/Consumer;)Lcom/android/server/am/ProcessStateController$Builder;
    .registers 2

    .line 1200
    iput-object p1, p0, Lcom/android/server/am/ProcessStateController$Builder;->mTopChangeCallback:Ljava/util/function/Consumer;

    return-object p0
.end method
