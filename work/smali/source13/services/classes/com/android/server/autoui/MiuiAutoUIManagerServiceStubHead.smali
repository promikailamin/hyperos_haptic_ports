.class public Lcom/android/server/autoui/MiuiAutoUIManagerServiceStubHead;
.super Ljava/lang/Object;
.source "MiuiAutoUIManagerServiceStubHead.java"


# annotations
.annotation runtime Lcom/miui/base/annotations/MiuiStubHead;
    classPath = "/system_ext/framework/miui-auto-ui.jar"
    internal = true
    manifestName = "com.android.server.autoui.MiuiAutoUIManagerServiceStubHeadManifest$$"
.end annotation


# static fields
.field private static ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    sget-boolean v0, Lcom/miui/autoui/MIUIAutoUIManagerStub;->IS_AUTO_UI_ENABLED:Z

    sput-boolean v0, Lcom/android/server/autoui/MiuiAutoUIManagerServiceStubHead;->ENABLED:Z

    .line 22
    const-class v0, Lcom/android/server/autoui/MiuiAutoUIManagerServiceStubHead;

    invoke-static {v0}, Lcom/miui/base/MiuiStubRegistry;->init(Ljava/lang/Class;)V

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/autoui/MiuiAutoUIManagerServiceStubHead;
    .registers 1

    .line 25
    const-class v0, Lcom/android/server/autoui/MiuiAutoUIManagerServiceStubHead;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autoui/MiuiAutoUIManagerServiceStubHead;

    return-object v0
.end method

.method public static isAutoUIEnable()Z
    .registers 1

    .line 28
    sget-boolean v0, Lcom/android/server/autoui/MiuiAutoUIManagerServiceStubHead;->ENABLED:Z

    return v0
.end method
