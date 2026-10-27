.class public Lcom/android/server/storage/DeviceStorageMonitorService$State;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorService.java"


# instance fields
.field public lastUsableBytes:J

.field public level:I


# direct methods
.method public static bridge synthetic -$$Nest$smisEntering(III)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->isEntering(III)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisLeaving(III)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->isLeaving(III)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smlevelToString(I)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->levelToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    const-wide v0, 0x7fffffffffffffffL

    .line 115
    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService$State;-><init>()V

    return-void
.end method

.method public static isEntering(III)Z
    .registers 3

    .line 0
    if-lt p2, p0, :cond_9

    if-lt p1, p0, :cond_7

    const/4 p0, -0x1

    if-ne p1, p0, :cond_9

    :cond_7
    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static isLeaving(III)Z
    .registers 3

    .line 0
    if-ge p2, p0, :cond_9

    if-ge p1, p0, :cond_7

    const/4 p0, -0x1

    if-ne p1, p0, :cond_9

    :cond_7
    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static levelToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_19

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    .line 145
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 144
    :cond_10
    const-string p0, "FULL"

    return-object p0

    .line 143
    :cond_13
    const-string p0, "LOW"

    return-object p0

    .line 142
    :cond_16
    const-string p0, "NORMAL"

    return-object p0

    .line 141
    :cond_19
    const-string p0, "UNKNOWN"

    return-object p0
.end method
