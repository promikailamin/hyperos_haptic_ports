.class public Lcom/android/server/pm/PackageManagerDebugUtils;
.super Ljava/lang/Object;
.source "PackageManagerDebugUtils.java"


# static fields
.field private static final DEBUG_ART_STATSLOG:Ljava/lang/String; = "DEBUG_ART_STATSLOG"

.field private static final DEBUG_BACKUP:Ljava/lang/String; = "DEBUG_BACKUP"

.field private static final DEBUG_DOMAIN_VERIFICATION:Ljava/lang/String; = "DEBUG_DOMAIN_VERIFICATION"

.field private static final DEBUG_INSTALL:Ljava/lang/String; = "DEBUG_INSTALL"

.field private static final DEBUG_INTENT_MATCHING:Ljava/lang/String; = "DEBUG_INTENT_MATCHING"

.field private static final DEBUG_PACKAGE_INFO:Ljava/lang/String; = "DEBUG_PACKAGE_INFO"

.field private static final DEBUG_PACKAGE_SCANNING:Ljava/lang/String; = "DEBUG_PACKAGE_SCANNING"

.field private static final DEBUG_PERMISSIONS:Ljava/lang/String; = "DEBUG_PERMISSIONS"

.field private static final DEBUG_PREFERRED:Ljava/lang/String; = "DEBUG_PREFERRED"

.field private static final DEBUG_PROP:Ljava/lang/String; = "persist.sys.pkms_debug"

.field private static final DEBUG_REMOVE:Ljava/lang/String; = "DEBUG_REMOVE"

.field private static final DEBUG_SETTINGS:Ljava/lang/String; = "DEBUG_SETTINGS"

.field private static final DEBUG_UPGRADE:Ljava/lang/String; = "DEBUG_UPGRADE"

.field private static final DEBUG_VERIFY:Ljava/lang/String; = "DEBUG_VERIFY"

.field private static final FLAG_DEBUG_ART_STATSLOG:I = 0x1000

.field private static final FLAG_DEBUG_BACKUP:I = 0x10

.field private static final FLAG_DEBUG_DOMAIN_VERIFICATION:I = 0x8

.field private static final FLAG_DEBUG_INSTALL:I = 0x20

.field private static final FLAG_DEBUG_INTENT_MATCHING:I = 0x100

.field private static final FLAG_DEBUG_PACKAGE_INFO:I = 0x80

.field private static final FLAG_DEBUG_PACKAGE_SCANNING:I = 0x200

.field private static final FLAG_DEBUG_PERMISSIONS:I = 0x800

.field private static final FLAG_DEBUG_PREFERRED:I = 0x2

.field private static final FLAG_DEBUG_REMOVE:I = 0x40

.field private static final FLAG_DEBUG_SETTINGS:I = 0x1

.field private static final FLAG_DEBUG_UPGRADE:I = 0x4

.field private static final FLAG_DEBUG_VERIFY:I = 0x400

.field private static final TAG:Ljava/lang/String; = "PackageManagerDebugUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpLogText(Ljava/io/PrintWriter;)V
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 123
    const-string v0, "PACKAGE MANAGER LOGGING (dumpsys package logging)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    new-instance v0, Landroid/util/Pair;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    const-string v4, "DEBUG_SETTINGS"

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerDebugUtils;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 126
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v4, "DEBUG_PREFERRED"

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerDebugUtils;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 127
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_UPGRADE:Z

    const-string v4, "DEBUG_UPGRADE"

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerDebugUtils;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 128
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    const-string v4, "DEBUG_DOMAIN_VERIFICATION"

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerDebugUtils;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 129
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    const-string v4, "DEBUG_BACKUP"

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerDebugUtils;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 130
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    const-string v4, "DEBUG_INSTALL"

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerDebugUtils;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 131
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    const-string v4, "DEBUG_REMOVE"

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerDebugUtils;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 132
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    const-string v4, "DEBUG_PACKAGE_INFO"

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerDebugUtils;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 133
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    const-string v4, "DEBUG_INTENT_MATCHING"

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerDebugUtils;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 134
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    const-string v4, "DEBUG_PACKAGE_SCANNING"

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerDebugUtils;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 135
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_VERIFY:Z

    const-string v4, "DEBUG_VERIFY"

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerDebugUtils;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 136
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    const-string v4, "DEBUG_PERMISSIONS"

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerDebugUtils;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 137
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_ART_STATSLOG:Z

    const-string v4, "DEBUG_ART_STATSLOG"

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerDebugUtils;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 138
    const-string v1, "Enabled log groups:"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 141
    const-string v1, "Disabled log groups:"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method private static generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;
    .registers 7
    .param p0, "enabled"    # Ljava/lang/String;
    .param p1, "disabled"    # Ljava/lang/String;
    .param p2, "config"    # Z
    .param p3, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    const-string v0, " "

    if-eqz p2, :cond_2f

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object v0, p3

    goto :goto_26

    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_59

    .line 149
    :cond_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    move-object v0, p3

    goto :goto_51

    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 151
    :goto_59
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static initPackageManagerDebugState()V
    .registers 4

    .line 46
    const-string/jumbo v0, "persist.sys.pkms_debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 47
    .local v0, "debug":I
    if-nez v0, :cond_b

    return-void

    .line 48
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initPackageManagerDebugState debug: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManagerDebugUtils"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_2a

    move v2, v3

    goto :goto_2b

    :cond_2a
    move v2, v1

    :goto_2b
    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    .line 50
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_33

    move v2, v3

    goto :goto_34

    :cond_33
    move v2, v1

    :goto_34
    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    .line 51
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_3c

    move v2, v3

    goto :goto_3d

    :cond_3c
    move v2, v1

    :goto_3d
    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_UPGRADE:Z

    .line 52
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_45

    move v2, v3

    goto :goto_46

    :cond_45
    move v2, v1

    :goto_46
    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    .line 53
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_4e

    move v2, v3

    goto :goto_4f

    :cond_4e
    move v2, v1

    :goto_4f
    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    .line 54
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_57

    move v2, v3

    goto :goto_58

    :cond_57
    move v2, v1

    :goto_58
    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    .line 55
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_60

    move v2, v3

    goto :goto_61

    :cond_60
    move v2, v1

    :goto_61
    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    .line 56
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_69

    move v2, v3

    goto :goto_6a

    :cond_69
    move v2, v1

    :goto_6a
    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    .line 57
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_72

    move v2, v3

    goto :goto_73

    :cond_72
    move v2, v1

    :goto_73
    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    .line 58
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_7b

    move v2, v3

    goto :goto_7c

    :cond_7b
    move v2, v1

    :goto_7c
    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    .line 59
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_84

    move v2, v3

    goto :goto_85

    :cond_84
    move v2, v1

    :goto_85
    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_VERIFY:Z

    .line 60
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_8d

    move v2, v3

    goto :goto_8e

    :cond_8d
    move v2, v1

    :goto_8e
    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    .line 61
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_95

    move v1, v3

    :cond_95
    sput-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_ART_STATSLOG:Z

    .line 62
    return-void
.end method

.method public static updatePackageManagerDebugState(Ljava/lang/String;Z)Z
    .registers 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "enable"    # Z

    .line 65
    const-string/jumbo v0, "persist.sys.pkms_debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 66
    .local v1, "debug":I
    const/4 v2, 0x0

    .line 67
    .local v2, "flag":I
    const-string v3, "DEBUG_SETTINGS"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1c

    .line 68
    if-eqz p1, :cond_16

    move v3, v4

    goto :goto_17

    :cond_16
    const/4 v3, -0x2

    :goto_17
    move v2, v3

    .line 69
    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    goto/16 :goto_102

    .line 70
    :cond_1c
    const-string v3, "DEBUG_PREFERRED"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 71
    if-eqz p1, :cond_28

    const/4 v3, 0x2

    goto :goto_29

    :cond_28
    const/4 v3, -0x3

    :goto_29
    move v2, v3

    .line 72
    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    goto/16 :goto_102

    .line 73
    :cond_2e
    const-string v3, "DEBUG_UPGRADE"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 74
    if-eqz p1, :cond_3a

    const/4 v3, 0x4

    goto :goto_3b

    :cond_3a
    const/4 v3, -0x5

    :goto_3b
    move v2, v3

    .line 75
    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_UPGRADE:Z

    goto/16 :goto_102

    .line 76
    :cond_40
    const-string v3, "DEBUG_DOMAIN_VERIFICATION"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 77
    if-eqz p1, :cond_4d

    const/16 v3, 0x8

    goto :goto_4f

    :cond_4d
    const/16 v3, -0x9

    :goto_4f
    move v2, v3

    .line 78
    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    goto/16 :goto_102

    .line 79
    :cond_54
    const-string v3, "DEBUG_BACKUP"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 80
    if-eqz p1, :cond_61

    const/16 v3, 0x10

    goto :goto_63

    :cond_61
    const/16 v3, -0x11

    :goto_63
    move v2, v3

    .line 81
    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    goto/16 :goto_102

    .line 82
    :cond_68
    const-string v3, "DEBUG_INSTALL"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 83
    if-eqz p1, :cond_75

    const/16 v3, 0x20

    goto :goto_77

    :cond_75
    const/16 v3, -0x21

    :goto_77
    move v2, v3

    .line 84
    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    goto/16 :goto_102

    .line 85
    :cond_7c
    const-string v3, "DEBUG_REMOVE"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 86
    if-eqz p1, :cond_89

    const/16 v3, 0x40

    goto :goto_8b

    :cond_89
    const/16 v3, -0x41

    :goto_8b
    move v2, v3

    .line 87
    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    goto/16 :goto_102

    .line 88
    :cond_90
    const-string v3, "DEBUG_PACKAGE_INFO"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 89
    if-eqz p1, :cond_9d

    const/16 v3, 0x80

    goto :goto_9f

    :cond_9d
    const/16 v3, -0x81

    :goto_9f
    move v2, v3

    .line 90
    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    goto/16 :goto_102

    .line 91
    :cond_a4
    const-string v3, "DEBUG_INTENT_MATCHING"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    .line 92
    if-eqz p1, :cond_b1

    const/16 v3, 0x100

    goto :goto_b3

    :cond_b1
    const/16 v3, -0x101

    :goto_b3
    move v2, v3

    .line 93
    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    goto :goto_102

    .line 94
    :cond_b7
    const-string v3, "DEBUG_PACKAGE_SCANNING"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 95
    if-eqz p1, :cond_c4

    const/16 v3, 0x200

    goto :goto_c6

    :cond_c4
    const/16 v3, -0x201

    :goto_c6
    move v2, v3

    .line 96
    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    goto :goto_102

    .line 97
    :cond_ca
    const-string v3, "DEBUG_VERIFY"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dd

    .line 98
    if-eqz p1, :cond_d7

    const/16 v3, 0x400

    goto :goto_d9

    :cond_d7
    const/16 v3, -0x401

    :goto_d9
    move v2, v3

    .line 99
    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_VERIFY:Z

    goto :goto_102

    .line 100
    :cond_dd
    const-string v3, "DEBUG_PERMISSIONS"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f0

    .line 101
    if-eqz p1, :cond_ea

    const/16 v3, 0x800

    goto :goto_ec

    :cond_ea
    const/16 v3, -0x801

    :goto_ec
    move v2, v3

    .line 102
    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    goto :goto_102

    .line 103
    :cond_f0
    const-string v3, "DEBUG_ART_STATSLOG"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_102

    .line 104
    if-eqz p1, :cond_fd

    const/16 v3, 0x1000

    goto :goto_ff

    :cond_fd
    const/16 v3, -0x1001

    :goto_ff
    move v2, v3

    .line 105
    sput-boolean p1, Lcom/android/server/pm/PackageManagerService;->DEBUG_ART_STATSLOG:Z

    .line 107
    :cond_102
    :goto_102
    if-eqz p1, :cond_106

    .line 108
    or-int/2addr v1, v2

    goto :goto_107

    .line 110
    :cond_106
    and-int/2addr v1, v2

    .line 112
    :goto_107
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 113
    .local v5, "identity":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updatePackageManagerDebugState debug: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "PackageManagerDebugUtils"

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :try_start_124
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12b
    .catchall {:try_start_124 .. :try_end_12b} :catchall_130

    .line 117
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    nop

    .line 119
    return v4

    .line 117
    :catchall_130
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    throw v0
.end method
