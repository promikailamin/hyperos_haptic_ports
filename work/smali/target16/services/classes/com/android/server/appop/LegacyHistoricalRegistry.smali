.class public abstract Lcom/android/server/appop/LegacyHistoricalRegistry;
.super Ljava/lang/Object;
.source "LegacyHistoricalRegistry.java"

# interfaces
.implements Lcom/android/server/appop/HistoricalRegistryInterface;


# static fields
.field public static final DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

.field public static final KEEP_WTF_LOG:Z

.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 133
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->KEEP_WTF_LOG:Z

    .line 135
    const-class v0, Lcom/android/server/appop/LegacyHistoricalRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    .line 157
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/LegacyHistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    return-void
.end method

.method public static deleteHistoricalOpsDir()V
    .registers 1

    .line 891
    invoke-static {}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->-$$Nest$sfgetsHistoricalAppOpsDir()Lcom/android/internal/os/AtomicDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    return-void
.end method

.method public static historicalOpsDirExist()Z
    .registers 1

    .line 887
    invoke-static {}, Lcom/android/server/appop/LegacyHistoricalRegistry$Persistence;->-$$Nest$sfgetsHistoricalAppOpsDir()Lcom/android/internal/os/AtomicDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->exists()Z

    move-result v0

    return v0
.end method
