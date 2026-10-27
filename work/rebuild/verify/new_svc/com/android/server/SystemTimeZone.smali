.class public abstract Lcom/android/server/SystemTimeZone;
.super Ljava/lang/Object;
.source "SystemTimeZone.java"


# static fields
.field public static final sTimeZoneDebugLog:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 81
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    sput-object v0, Lcom/android/server/SystemTimeZone;->sTimeZoneDebugLog:Landroid/util/LocalLog;

    return-void
.end method

.method public static addDebugLogEntry(Ljava/lang/String;)V
    .registers 2

    .line 106
    sget-object v0, Lcom/android/server/SystemTimeZone;->sTimeZoneDebugLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .registers 2

    .line 195
    sget-object v0, Lcom/android/server/SystemTimeZone;->sTimeZoneDebugLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static getTimeZoneConfidence()I
    .registers 3

    .line 178
    const-string/jumbo v0, "persist.sys.timezone_confidence"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 180
    invoke-static {v0}, Lcom/android/server/SystemTimeZone;->isValidTimeZoneConfidence(I)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    :cond_f
    return v0
.end method

.method public static getTimeZoneId()Ljava/lang/String;
    .registers 1

    .line 188
    const-string/jumbo v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initializeTimeZoneSettingsIfRequired()V
    .registers 3

    .line 90
    const-string/jumbo v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/android/server/SystemTimeZone;->isValidTimeZoneId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeTimeZoneSettingsIfRequired():persist.sys.timezone is not valid ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "); setting to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "GMT"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    const-string v2, "SystemTimeZone"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 96
    invoke-static {v0, v2, v1}, Lcom/android/server/SystemTimeZone;->setTimeZoneId(Ljava/lang/String;ILjava/lang/String;)Z

    :cond_31
    return-void
.end method

.method public static isValidTimeZoneConfidence(I)Z
    .registers 2

    .line 0
    if-ltz p0, :cond_8

    const/16 v0, 0x64

    if-gt p0, v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidTimeZoneId(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_14

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 205
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->hasTimeZone(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static setTimeZoneConfidence(I)Z
    .registers 2

    .line 163
    invoke-static {}, Lcom/android/server/SystemTimeZone;->getTimeZoneConfidence()I

    move-result v0

    if-eq v0, p0, :cond_12

    .line 165
    const-string/jumbo v0, "persist.sys.timezone_confidence"

    .line 166
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 165
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static setTimeZoneId(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 9

    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6b

    invoke-static {p0}, Lcom/android/server/SystemTimeZone;->isValidTimeZoneId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_6b

    .line 134
    :cond_e
    const-class v0, Lcom/android/server/SystemTimeZone;

    monitor-enter v0

    .line 135
    :try_start_11
    invoke-static {}, Lcom/android/server/SystemTimeZone;->getTimeZoneId()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {}, Lcom/android/server/SystemTimeZone;->getTimeZoneConfidence()I

    move-result v3

    if-eqz v2, :cond_24

    .line 137
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_69

    .line 138
    :cond_24
    :goto_24
    const-string/jumbo v1, "persist.sys.timezone"

    invoke-static {v1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 144
    :cond_2b
    invoke-static {p1}, Lcom/android/server/SystemTimeZone;->setTimeZoneConfidence(I)Z

    move-result v4

    if-nez v1, :cond_33

    if-eqz v4, :cond_67

    .line 146
    :cond_33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time zone or confidence set:  (new) timeZoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", (new) confidence="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", (old) timeZoneId="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", (old) confidence="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", logInfo="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 152
    invoke-static {p0}, Lcom/android/server/SystemTimeZone;->addDebugLogEntry(Ljava/lang/String;)V

    .line 154
    :cond_67
    monitor-exit v0

    return v1

    :goto_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_11 .. :try_end_6a} :catchall_22

    throw p0

    .line 126
    :cond_6b
    :goto_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTimeZoneId: Invalid time zone ID. timeZoneId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", confidence="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", logInfo="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/SystemTimeZone;->addDebugLogEntry(Ljava/lang/String;)V

    return v1
.end method
