.class public interface abstract Lcom/android/server/appop/HistoricalRegistryInterface;
.super Ljava/lang/Object;
.source "HistoricalRegistryInterface.java"


# virtual methods
.method public abstract addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
.end method

.method public abstract clearAllHistory()V
.end method

.method public abstract clearHistory(ILjava/lang/String;)V
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;ZIZ)V
.end method

.method public abstract getHistoricalOps(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJJI[Ljava/lang/String;Landroid/os/RemoteCallback;)V
.end method

.method public abstract getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJJI[Ljava/lang/String;Landroid/os/RemoteCallback;)V
.end method

.method public abstract getRecentlyUsedPackageNames([Ljava/lang/String;IIJJI)Landroid/util/ArraySet;
.end method

.method public abstract increaseOpAccessDuration(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJII)V
.end method

.method public abstract incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIIZ)V
.end method

.method public abstract incrementOpRejectedCount(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJI)V
.end method

.method public abstract offsetDiscreteHistory(J)V
.end method

.method public abstract offsetHistory(J)V
.end method

.method public abstract persistPendingHistory()V
.end method

.method public abstract resetHistoryParameters()V
.end method

.method public abstract setHistoryParameters(IJJ)V
.end method

.method public abstract shutdown()V
.end method

.method public abstract systemReady(Landroid/content/ContentResolver;)V
.end method

.method public abstract writeAndClearDiscreteHistory()V
.end method
