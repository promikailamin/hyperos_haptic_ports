.class public Lcom/android/server/wm/MiuiEmbeddingWindowServiceStubHead;
.super Ljava/lang/Object;
.source "MiuiEmbeddingWindowServiceStubHead.java"


# annotations
.annotation runtime Lcom/miui/base/annotations/MiuiStubHead;
    classPath = "/system_ext/framework/miui-embedding-window.jar"
    internal = true
    manifestName = "com.android.server.wm.MiuiEmbeddingWindowServiceStubHeadManifest$$"
.end annotation


# static fields
.field private static ENABLED:Z = false

.field private static final TAG:Ljava/lang/String; = "MiuiEmbeddingWindowServiceStubHead"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    const-string/jumbo v0, "ro.config.miui_activity_embedding_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStubHead;->ENABLED:Z

    .line 24
    const-class v0, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStubHead;

    invoke-static {v0}, Lcom/miui/base/MiuiStubRegistry;->init(Ljava/lang/Class;)V

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStubHead;
    .registers 1

    .line 27
    const-class v0, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStubHead;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStubHead;

    return-object v0
.end method

.method public static isActivityEmbeddingEnable()Z
    .registers 1

    .line 30
    sget-boolean v0, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStubHead;->ENABLED:Z

    return v0
.end method
