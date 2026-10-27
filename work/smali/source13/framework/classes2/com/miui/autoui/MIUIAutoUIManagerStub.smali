.class public interface abstract Lcom/miui/autoui/MIUIAutoUIManagerStub;
.super Ljava/lang/Object;
.source "MIUIAutoUIManagerStub.java"


# static fields
.field public static final blacklist IS_AUTO_UI_ENABLED:Z

.field public static final blacklist sInstance:Lcom/miui/autoui/MIUIAutoUIManagerStub;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 17
    const-string v0, "persist.miui.auto_ui_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/autoui/MIUIAutoUIManagerStub;->IS_AUTO_UI_ENABLED:Z

    .line 18
    const-class v0, Lcom/miui/autoui/MIUIAutoUIManagerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autoui/MIUIAutoUIManagerStub;

    sput-object v0, Lcom/miui/autoui/MIUIAutoUIManagerStub;->sInstance:Lcom/miui/autoui/MIUIAutoUIManagerStub;

    return-void
.end method

.method public static blacklist getInstance()Lcom/miui/autoui/MIUIAutoUIManagerStub;
    .registers 1

    .line 21
    sget-object v0, Lcom/miui/autoui/MIUIAutoUIManagerStub;->sInstance:Lcom/miui/autoui/MIUIAutoUIManagerStub;

    return-object v0
.end method


# virtual methods
.method public blacklist getMIUIAutoUI()Lcom/miui/autoui/MIUIAutoUIStub;
    .registers 2

    .line 25
    invoke-static {}, Lcom/miui/autoui/MIUIAutoUIStub;->getInstance()Lcom/miui/autoui/MIUIAutoUIStub;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "params"    # Lcom/miui/autoui/AutoUIParams;

    .line 53
    return-object p3
.end method

.method public blacklist init(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    return-void
.end method

.method public blacklist isAppAutoUIEnable()Z
    .registers 2

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAutoUIEnable()Z
    .registers 2

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isOptimizeWebViewEnable()Z
    .registers 2

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist obtainAutoUICanvas(Landroid/graphics/Canvas;)Lcom/miui/autoui/IAutoUICanvas;
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist obtainAutoUIPath()Lcom/miui/autoui/IAutoUIPath;
    .registers 2

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V
    .registers 3
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "context"    # Landroid/content/Context;

    .line 42
    return-void
.end method
