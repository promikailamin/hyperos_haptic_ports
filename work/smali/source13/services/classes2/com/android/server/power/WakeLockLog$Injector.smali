.class public Lcom/android/server/power/WakeLockLog$Injector;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WakeLockLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentTimeMillis()J
    .registers 3

    .line 1313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateFormat()Ljava/text/SimpleDateFormat;
    .registers 2

    .line 1317
    invoke-static {}, Lcom/android/server/power/WakeLockLog;->-$$Nest$sfgetDATE_FORMAT()Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public getLogSize()I
    .registers 2

    .line 1309
    const/16 v0, 0x2800

    return v0
.end method

.method public getTagDatabaseSize()I
    .registers 2

    .line 1305
    const/16 v0, 0x80

    return v0
.end method
