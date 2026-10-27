.class public Lcom/android/server/wm/MiuiMagicPointerServiceStubHead;
.super Ljava/lang/Object;
.source "MiuiMagicPointerServiceStubHead.java"


# annotations
.annotation runtime Lcom/miui/base/annotations/MiuiStubHead;
    classPath = "/system_ext/framework/miui-services-pointer-pad.jar"
    internal = true
    manifestName = "com.android.server.wm.MiuiMagicPointerServiceStubHeadManifest$$"
.end annotation


# static fields
.field private static ENABLED:Z = false

.field private static final TAG:Ljava/lang/String; = "MiuiMagicPointerServiceStubHead"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    const-string/jumbo v0, "ro.config.miui_activity_Magic_Point"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/MiuiMagicPointerServiceStubHead;->ENABLED:Z

    .line 27
    const-class v0, Lcom/android/server/wm/MiuiMagicPointerServiceStubHead;

    invoke-static {v0}, Lcom/miui/base/MiuiStubRegistry;->init(Ljava/lang/Class;)V

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/wm/MiuiMagicPointerServiceStubHead;
    .registers 1

    .line 30
    const-class v0, Lcom/android/server/wm/MiuiMagicPointerServiceStubHead;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiMagicPointerServiceStubHead;

    return-object v0
.end method

.method public static isMiuiMagicPointerEnable()Z
    .registers 1

    .line 33
    sget-boolean v0, Lcom/android/server/wm/MiuiMagicPointerServiceStubHead;->ENABLED:Z

    return v0
.end method


# virtual methods
.method public publishMiuiMagicPointerService()V
    .registers 1

    .line 38
    return-void
.end method
