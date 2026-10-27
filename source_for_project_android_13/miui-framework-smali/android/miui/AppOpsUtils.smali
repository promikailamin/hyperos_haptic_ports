.class public Landroid/miui/AppOpsUtils;
.super Ljava/lang/Object;
.source "AppOpsUtils.java"


# static fields
.field public static final blacklist ACTION_ACCEPT:I = 0x3

.field public static final blacklist ACTION_DEFAULT:I = 0x0

.field public static final blacklist ACTION_PROMPT:I = 0x2

.field public static final blacklist ACTION_REJECT:I = 0x1

.field private static final blacklist AUTHORITY:Ljava/lang/String; = "com.lbe.security.miui.permmgr"

.field private static final blacklist CONTENT_URI:Landroid/net/Uri;

.field private static final blacklist EXTRA_ACTION:Ljava/lang/String; = "extra_action"

.field private static final blacklist EXTRA_FLAGS:Ljava/lang/String; = "extra_flags"

.field private static final blacklist EXTRA_PACKAGE:Ljava/lang/String; = "extra_package"

.field private static final blacklist EXTRA_PERMISSION:Ljava/lang/String; = "extra_permission"

.field public static final blacklist PERM_ID_NOTIFICATION:J = 0x8000L

.field public static final blacklist SET_APPLICATION_PERMISSION:I = 0x6

.field private static final blacklist TAG:Ljava/lang/String; = "AppOpsUtils"


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetCONTENT_URI()Landroid/net/Uri;
    .registers 1

    sget-object v0, Landroid/miui/AppOpsUtils;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 23
    const-string v0, "content://com.lbe.security.miui.permmgr"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/miui/AppOpsUtils;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 69
    const/4 v0, -0x1

    .line 71
    .local v0, "uid":I
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 72
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v1, p1, v2}, Landroid/content/pm/PackageManagerCompat;->getPackageUidAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I

    move-result v2
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_11} :catch_22

    move v0, v2

    .line 76
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    nop

    .line 78
    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 79
    .local v1, "aom":Landroid/app/AppOpsManager;
    const/16 v2, 0x2718

    invoke-virtual {v1, v2, v0, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    return v2

    .line 73
    .end local v1    # "aom":Landroid/app/AppOpsManager;
    :catch_22
    move-exception v1

    .line 74
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t obtain the uid for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppOpsUtils"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    const/4 v2, 0x1

    return v2
.end method

.method public static blacklist getApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 83
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 84
    .local v0, "aom":Landroid/app/AppOpsManager;
    const/16 v1, 0x2718

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static blacklist getApplicationSpecialBroadcast(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 93
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 94
    .local v0, "aom":Landroid/app/AppOpsManager;
    const/16 v1, 0x2717

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static blacklist isXOptMode()Z
    .registers 2

    .line 140
    nop

    .line 141
    const-string v0, "ro.miui.cts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "persist.sys.miui_optimization"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist noteApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 88
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 89
    .local v0, "aom":Landroid/app/AppOpsManager;
    const/16 v2, 0x2718

    const/4 v5, 0x0

    move-object v1, v0

    move v3, p2

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static blacklist setApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "autoStart"    # Z

    .line 56
    const/4 v0, -0x1

    .line 58
    .local v0, "uid":I
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 59
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v1, p1, v2}, Landroid/content/pm/PackageManagerCompat;->getPackageUidAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I

    move-result v2
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_11} :catch_26

    move v0, v2

    .line 63
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    nop

    .line 64
    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 65
    .local v1, "aom":Landroid/app/AppOpsManager;
    const/16 v2, 0x2718

    if-eqz p2, :cond_21

    const/4 v3, 0x0

    goto :goto_22

    :cond_21
    const/4 v3, 0x2

    :goto_22
    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 66
    return-void

    .line 60
    .end local v1    # "aom":Landroid/app/AppOpsManager;
    :catch_26
    move-exception v1

    .line 61
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t obtain the uid for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppOpsUtils"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    return-void
.end method

.method public static blacklist setMode(Landroid/content/Context;ILjava/lang/String;I)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .line 98
    const/16 v0, 0xb

    if-ne p1, v0, :cond_12

    .line 101
    new-instance v0, Landroid/miui/AppOpsUtils$1;

    invoke-direct {v0, p3, p2, p0}, Landroid/miui/AppOpsUtils$1;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/miui/AppOpsUtils$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 134
    return-void

    .line 99
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support code :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
