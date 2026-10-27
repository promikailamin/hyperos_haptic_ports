.class public final Landroid/os/spc/PSIMonitorSetting;
.super Ljava/lang/Object;
.source "PSIMonitorSetting.java"


# static fields
.field public static final blacklist DEBUG:Z

.field public static final blacklist JANK_TYPE:I = 0x3e9

.field public static final blacklist MONITOR_CPU_SOME:I = 0x4

.field public static final blacklist MONITOR_IO_FULL:I = 0x3

.field public static final blacklist MONITOR_IO_SOME:I = 0x2

.field public static final blacklist MONITOR_MEMORY_FULL:I = 0x1

.field public static final blacklist MONITOR_MEMORY_SOME:I = 0x0

.field public static final blacklist MONITOR_TYPE_COUNT:I = 0x5

.field public static final blacklist PSI_CPU_NODE:Ljava/lang/String; = "/proc/pressure/cpu"

.field public static final blacklist PSI_IO_NODE:Ljava/lang/String; = "/proc/pressure/io"

.field public static final blacklist PSI_MEMORY_NODE:Ljava/lang/String; = "/proc/pressure/memory"

.field public static final blacklist PSI_MONITORS:[Landroid/os/spc/PSIMonitorSetting;

.field public static final blacklist TAG:Ljava/lang/String; = "SystemPressureControl"


# instance fields
.field public final blacklist id:I

.field public final blacklist monitorType:I

.field public final blacklist name:Ljava/lang/String;

.field public final blacklist thresholdMillis:J

.field public final blacklist windowMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 18

    .line 13
    sget-boolean v0, Landroid/os/spc/PressureStateSettings;->DEBUG_ALL:Z

    sput-boolean v0, Landroid/os/spc/PSIMonitorSetting;->DEBUG:Z

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/spc/PSIMonitorSetting;

    new-instance v9, Landroid/os/spc/PSIMonitorSetting;

    const/4 v2, 0x0

    const-string v3, "MEMORY_SOME"

    const/4 v4, 0x0

    const-wide/16 v5, 0x14

    const-wide/16 v7, 0x3e8

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/os/spc/PSIMonitorSetting;-><init>(ILjava/lang/String;IJJ)V

    const/4 v1, 0x0

    aput-object v9, v0, v1

    new-instance v1, Landroid/os/spc/PSIMonitorSetting;

    const/4 v11, 0x1

    const-string v12, "MEMORY_FULL"

    const/4 v13, 0x1

    const-wide/16 v14, 0x14

    const-wide/16 v16, 0x3e8

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Landroid/os/spc/PSIMonitorSetting;-><init>(ILjava/lang/String;IJJ)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Landroid/os/spc/PSIMonitorSetting;->PSI_MONITORS:[Landroid/os/spc/PSIMonitorSetting;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;IJJ)V
    .registers 8
    .param p1, "_id"    # I
    .param p2, "_name"    # Ljava/lang/String;
    .param p3, "_monitorType"    # I
    .param p4, "_thresholdMillis"    # J
    .param p6, "_windowMillis"    # J

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Landroid/os/spc/PSIMonitorSetting;->id:I

    .line 40
    iput-object p2, p0, Landroid/os/spc/PSIMonitorSetting;->name:Ljava/lang/String;

    .line 41
    iput p3, p0, Landroid/os/spc/PSIMonitorSetting;->monitorType:I

    .line 42
    iput-wide p4, p0, Landroid/os/spc/PSIMonitorSetting;->thresholdMillis:J

    .line 43
    iput-wide p6, p0, Landroid/os/spc/PSIMonitorSetting;->windowMillis:J

    .line 44
    return-void
.end method

.method public static blacklist getEventType(I)I
    .registers 3
    .param p0, "id"    # I

    .line 51
    sget-object v0, Landroid/os/spc/PSIMonitorSetting;->PSI_MONITORS:[Landroid/os/spc/PSIMonitorSetting;

    array-length v1, v0

    if-ge p0, v1, :cond_c

    if-ltz p0, :cond_c

    .line 52
    aget-object v0, v0, p0

    iget v0, v0, Landroid/os/spc/PSIMonitorSetting;->monitorType:I

    return v0

    .line 54
    :cond_c
    return p0
.end method

.method public static blacklist getTypeName(I)Ljava/lang/String;
    .registers 3
    .param p0, "id"    # I

    .line 59
    sget-object v0, Landroid/os/spc/PSIMonitorSetting;->PSI_MONITORS:[Landroid/os/spc/PSIMonitorSetting;

    array-length v1, v0

    if-ge p0, v1, :cond_c

    if-ltz p0, :cond_c

    .line 60
    aget-object v0, v0, p0

    iget-object v0, v0, Landroid/os/spc/PSIMonitorSetting;->name:Ljava/lang/String;

    return-object v0

    .line 62
    :cond_c
    packed-switch p0, :pswitch_data_16

    .line 66
    const-string v0, ""

    return-object v0

    .line 64
    :pswitch_12
    const-string v0, "JANK"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x3e9
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public blacklist generateMonitorCommand()Ljava/lang/String;
    .registers 6

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/os/spc/PSIMonitorSetting;->monitorType:I

    packed-switch v1, :pswitch_data_32

    .line 99
    const-string v1, ""

    return-object v1

    .line 96
    :pswitch_d
    const-string v1, "full "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    goto :goto_19

    .line 92
    :pswitch_13
    const-string v1, "some "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    nop

    .line 101
    :goto_19
    iget-wide v1, p0, Landroid/os/spc/PSIMonitorSetting;->thresholdMillis:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-wide v1, p0, Landroid/os/spc/PSIMonitorSetting;->windowMillis:J

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_13
        :pswitch_d
        :pswitch_13
        :pswitch_d
        :pswitch_13
    .end packed-switch
.end method

.method public blacklist getMonitorId()I
    .registers 2

    .line 47
    iget v0, p0, Landroid/os/spc/PSIMonitorSetting;->id:I

    return v0
.end method

.method public blacklist getPSINode()Ljava/lang/String;
    .registers 2

    .line 72
    iget v0, p0, Landroid/os/spc/PSIMonitorSetting;->monitorType:I

    packed-switch v0, :pswitch_data_12

    .line 82
    const-string v0, ""

    return-object v0

    .line 80
    :pswitch_8
    const-string v0, "/proc/pressure/cpu"

    return-object v0

    .line 78
    :pswitch_b
    const-string v0, "/proc/pressure/io"

    return-object v0

    .line 75
    :pswitch_e
    const-string v0, "/proc/pressure/memory"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_b
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
