.class public Lcom/android/server/RuntimeService;
.super Landroid/os/Binder;
.source "RuntimeService.java"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/RuntimeService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static hasOption([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 71
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p0, v2

    .line 72
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method public static reportTimeZoneInfo(Lcom/android/i18n/timezone/DebugInfo;Ljava/io/PrintWriter;)V
    .registers 4

    .line 87
    const-string v0, "Core Library Debug Info: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/i18n/timezone/DebugInfo;->getDebugEntries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;

    .line 89
    invoke-virtual {v0}, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 90
    const-string v1, ": \""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 92
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    :cond_32
    return-void
.end method

.method public static reportTimeZoneInfoProto(Lcom/android/i18n/timezone/DebugInfo;Landroid/util/proto/ProtoOutputStream;)V
    .registers 8

    .line 104
    invoke-virtual {p0}, Lcom/android/i18n/timezone/DebugInfo;->getDebugEntries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;

    const-wide v1, 0x20b00000001L

    .line 105
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    const-wide v3, 0x10900000001L

    .line 106
    invoke-virtual {v0}, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v3, 0x10900000002L

    .line 107
    invoke-virtual {v0}, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 108
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_8

    :cond_39
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 48
    iget-object p0, p0, Lcom/android/server/RuntimeService;->mContext:Landroid/content/Context;

    const-string v0, "RuntimeService"

    invoke-static {p0, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_29

    .line 52
    :cond_b
    const-string p0, "--proto"

    invoke-static {p3, p0}, Lcom/android/server/RuntimeService;->hasOption([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .line 55
    invoke-static {}, Lcom/android/i18n/timezone/I18nModuleDebug;->getDebugInfo()Lcom/android/i18n/timezone/DebugInfo;

    move-result-object p3

    if-eqz p0, :cond_20

    .line 58
    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 59
    invoke-static {p3, p2}, Lcom/android/server/RuntimeService;->reportTimeZoneInfoProto(Lcom/android/i18n/timezone/DebugInfo;Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_24

    .line 61
    :cond_20
    invoke-static {p3, p2}, Lcom/android/server/RuntimeService;->reportTimeZoneInfo(Lcom/android/i18n/timezone/DebugInfo;Ljava/io/PrintWriter;)V

    const/4 p2, 0x0

    :goto_24
    if-eqz p0, :cond_29

    .line 65
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    :cond_29
    :goto_29
    return-void
.end method
