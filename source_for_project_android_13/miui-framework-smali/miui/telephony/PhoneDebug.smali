.class public Lmiui/telephony/PhoneDebug;
.super Ljava/lang/Object;
.source "PhoneDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/PhoneDebug$Listener;
    }
.end annotation


# static fields
.field public static final whitelist PHONE_DEBUG_FLAG:Ljava/lang/String; = "phone_debug_flag"

.field public static whitelist VDBG:Z

.field private static blacklist sListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/telephony/PhoneDebug$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsListeners()Ljava/util/List;
    .registers 1

    sget-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smregister()V
    .registers 0

    invoke-static {}, Lmiui/telephony/PhoneDebug;->register()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/telephony/PhoneDebug;->VDBG:Z

    .line 20
    const/4 v1, 0x0

    sput-object v1, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    .line 28
    :try_start_6
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 29
    .local v1, "context":Landroid/content/Context;
    const-string v2, "android"

    invoke-static {v1}, Lmiui/telephony/PhoneDebug;->getOpPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 30
    const v2, 0xea60

    invoke-static {v2}, Lmiui/telephony/PhoneDebug;->registerDelay(I)V

    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone_debug_flag"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_31

    const-string v2, "debug.miui.phone"

    .line 32
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_32

    :cond_31
    move v0, v3

    :cond_32
    sput-boolean v0, Lmiui/telephony/PhoneDebug;->VDBG:Z

    goto :goto_38

    .line 34
    :cond_35
    invoke-static {}, Lmiui/telephony/PhoneDebug;->register()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_38} :catch_39

    .line 38
    .end local v1    # "context":Landroid/content/Context;
    :goto_38
    goto :goto_52

    .line 36
    :catch_39
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneDebug"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_52
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist addListener(Lmiui/telephony/PhoneDebug$Listener;)Lmiui/telephony/PhoneDebug$Listener;
    .registers 3
    .param p0, "listener"    # Lmiui/telephony/PhoneDebug$Listener;

    .line 44
    sget-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    if-nez v0, :cond_c

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    .line 47
    :cond_c
    if-eqz p0, :cond_1e

    sget-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 48
    sget-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-interface {p0}, Lmiui/telephony/PhoneDebug$Listener;->onDebugChanged()V

    .line 51
    :cond_1e
    return-object p0
.end method

.method private static blacklist getOpPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist register()V
    .registers 5

    .line 81
    const-string v0, "phone_debug_flag"

    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 82
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1c

    const-string v3, "debug.miui.phone"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_1c

    :cond_1b
    move v4, v2

    :cond_1c
    :goto_1c
    sput-boolean v4, Lmiui/telephony/PhoneDebug;->VDBG:Z

    .line 83
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Lmiui/telephony/PhoneDebug$2;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1}, Lmiui/telephony/PhoneDebug$2;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_2c

    .line 97
    .end local v1    # "cr":Landroid/content/ContentResolver;
    goto :goto_45

    .line 95
    :catch_2c
    move-exception v0

    .line 96
    .local v0, "te":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneDebug"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v0    # "te":Ljava/lang/Exception;
    :goto_45
    return-void
.end method

.method private static blacklist registerDelay(I)V
    .registers 3
    .param p0, "time"    # I

    .line 64
    sget-boolean v0, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-eqz v0, :cond_b

    const-string v0, "PhoneDebug"

    const-string v1, "registerDelay"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_b
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmiui/telephony/PhoneDebug$1;

    invoke-direct {v1, p0}, Lmiui/telephony/PhoneDebug$1;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
    return-void
.end method

.method public static whitelist removeListener(Lmiui/telephony/PhoneDebug$Listener;)V
    .registers 2
    .param p0, "listener"    # Lmiui/telephony/PhoneDebug$Listener;

    .line 55
    sget-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    if-eqz v0, :cond_14

    if-eqz p0, :cond_14

    .line 56
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 58
    const/4 v0, 0x0

    sput-object v0, Lmiui/telephony/PhoneDebug;->sListeners:Ljava/util/List;

    .line 61
    :cond_14
    return-void
.end method
