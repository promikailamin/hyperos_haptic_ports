.class public Lcom/android/server/appfunctions/ServiceConfigImpl;
.super Ljava/lang/Object;
.source "ServiceConfigImpl.java"

# interfaces
.implements Lcom/android/server/appfunctions/ServiceConfig;


# static fields
.field public static final DEFAULT_APP_FUNCTION_ACCESS_HISTORY_RETENTION_MILLIS:J

.field public static final DEFAULT_EXPIRED_APP_FUNCTION_HISTORIES_DELETION_INTERVAL_MILLIS:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x7

    .line 31
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appfunctions/ServiceConfigImpl;->DEFAULT_APP_FUNCTION_ACCESS_HISTORY_RETENTION_MILLIS:J

    const-wide/16 v0, 0x18

    .line 35
    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appfunctions/ServiceConfigImpl;->DEFAULT_EXPIRED_APP_FUNCTION_HISTORIES_DELETION_INTERVAL_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppFunctionAccessHistoryRetentionMillis()J
    .registers 4

    .line 47
    const-string p0, "app_function_access_history_retention_millis"

    sget-wide v0, Lcom/android/server/appfunctions/ServiceConfigImpl;->DEFAULT_APP_FUNCTION_ACCESS_HISTORY_RETENTION_MILLIS:J

    const-string v2, "appfunctions"

    invoke-static {v2, p0, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppFunctionExpiredAccessHistoryDeletionIntervalMillis()J
    .registers 4

    .line 55
    const-string p0, "app_function_expired_access_history_deletion_interval_millis"

    sget-wide v0, Lcom/android/server/appfunctions/ServiceConfigImpl;->DEFAULT_EXPIRED_APP_FUNCTION_HISTORIES_DELETION_INTERVAL_MILLIS:J

    const-string v2, "appfunctions"

    invoke-static {v2, p0, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExecuteAppFunctionCancellationTimeoutMillis()J
    .registers 4

    .line 39
    const-string p0, "execute_app_function_cancellation_timeout_millis"

    const-wide/16 v0, 0x1388

    const-string v2, "appfunctions"

    invoke-static {v2, p0, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
