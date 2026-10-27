.class public interface abstract Landroid/util/MiuiFreeformPcUtilStub;
.super Ljava/lang/Object;
.source "MiuiFreeformPcUtilStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/MiuiFreeformPcUtilStub$SingletonHolder;
    }
.end annotation


# direct methods
.method public static blacklist getInstance()Landroid/util/MiuiFreeformPcUtilStub;
    .registers 1

    .line 14
    invoke-static {}, Landroid/util/MiuiFreeformPcUtilStub$SingletonHolder;->-$$Nest$sfgetINSTANCE()Landroid/util/MiuiFreeformPcUtilStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract blacklist getBlackAppName()Ljava/lang/String;
.end method

.method public abstract blacklist getDecorControlKey()Ljava/lang/String;
.end method

.method public abstract blacklist getFreeFormRoundCorner()I
.end method

.method public abstract blacklist getMiuiHomeComponent()Ljava/lang/String;
.end method

.method public abstract blacklist getPcDecorCaptionViewHeight()I
.end method

.method public abstract blacklist getPcEnable()Z
.end method

.method public abstract blacklist getPcHomeComponent()Ljava/lang/String;
.end method

.method public abstract blacklist getPcLauncherServiceComponent()Ljava/lang/String;
.end method

.method public abstract blacklist getPcPackName()Ljava/lang/String;
.end method

.method public abstract blacklist getPcSystemBarHeight()I
.end method

.method public abstract blacklist getResizeModeFullBtnFull()I
.end method

.method public abstract blacklist getResizeModeFullBtnHideDecor()I
.end method

.method public abstract blacklist getResizeModeMaxBtnMax()I
.end method

.method public abstract blacklist getResizeModeMaxBtnRestore()I
.end method

.method public abstract blacklist getResizeModeNotResizable()I
.end method

.method public abstract blacklist getResizeModePcChangeStatus()I
.end method

.method public abstract blacklist getResizeModePcIntentInit()I
.end method

.method public abstract blacklist getResizeModeTwoFinger()I
.end method

.method public abstract blacklist getServicePcName()Ljava/lang/String;
.end method

.method public abstract blacklist getWindowModeFreeForm()I
.end method

.method public abstract blacklist getWindowModeFreeFormPc()I
.end method

.method public abstract blacklist isMiuiFreeformMode(I)Z
.end method

.method public abstract blacklist isPcMode(I)Z
.end method

.method public abstract blacklist isSmallWinMode(I)Z
.end method
