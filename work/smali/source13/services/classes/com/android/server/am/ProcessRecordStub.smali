.class public interface abstract Lcom/android/server/am/ProcessRecordStub;
.super Ljava/lang/Object;
.source "ProcessRecordStub.java"


# direct methods
.method public static get()Lcom/android/server/am/ProcessRecordStub;
    .registers 1

    .line 14
    const-class v0, Lcom/android/server/am/ProcessRecordStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecordStub;

    return-object v0
.end method


# virtual methods
.method public abstract dumpPeriodHistoryMessage(Lcom/android/server/am/ProcessRecord;JIZ)V
.end method

.method public abstract onANR(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/String;Lcom/android/server/am/ScoutAnrInfo;)V
.end method

.method public abstract scoutAppCheckBinderCallChain(Ljava/lang/String;IILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/server/am/ScoutAnrInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/am/ScoutAnrInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract scoutAppCheckDumpKernelTrace(Ljava/lang/String;Lcom/android/server/am/ScoutAnrInfo;)V
.end method

.method public abstract scoutAppUpdateAnrInfo(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ScoutAnrInfo;)V
.end method

.method public abstract skipAppErrorDialog(Lcom/android/server/am/ProcessRecord;)Z
.end method

.method public abstract updateProcessForegroundLocked(Lcom/android/server/am/ProcessRecord;)V
.end method
