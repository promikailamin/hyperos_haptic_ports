.class public Lcom/miui/autoui/MIUIAutoUIManagerImpl;
.super Ljava/lang/Object;
.source "MIUIAutoUIManagerImpl.java"

# interfaces
.implements Lcom/miui/autoui/MIUIAutoUIManagerStub;


# static fields
.field private static final blacklist PROPERTY_AUTOUI_ALLOW_SYSTEM_OVERRIDE:Ljava/lang/String; = "android.window.PROPERTY_AUTOUI_ALLOW_SYSTEM_OVERRIDE"

.field private static final blacklist TAG:Ljava/lang/String; = "AutoUI_MIUIAutoUIManagerImpl"


# instance fields
.field private blacklist mAutoUI:Lcom/miui/autoui/MIUIAutoUIStub;

.field private blacklist mIsActivityEnable:Z

.field private blacklist mIsAutoUIEnable:Z

.field private blacklist mIsInOtherMode:Z

.field private blacklist mRemote:Lcom/miui/autoui/IMiuiAutoUI;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist allowSystemOverride(Landroid/content/Context;)Ljava/lang/Boolean;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 96
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 98
    :cond_11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.window.PROPERTY_AUTOUI_ALLOW_SYSTEM_OVERRIDE"

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object v2

    .line 100
    .local v2, "property":Landroid/content/pm/PackageManager$Property;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$Property;->isBoolean()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 101
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_29} :catch_2c

    goto :goto_2b

    .line 102
    :cond_2a
    nop

    .line 100
    :goto_2b
    return-object v0

    .line 103
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "property":Landroid/content/pm/PackageManager$Property;
    :catch_2c
    move-exception v1

    .line 104
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v0
.end method

.method public static blacklist getVersionCode(Landroid/content/Context;)J
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 113
    .local v0, "manager":Landroid/content/pm/PackageManager;
    const-wide/16 v1, 0x0

    .line 115
    .local v1, "code":J
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 116
    .local v3, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v4
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_13} :catch_15

    move-wide v1, v4

    .line 119
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_19

    .line 117
    :catch_15
    move-exception v3

    .line 118
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 120
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_19
    return-wide v1
.end method

.method private blacklist isExpandState()Z
    .registers 2

    .line 128
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/autoui/AutoPolicyUtils;->isExpandState()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "params"    # Lcom/miui/autoui/AutoUIParams;

    .line 166
    invoke-static {p1}, Lcom/miui/autoui/policy/AutoUIPolicyFactory;->getPolicy(Landroid/view/View;)Lcom/miui/autoui/policy/api/IAutoUIPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autoui/policy/api/IAutoUIPolicy;->getDrawPolicy()Lcom/miui/autoui/policy/api/IAutoUIDraw;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/autoui/policy/api/IAutoUIDraw;->hookCanvas(Landroid/view/View;Landroid/graphics/Canvas;Lcom/miui/autoui/AutoUIParams;)Lcom/miui/autoui/AutoUIParams;

    move-result-object v0

    return-object v0
.end method

.method public blacklist init(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    if-nez p1, :cond_3

    return-void

    .line 36
    :cond_3
    const-string v0, "miui_auto_ui"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/autoui/IMiuiAutoUI$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/autoui/IMiuiAutoUI;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autoui/MIUIAutoUIManagerImpl;->mRemote:Lcom/miui/autoui/IMiuiAutoUI;

    .line 37
    if-nez v0, :cond_12

    .line 38
    return-void

    .line 40
    :cond_12
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 42
    return-void

    .line 45
    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lcom/miui/autoui/MIUIAutoUIManagerImpl;->mRemote:Lcom/miui/autoui/IMiuiAutoUI;

    invoke-interface {v1, v0}, Lcom/miui/autoui/IMiuiAutoUI;->getSystemAutoUIRules(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 46
    .local v1, "config":Landroid/os/Bundle;
    if-eqz v1, :cond_a6

    .line 47
    const-string v2, "enable"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 49
    .local v2, "isAppEnableFromContext":Z
    if-eqz v2, :cond_77

    .line 50
    const-string v3, "versionCode"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_33} :catch_a7

    .line 51
    .local v3, "disableVersion":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    const-string v6, "AutoUI_MIUIAutoUIManagerImpl"

    if-lez v5, :cond_65

    .line 52
    :try_start_3b
    invoke-static {p1}, Lcom/miui/autoui/MIUIAutoUIManagerImpl;->getVersionCode(Landroid/content/Context;)J

    move-result-wide v7

    .line 53
    .local v7, "currentVersion":J
    cmp-long v5, v3, v7

    if-gtz v5, :cond_64

    .line 54
    const/4 v2, 0x0

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentVersion:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " is bigger than disableVersion:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/miui/autoui/AutoUILogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .end local v7    # "currentVersion":J
    :cond_64
    goto :goto_77

    .line 59
    :cond_65
    invoke-direct {p0, p1}, Lcom/miui/autoui/MIUIAutoUIManagerImpl;->allowSystemOverride(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v5

    .line 60
    .local v5, "isAllowSystem":Ljava/lang/Boolean;
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_77

    .line 61
    const/4 v2, 0x0

    .line 62
    const-string v7, "use app declaration"

    invoke-static {v6, v7}, Lcom/miui/autoui/AutoUILogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .end local v3    # "disableVersion":J
    .end local v5    # "isAllowSystem":Ljava/lang/Boolean;
    :cond_77
    :goto_77
    iput-boolean v2, p0, Lcom/miui/autoui/MIUIAutoUIManagerImpl;->mIsActivityEnable:Z

    iput-boolean v2, p0, Lcom/miui/autoui/MIUIAutoUIManagerImpl;->mIsAutoUIEnable:Z

    .line 68
    invoke-virtual {p0}, Lcom/miui/autoui/MIUIAutoUIManagerImpl;->getMIUIAutoUI()Lcom/miui/autoui/MIUIAutoUIStub;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/autoui/MIUIAutoUIManagerImpl;->mAutoUI:Lcom/miui/autoui/MIUIAutoUIStub;

    .line 69
    if-eqz v2, :cond_a6

    .line 70
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/miui/autoui/AutoPolicyUtils;->initialiseAutoPolicyUtils(Landroid/os/Bundle;)V

    .line 71
    iget-object v3, p0, Lcom/miui/autoui/MIUIAutoUIManagerImpl;->mAutoUI:Lcom/miui/autoui/MIUIAutoUIStub;

    new-instance v4, Lcom/miui/autoui/MIUIAutoUIManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/miui/autoui/MIUIAutoUIManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/miui/autoui/MIUIAutoUIManagerImpl;)V

    invoke-interface {v3, p1, v4}, Lcom/miui/autoui/MIUIAutoUIStub;->init(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v3, :cond_a6

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/miui/autoui/MIUIAutoUIManagerImpl;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_a6} :catch_a7

    .line 80
    .end local v1    # "config":Landroid/os/Bundle;
    .end local v2    # "isAppEnableFromContext":Z
    :cond_a6
    goto :goto_ab

    .line 78
    :catch_a7
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_ab
    return-void
.end method

.method public blacklist isAppAutoUIEnable()Z
    .registers 2

    .line 132
    invoke-virtual {p0}, Lcom/miui/autoui/MIUIAutoUIManagerImpl;->isAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/miui/autoui/MIUIAutoUIManagerImpl;->mIsInOtherMode:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/miui/autoui/MIUIAutoUIManagerImpl;->mIsActivityEnable:Z

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/miui/autoui/MIUIAutoUIManagerImpl;->isExpandState()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public blacklist isAutoUIEnable()Z
    .registers 2

    .line 124
    sget-boolean v0, Lcom/miui/autoui/MIUIAutoUIManagerImpl;->IS_AUTO_UI_ENABLED:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/miui/autoui/MIUIAutoUIManagerImpl;->mIsAutoUIEnable:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist isOptimizeWebViewEnable()Z
    .registers 2

    .line 136
    invoke-virtual {p0}, Lcom/miui/autoui/MIUIAutoUIManagerImpl;->isAutoUIEnable()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/autoui/AutoPolicyUtils;->needOptimizeWebView()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method synthetic blacklist lambda$init$0$com-miui-autoui-MIUIAutoUIManagerImpl(Ljava/lang/Boolean;)V
    .registers 3
    .param p1, "activityEnable"    # Ljava/lang/Boolean;

    .line 71
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/autoui/MIUIAutoUIManagerImpl;->mIsActivityEnable:Z

    return-void
.end method

.method public blacklist obtainAutoUICanvas(Landroid/graphics/Canvas;)Lcom/miui/autoui/IAutoUICanvas;
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 158
    iget-boolean v0, p0, Lcom/miui/autoui/MIUIAutoUIManagerImpl;->mIsAutoUIEnable:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/miui/autoui/MiuiAutoUICanvas;

    invoke-direct {v0, p1}, Lcom/miui/autoui/MiuiAutoUICanvas;-><init>(Landroid/graphics/Canvas;)V

    goto :goto_f

    :cond_a
    new-instance v0, Lcom/miui/autoui/DefaultAutoUICanvas;

    invoke-direct {v0, p1}, Lcom/miui/autoui/DefaultAutoUICanvas;-><init>(Landroid/graphics/Canvas;)V

    :goto_f
    return-object v0
.end method

.method public blacklist obtainAutoUIPath()Lcom/miui/autoui/IAutoUIPath;
    .registers 2

    .line 162
    iget-boolean v0, p0, Lcom/miui/autoui/MIUIAutoUIManagerImpl;->mIsAutoUIEnable:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/miui/autoui/MiuiAutoUIPath;

    invoke-direct {v0}, Lcom/miui/autoui/MiuiAutoUIPath;-><init>()V

    goto :goto_f

    :cond_a
    new-instance v0, Lcom/miui/autoui/DefaultAutoUIPath;

    invoke-direct {v0}, Lcom/miui/autoui/DefaultAutoUIPath;-><init>()V

    :goto_f
    return-object v0
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V
    .registers 8
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "context"    # Landroid/content/Context;

    .line 140
    if-eqz p1, :cond_45

    iget-boolean v0, p0, Lcom/miui/autoui/MIUIAutoUIManagerImpl;->mIsAutoUIEnable:Z

    if-nez v0, :cond_7

    goto :goto_45

    .line 142
    :cond_7
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 144
    .local v0, "bounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_44

    .line 145
    :cond_16
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 146
    .local v1, "width":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 147
    .local v2, "height":I
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    .line 149
    .local v3, "windowMode":I
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/miui/autoui/AutoPolicyUtils;->setWindowMode(I)V

    .line 150
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/miui/autoui/AutoPolicyUtils;->verifyExpandState(II)V

    .line 151
    invoke-static {}, Lcom/miui/autoui/AutoPolicyUtils;->getInstance()Lcom/miui/autoui/AutoPolicyUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/autoui/AutoPolicyUtils;->isInOtherMode()Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/autoui/MIUIAutoUIManagerImpl;->mIsInOtherMode:Z

    .line 152
    iget-object v4, p0, Lcom/miui/autoui/MIUIAutoUIManagerImpl;->mAutoUI:Lcom/miui/autoui/MIUIAutoUIStub;

    if-eqz v4, :cond_43

    .line 153
    invoke-interface {v4, p2, v1, v2}, Lcom/miui/autoui/MIUIAutoUIStub;->onConfigurationChanged(Landroid/content/Context;II)V

    .line 155
    :cond_43
    return-void

    .line 144
    .end local v1    # "width":I
    .end local v2    # "height":I
    .end local v3    # "windowMode":I
    :cond_44
    :goto_44
    return-void

    .line 140
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_45
    :goto_45
    return-void
.end method
