.class Lcom/android/server/storage/DeviceStorageMonitorService$State;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# static fields
.field private static final LEVEL_FULL:I = 0x2

.field private static final LEVEL_LOW:I = 0x1

.field private static final LEVEL_NORMAL:I = 0x0

.field private static final LEVEL_UNKNOWN:I = -0x1


# instance fields
.field public lastUsableBytes:J

.field public level:I


# direct methods
.method static bridge synthetic -$$Nest$smisEntering(III)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->isEntering(III)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisLeaving(III)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->isLeaving(III)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smlevelToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->levelToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .registers 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    .line 115
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService$State-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService$State;-><init>()V

    return-void
.end method

.method private static isEntering(III)Z
    .registers 4
    .param p0, "level"    # I
    .param p1, "oldLevel"    # I
    .param p2, "newLevel"    # I

    .line 125
    if-lt p2, p0, :cond_9

    if-lt p1, p0, :cond_7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    :cond_7
    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static isLeaving(III)Z
    .registers 4
    .param p0, "level"    # I
    .param p1, "oldLevel"    # I
    .param p2, "newLevel"    # I

    .line 136
    if-ge p2, p0, :cond_9

    if-ge p1, p0, :cond_7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    :cond_7
    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static levelToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "level"    # I

    .line 140
    packed-switch p0, :pswitch_data_14

    .line 145
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 144
    :pswitch_8
    const-string v0, "FULL"

    return-object v0

    .line 143
    :pswitch_b
    const-string v0, "LOW"

    return-object v0

    .line 142
    :pswitch_e
    const-string v0, "NORMAL"

    return-object v0

    .line 141
    :pswitch_11
    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_data_14
    .packed-switch -0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
