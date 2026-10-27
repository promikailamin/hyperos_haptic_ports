.class public Landroid/magicpointer/util/MiuiMagicPointerUtilsStubHead;
.super Ljava/lang/Object;
.source "MiuiMagicPointerUtilsStubHead.java"


# annotations
.annotation runtime Lcom/miui/base/annotations/MiuiStubHead;
    classPath = "/system_ext/framework/miui-framework-pointer-pad.jar"
    internal = true
    manifestName = "android.magicpointer.util.MiuiMagicPointerUtilsStubHeadManifest$$"
.end annotation


# static fields
.field private static blacklist ENABLED:Z

.field private static blacklist sInstance:Landroid/magicpointer/util/MiuiMagicPointerUtilsStubHead;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 17
    const-class v0, Landroid/magicpointer/util/MiuiMagicPointerUtilsStubHead;

    const-string v1, "ro.config.miui_activity_Magic_Point"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid/magicpointer/util/MiuiMagicPointerUtilsStubHead;->ENABLED:Z

    .line 22
    invoke-static {v0}, Lcom/miui/base/MiuiStubRegistry;->init(Ljava/lang/Class;)V

    .line 23
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/magicpointer/util/MiuiMagicPointerUtilsStubHead;

    sput-object v0, Landroid/magicpointer/util/MiuiMagicPointerUtilsStubHead;->sInstance:Landroid/magicpointer/util/MiuiMagicPointerUtilsStubHead;

    .line 24
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get()Landroid/magicpointer/util/MiuiMagicPointerUtilsStubHead;
    .registers 1

    .line 27
    sget-object v0, Landroid/magicpointer/util/MiuiMagicPointerUtilsStubHead;->sInstance:Landroid/magicpointer/util/MiuiMagicPointerUtilsStubHead;

    return-object v0
.end method

.method public static blacklist isMiuiMagicPointerEnabled()Z
    .registers 1

    .line 31
    sget-boolean v0, Landroid/magicpointer/util/MiuiMagicPointerUtilsStubHead;->ENABLED:Z

    return v0
.end method
