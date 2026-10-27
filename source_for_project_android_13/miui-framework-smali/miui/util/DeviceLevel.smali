.class public Lmiui/util/DeviceLevel;
.super Ljava/lang/Object;
.source "DeviceLevel.java"


# static fields
.field public static blacklist CPU:I = 0x0

.field public static final blacklist DEV_STANDARD_VER:I = 0x1

.field public static blacklist GPU:I = 0x0

.field public static blacklist HIGH:I = 0x0

.field public static blacklist IS_MIUI_GO_VERSION:Z = false

.field public static blacklist IS_MIUI_LITE_VERSION:Z = false

.field public static blacklist IS_MIUI_MIDDLE_VERSION:Z = false

.field public static blacklist LOW:I = 0x0

.field public static blacklist MIDDLE:I = 0x0

.field private static final blacklist PERFORMANCE_CLASS:Ljava/lang/String; = "com.miui.performance.DeviceLevelUtils"

.field private static final blacklist PERFORMANCE_JAR:Ljava/lang/String; = "/system/framework/MiuiBooster.jar"

.field public static blacklist RAM:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "DeviceLevel"

.field public static blacklist TOTAL_RAM:I

.field public static blacklist UNKNOWN:I

.field private static blacklist application:Landroid/app/Application;

.field private static blacklist applicationContext:Landroid/content/Context;

.field private static blacklist mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mGetDeviceLevel:Ljava/lang/reflect/Method;

.field private static blacklist mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

.field private static blacklist mGetMiuiLiteVersion:Ljava/lang/reflect/Method;

.field private static blacklist mGetMiuiMiddleVersion:Ljava/lang/reflect/Method;

.field private static blacklist mInitDeviceLevel:Ljava/lang/reflect/Method;

.field private static blacklist mIsSupportPrune:Ljava/lang/reflect/Method;

.field private static blacklist mPerf:Ljava/lang/Object;

.field private static blacklist perfClass:Ljava/lang/Class;

.field private static blacklist perfClassLoader:Ldalvik/system/PathClassLoader;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 8

    .line 22
    const-string v0, "getDeviceLevel"

    const-string v1, "DeviceLevel"

    const/4 v2, 0x0

    sput-object v2, Lmiui/util/DeviceLevel;->mInitDeviceLevel:Ljava/lang/reflect/Method;

    .line 23
    sput-object v2, Lmiui/util/DeviceLevel;->mGetDeviceLevel:Ljava/lang/reflect/Method;

    .line 24
    sput-object v2, Lmiui/util/DeviceLevel;->mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

    .line 25
    sput-object v2, Lmiui/util/DeviceLevel;->mIsSupportPrune:Ljava/lang/reflect/Method;

    .line 26
    sput-object v2, Lmiui/util/DeviceLevel;->mGetMiuiLiteVersion:Ljava/lang/reflect/Method;

    .line 27
    sput-object v2, Lmiui/util/DeviceLevel;->mGetMiuiMiddleVersion:Ljava/lang/reflect/Method;

    .line 32
    sput-object v2, Lmiui/util/DeviceLevel;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 33
    sput-object v2, Lmiui/util/DeviceLevel;->mPerf:Ljava/lang/Object;

    .line 46
    const/4 v3, 0x0

    sput-boolean v3, Lmiui/util/DeviceLevel;->IS_MIUI_LITE_VERSION:Z

    .line 48
    sput-boolean v3, Lmiui/util/DeviceLevel;->IS_MIUI_MIDDLE_VERSION:Z

    .line 56
    const/4 v4, 0x1

    :try_start_1b
    new-instance v5, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/MiuiBooster.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v5, Lmiui/util/DeviceLevel;->perfClassLoader:Ldalvik/system/PathClassLoader;

    .line 57
    const-string v6, "com.miui.performance.DeviceLevelUtils"

    invoke-virtual {v5, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lmiui/util/DeviceLevel;->perfClass:Ljava/lang/Class;

    .line 58
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    sput-object v5, Lmiui/util/DeviceLevel;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 61
    sget-object v5, Lmiui/util/DeviceLevel;->perfClass:Ljava/lang/Class;

    const-string v6, "initDeviceLevel"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lmiui/util/DeviceLevel;->mInitDeviceLevel:Ljava/lang/reflect/Method;

    .line 64
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    .line 65
    .local v5, "argClasses":[Ljava/lang/Class;
    sget-object v6, Lmiui/util/DeviceLevel;->perfClass:Ljava/lang/Class;

    invoke-virtual {v6, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lmiui/util/DeviceLevel;->mGetDeviceLevel:Ljava/lang/reflect/Method;

    .line 67
    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    move-object v5, v6

    .line 68
    sget-object v6, Lmiui/util/DeviceLevel;->perfClass:Ljava/lang/Class;

    invoke-virtual {v6, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiui/util/DeviceLevel;->mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

    .line 71
    sget-object v0, Lmiui/util/DeviceLevel;->perfClass:Ljava/lang/Class;

    const-string v6, "isSupportPrune"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiui/util/DeviceLevel;->mIsSupportPrune:Ljava/lang/reflect/Method;

    .line 74
    sget-object v0, Lmiui/util/DeviceLevel;->perfClass:Ljava/lang/Class;

    const-string v6, "DEVICE_LEVEL_FOR_RAM"

    invoke-static {v0, v6}, Lmiui/util/DeviceLevel;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lmiui/util/DeviceLevel;->RAM:I

    .line 75
    sget-object v0, Lmiui/util/DeviceLevel;->perfClass:Ljava/lang/Class;

    const-string v6, "DEVICE_LEVEL_FOR_CPU"

    invoke-static {v0, v6}, Lmiui/util/DeviceLevel;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lmiui/util/DeviceLevel;->CPU:I

    .line 76
    sget-object v0, Lmiui/util/DeviceLevel;->perfClass:Ljava/lang/Class;

    const-string v6, "DEVICE_LEVEL_FOR_GPU"

    invoke-static {v0, v6}, Lmiui/util/DeviceLevel;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lmiui/util/DeviceLevel;->GPU:I

    .line 79
    sget-object v0, Lmiui/util/DeviceLevel;->perfClass:Ljava/lang/Class;

    const-string v6, "LOW_DEVICE"

    invoke-static {v0, v6}, Lmiui/util/DeviceLevel;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lmiui/util/DeviceLevel;->LOW:I

    .line 80
    sget-object v0, Lmiui/util/DeviceLevel;->perfClass:Ljava/lang/Class;

    const-string v6, "MIDDLE_DEVICE"

    invoke-static {v0, v6}, Lmiui/util/DeviceLevel;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lmiui/util/DeviceLevel;->MIDDLE:I

    .line 81
    sget-object v0, Lmiui/util/DeviceLevel;->perfClass:Ljava/lang/Class;

    const-string v6, "HIGH_DEVICE"

    invoke-static {v0, v6}, Lmiui/util/DeviceLevel;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lmiui/util/DeviceLevel;->HIGH:I

    .line 82
    sget-object v0, Lmiui/util/DeviceLevel;->perfClass:Ljava/lang/Class;

    const-string v6, "DEVICE_LEVEL_UNKNOWN"

    invoke-static {v0, v6}, Lmiui/util/DeviceLevel;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lmiui/util/DeviceLevel;->UNKNOWN:I

    .line 85
    sget-object v0, Lmiui/util/DeviceLevel;->perfClass:Ljava/lang/Class;

    const-string v6, "IS_MIUI_LITE_VERSION"

    invoke-static {v0, v6}, Lmiui/util/DeviceLevel;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lmiui/util/DeviceLevel;->IS_MIUI_LITE_VERSION:Z

    .line 88
    sget-object v0, Lmiui/util/DeviceLevel;->perfClass:Ljava/lang/Class;

    const-string v6, "IS_MIUI_GO_VERSION"

    invoke-static {v0, v6}, Lmiui/util/DeviceLevel;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lmiui/util/DeviceLevel;->IS_MIUI_GO_VERSION:Z

    .line 91
    sget-object v0, Lmiui/util/DeviceLevel;->perfClass:Ljava/lang/Class;

    const-string v6, "TOTAL_RAM"

    invoke-static {v0, v6}, Lmiui/util/DeviceLevel;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lmiui/util/DeviceLevel;->TOTAL_RAM:I

    .line 94
    sget-object v0, Lmiui/util/DeviceLevel;->perfClass:Ljava/lang/Class;

    const-string v6, "getMiuiLiteVersion"

    new-array v7, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiui/util/DeviceLevel;->mGetMiuiLiteVersion:Ljava/lang/reflect/Method;
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_122} :catch_123

    .line 98
    .end local v5    # "argClasses":[Ljava/lang/Class;
    goto :goto_13a

    .line 96
    :catch_123
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MiDeviceLevelBridge(): Load Class Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_13a
    sget-object v0, Lmiui/util/DeviceLevel;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_177

    .line 102
    :try_start_13e
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v5, "currentApplication"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v5, v2

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sput-object v0, Lmiui/util/DeviceLevel;->application:Landroid/app/Application;

    .line 103
    if-eqz v0, :cond_15f

    .line 104
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lmiui/util/DeviceLevel;->applicationContext:Landroid/content/Context;
    :try_end_15f
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_15f} :catch_160

    .line 108
    :cond_15f
    goto :goto_177

    .line 106
    :catch_160
    move-exception v0

    .line 107
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android.app.ActivityThread Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_177
    :goto_177
    sget-object v0, Lmiui/util/DeviceLevel;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_1b4

    .line 113
    :try_start_17b
    const-string v0, "android.app.AppGlobals"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v5, "getInitialApplication"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v5, v2

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sput-object v0, Lmiui/util/DeviceLevel;->application:Landroid/app/Application;

    .line 114
    if-eqz v0, :cond_19c

    .line 115
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lmiui/util/DeviceLevel;->applicationContext:Landroid/content/Context;
    :try_end_19c
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_19c} :catch_19d

    .line 119
    :cond_19c
    goto :goto_1b4

    .line 117
    :catch_19d
    move-exception v0

    .line 118
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.app.AppGlobals Exception:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1b4
    :goto_1b4
    :try_start_1b4
    sget-object v0, Lmiui/util/DeviceLevel;->mConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1c4

    .line 124
    new-array v2, v4, [Ljava/lang/Object;

    sget-object v4, Lmiui/util/DeviceLevel;->applicationContext:Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lmiui/util/DeviceLevel;->mPerf:Ljava/lang/Object;
    :try_end_1c4
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_1c4} :catch_1c5

    .line 129
    :cond_1c4
    goto :goto_1df

    .line 126
    :catch_1c5
    move-exception v0

    .line 127
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceLevelUtils(): newInstance Exception:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1df
    :try_start_1df
    sget-object v0, Lmiui/util/DeviceLevel;->perfClass:Ljava/lang/Class;

    const-string v2, "IS_MIUI_MIDDLE_VERSION"

    invoke-static {v0, v2}, Lmiui/util/DeviceLevel;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lmiui/util/DeviceLevel;->IS_MIUI_MIDDLE_VERSION:Z

    .line 136
    sget-object v0, Lmiui/util/DeviceLevel;->perfClass:Ljava/lang/Class;

    const-string v2, "getMiuiMiddleVersion"

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lmiui/util/DeviceLevel;->mGetMiuiMiddleVersion:Ljava/lang/reflect/Method;
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_1fb} :catch_1fc

    .line 141
    goto :goto_216

    .line 138
    :catch_1fc
    move-exception v0

    .line 139
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MiDeviceLevelBridge(): Load Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_216
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    return-void
.end method

.method public static blacklist getDeviceLevel(I)I
    .registers 7
    .param p0, "version"    # I

    .line 168
    const/4 v0, -0x1

    .line 170
    .local v0, "ret":I
    :try_start_1
    sget-object v1, Lmiui/util/DeviceLevel;->mGetDeviceLevelForWhole:Ljava/lang/reflect/Method;

    sget-object v2, Lmiui/util/DeviceLevel;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 171
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1c

    move v0, v2

    .line 174
    .end local v1    # "retVal":Ljava/lang/Object;
    goto :goto_39

    .line 172
    :catch_1c
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceLevel failed , e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceLevel"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_39
    return v0
.end method

.method public static blacklist getDeviceLevel(II)I
    .registers 8
    .param p0, "version"    # I
    .param p1, "type"    # I

    .line 157
    const/4 v0, -0x1

    .line 159
    .local v0, "ret":I
    :try_start_1
    sget-object v1, Lmiui/util/DeviceLevel;->mGetDeviceLevel:Ljava/lang/reflect/Method;

    sget-object v2, Lmiui/util/DeviceLevel;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 160
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_23

    move v0, v2

    .line 163
    .end local v1    # "retVal":Ljava/lang/Object;
    goto :goto_40

    .line 161
    :catch_23
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceLevel failed , e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceLevel"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_40
    return v0
.end method

.method public static blacklist getMiuiLiteVersion()I
    .registers 4

    .line 179
    const/4 v0, -0x1

    .line 181
    .local v0, "ret":I
    :try_start_1
    sget-object v1, Lmiui/util/DeviceLevel;->mGetMiuiLiteVersion:Ljava/lang/reflect/Method;

    sget-object v2, Lmiui/util/DeviceLevel;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 182
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_15

    move v0, v2

    .line 185
    .end local v1    # "retVal":Ljava/lang/Object;
    goto :goto_32

    .line 183
    :catch_15
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMiuiLiteVersion failed , e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceLevel"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_32
    return v0
.end method

.method public static blacklist getMiuiMiddleVersion()I
    .registers 4

    .line 190
    const/4 v0, -0x1

    .line 192
    .local v0, "ret":I
    :try_start_1
    sget-object v1, Lmiui/util/DeviceLevel;->mGetMiuiMiddleVersion:Ljava/lang/reflect/Method;

    sget-object v2, Lmiui/util/DeviceLevel;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 193
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_15

    move v0, v2

    .line 196
    .end local v1    # "retVal":Ljava/lang/Object;
    goto :goto_32

    .line 194
    :catch_15
    move-exception v1

    .line 195
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMiuiMiddleVersion failed , e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceLevel"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_32
    return v0
.end method

.method private static blacklist getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 213
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 214
    .local v0, "declaredField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 215
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist initDeviceLevel()V
    .registers 3

    .line 150
    :try_start_0
    sget-object v0, Lmiui/util/DeviceLevel;->mInitDeviceLevel:Ljava/lang/reflect/Method;

    sget-object v1, Lmiui/util/DeviceLevel;->mPerf:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 153
    goto :goto_28

    .line 151
    :catch_b
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDeviceLevel failed , e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceLevel"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_28
    return-void
.end method

.method public static blacklist isSupportPrune()Z
    .registers 4

    .line 201
    const/4 v0, 0x0

    .line 203
    .local v0, "isSupport":Z
    :try_start_1
    sget-object v1, Lmiui/util/DeviceLevel;->mIsSupportPrune:Ljava/lang/reflect/Method;

    sget-object v2, Lmiui/util/DeviceLevel;->mPerf:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 204
    .local v1, "retVal":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_15

    move v0, v2

    .line 207
    .end local v1    # "retVal":Ljava/lang/Object;
    goto :goto_32

    .line 205
    :catch_15
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportPrune failed , e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceLevel"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_32
    return v0
.end method
