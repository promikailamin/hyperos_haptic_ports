.class public interface abstract Lcom/android/server/am/MiuiBoosterUtilsStub;
.super Ljava/lang/Object;
.source "MiuiBoosterUtilsStub.java"


# static fields
.field public static final COLD_LAUNCH_ATT_RT_DURATION_MS:I = 0x7d0

.field public static final ENABLE_MIUIBOOSTER_FLOATING_WINDOW:Z

.field public static final FLOATING_WINDOW_RT_DURATION_MS:I = 0x190

.field public static final HOME_PACKAGE_NAME:Ljava/lang/String; = "com.miui.home"

.field public static final HOT_LAUNCH_ATT_RT_DURATION_MS:I = 0x1f4

.field public static final INSTANCE:Lcom/android/server/am/MiuiBoosterUtilsStub;

.field public static final WECHAT_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mm"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 15
    const-class v0, Lcom/android/server/am/MiuiBoosterUtilsStub;

    .line 16
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MiuiBoosterUtilsStub;

    sput-object v0, Lcom/android/server/am/MiuiBoosterUtilsStub;->INSTANCE:Lcom/android/server/am/MiuiBoosterUtilsStub;

    .line 22
    nop

    .line 23
    const-string/jumbo v0, "persist.sys.miuibooster.floating.window"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/MiuiBoosterUtilsStub;->ENABLE_MIUIBOOSTER_FLOATING_WINDOW:Z

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/android/server/am/MiuiBoosterUtilsStub;
    .registers 1

    .line 19
    sget-object v0, Lcom/android/server/am/MiuiBoosterUtilsStub;->INSTANCE:Lcom/android/server/am/MiuiBoosterUtilsStub;

    return-object v0
.end method


# virtual methods
.method public abstract cancelBindCore(II)V
.end method

.method public abstract cancelCpuHighFreq(I)V
.end method

.method public abstract cancelThreadPriority(II)V
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract registerCloudObserver(Landroid/content/Context;)V
.end method

.method public abstract requestBindCore(I[III)I
.end method

.method public abstract requestCpuHighFreq(III)V
.end method

.method public abstract requestLaunchThreadPriority(I[III)V
.end method

.method public abstract requestThreadPriority(I[III)I
.end method

.method public abstract updateCloudControlParas()V
.end method
