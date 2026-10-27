.class public Lmiui/content/res/ThemeFontChangeHelper;
.super Ljava/lang/Object;
.source "ThemeFontChangeHelper.java"


# static fields
.field private static blacklist sWebViewThemeChanged:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 13
    const/4 v0, -0x1

    sput v0, Lmiui/content/res/ThemeFontChangeHelper;->sWebViewThemeChanged:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist markWebViewCreated(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroid/content/res/MiuiConfiguration;->getExtraConfig(Landroid/content/res/Configuration;)Landroid/content/res/MiuiConfiguration;

    move-result-object v0

    .line 20
    .local v0, "c":Landroid/content/res/MiuiConfiguration;
    if-eqz v0, :cond_1a

    sget v1, Lmiui/content/res/ThemeFontChangeHelper;->sWebViewThemeChanged:I

    invoke-virtual {v0, v1}, Landroid/content/res/MiuiConfiguration;->checkFontChange(I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 21
    iget v1, v0, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    sput v1, Lmiui/content/res/ThemeFontChangeHelper;->sWebViewThemeChanged:I

    .line 23
    :cond_1a
    return-void
.end method

.method public static whitelist quitProcessIfNeed(Landroid/content/res/Configuration;)V
    .registers 4
    .param p0, "newConfig"    # Landroid/content/res/Configuration;

    .line 26
    if-eqz p0, :cond_35

    .line 27
    invoke-static {}, Landroid/ddm/DdmHandleAppNameHook;->getAppName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "system_process"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 28
    invoke-static {}, Landroid/ddm/DdmHandleAppNameHook;->getAppName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.miui.miservice"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_35

    .line 31
    :cond_1b
    invoke-static {p0}, Landroid/content/res/MiuiConfiguration;->getExtraConfig(Landroid/content/res/Configuration;)Landroid/content/res/MiuiConfiguration;

    move-result-object v0

    .line 32
    .local v0, "c":Landroid/content/res/MiuiConfiguration;
    if-eqz v0, :cond_34

    sget v1, Lmiui/content/res/ThemeFontChangeHelper;->sWebViewThemeChanged:I

    invoke-virtual {v0, v1}, Landroid/content/res/MiuiConfiguration;->checkFontChange(I)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 33
    const-string v1, "ThemeFontChangeHelper"

    const-string v2, "app has checked webview-font change and process will restart."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 36
    :cond_34
    return-void

    .line 29
    .end local v0    # "c":Landroid/content/res/MiuiConfiguration;
    :cond_35
    :goto_35
    return-void
.end method
