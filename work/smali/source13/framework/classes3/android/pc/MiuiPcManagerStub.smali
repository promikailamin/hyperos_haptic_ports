.class public interface abstract Landroid/pc/MiuiPcManagerStub;
.super Ljava/lang/Object;
.source "MiuiPcManagerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pc/MiuiPcManagerStub$SingletonHolder;
    }
.end annotation


# direct methods
.method public static blacklist getInstance()Landroid/pc/MiuiPcManagerStub;
    .registers 1

    .line 17
    invoke-static {}, Landroid/pc/MiuiPcManagerStub$SingletonHolder;->-$$Nest$sfgetINSTANCE()Landroid/pc/MiuiPcManagerStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract blacklist actionDisablePip()V
.end method

.method public abstract blacklist getPcLauncherForUser(I)V
.end method

.method public abstract blacklist getPcRunStatus()Z
.end method

.method public abstract blacklist getTaskCanResize(I)Z
.end method

.method public abstract blacklist getWidgetRect()Landroid/graphics/Rect;
.end method

.method public abstract blacklist isOnPcMode()Z
.end method

.method public abstract blacklist isOnPcModeForUser(I)Z
.end method

.method public abstract blacklist isPcEnable()Z
.end method

.method public abstract blacklist onMouseHoverAtBottom(IJ)V
.end method

.method public abstract blacklist onMouseHoverAtTop(IJ)V
.end method

.method public abstract blacklist servAppOrientation(I)V
.end method

.method public abstract blacklist showTopBarDelayed(I)V
.end method

.method public abstract blacklist upDateConfig(Landroid/content/res/Configuration;)V
.end method
