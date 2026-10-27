.class public Lmiui/securitycenter/powercenter/HistoryItemWrapper;
.super Ljava/lang/Object;
.source "HistoryItemWrapper.java"


# static fields
.field static final blacklist CMD_CURRENT_TIME:B = 0x5t

.field static final blacklist CMD_NULL:B = -0x1t

.field static final blacklist CMD_OVERFLOW:B = 0x6t

.field static final blacklist CMD_RESET:B = 0x7t

.field static final blacklist CMD_SHUTDOWN:B = 0x8t

.field static final blacklist CMD_START:B = 0x4t

.field static final blacklist CMD_UPDATE:B


# instance fields
.field blacklist batteryHealth:B

.field blacklist batteryLevel:B

.field blacklist batteryPlugType:B

.field blacklist batteryStatus:B

.field blacklist batteryTemperature:S

.field blacklist batteryVoltage:C

.field blacklist charging:Z

.field blacklist cmd:B

.field blacklist cpuRunning:Z

.field blacklist gpsOn:Z

.field blacklist phoneSignalStrength:I

.field blacklist screenOn:Z

.field blacklist time:J

.field blacklist wakelockOn:Z

.field blacklist wifiOn:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, -0x1

    iput-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    return-void
.end method


# virtual methods
.method public whitelist getObjectValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 46
    const-string v0, "time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 47
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->time:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 49
    :cond_f
    const-string v0, "cmd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 50
    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 52
    :cond_1e
    const-string v0, "batteryLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 53
    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryLevel:B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 55
    :cond_2d
    const-string v0, "batteryStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 56
    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryStatus:B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 58
    :cond_3c
    const-string v0, "batteryHealth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 59
    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryHealth:B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 61
    :cond_4b
    const-string v0, "batteryPlugType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 62
    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryPlugType:B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 64
    :cond_5a
    const-string v0, "batteryTemperature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 65
    iget-short v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryTemperature:S

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 67
    :cond_69
    const-string v0, "batteryVoltage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 68
    iget-char v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryVoltage:C

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 70
    :cond_78
    const-string v0, "wifiOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 71
    iget-boolean v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->wifiOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 73
    :cond_87
    const-string v0, "gpsOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 74
    iget-boolean v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->gpsOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 76
    :cond_96
    const-string v0, "charging"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 77
    iget-boolean v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->charging:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 79
    :cond_a5
    const-string v0, "screenOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 80
    iget-boolean v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->screenOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 82
    :cond_b4
    const-string v0, "wakelockOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 83
    iget-boolean v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->wakelockOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 85
    :cond_c3
    const-string v0, "phoneSignalStrength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 86
    iget v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->phoneSignalStrength:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 88
    :cond_d2
    const-string v0, "cpuRunning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 89
    iget-boolean v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cpuRunning:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 91
    :cond_e1
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTime()J
    .registers 3

    .line 95
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->time:J

    return-wide v0
.end method

.method public whitelist isDeltaData()Z
    .registers 5

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-lt v0, v3, :cond_e

    .line 34
    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    if-nez v0, :cond_d

    move v1, v2

    :cond_d
    return v1

    .line 37
    :cond_e
    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    if-ne v0, v2, :cond_13

    move v1, v2

    :cond_13
    return v1
.end method

.method public whitelist isOverflow()Z
    .registers 3

    .line 42
    iget-byte v0, p0, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
