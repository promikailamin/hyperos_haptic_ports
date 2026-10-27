.class public Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;
.super Ljava/lang/Object;
.source "AppCompatDisplayCompatModePolicy.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mDisplayChangedWithoutRestart:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 165
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->isEligibleForDisplayCompatMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isEligibleForDisplayCompatMode=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->isInDisplayCompatMode()Z

    move-result p0

    if-eqz p0, :cond_34

    .line 169
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "isInDisplayCompatMode=true"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_34
    return-void
.end method

.method public getDisplayChangedWithoutRestart()Z
    .registers 1

    .line 118
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->mDisplayChangedWithoutRestart:Z

    return p0
.end method

.method public getDisplayCompatModeConfigMask()I
    .registers 2

    .line 145
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->mDisplayChangedWithoutRestart:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->getStaticDisplayCompatModeConfigMask()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final getStaticDisplayCompatModeConfigMask()I
    .registers 3

    .line 149
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_COMPAT_MODE:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 151
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    if-eqz v0, :cond_15

    return v1

    .line 160
    :cond_15
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result p0

    not-int p0, p0

    and-int/lit16 p0, p0, 0x5008

    return p0
.end method

.method public final isEligibleForDisplayCompatMode()Z
    .registers 1

    .line 133
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->getStaticDisplayCompatModeConfigMask()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final isInDisplayCompatMode()Z
    .registers 1

    .line 129
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->getDisplayCompatModeConfigMask()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isRestartMenuEnabledForDisplayMove()Z
    .registers 2

    .line 73
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_RESTART_MENU_FOR_CONNECTED_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 74
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->isInDisplayCompatMode()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 75
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->mDisplayChangedWithoutRestart:Z

    if-eqz p0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public onMovedToDisplay(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 95
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    iget p1, p1, Landroid/view/DisplayInfo;->type:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 96
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    iget p1, p1, Landroid/view/DisplayInfo;->type:I

    if-ne p1, v0, :cond_12

    goto :goto_27

    .line 102
    :cond_12
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->mDisplayChangedWithoutRestart:Z

    .line 104
    sget-object p1, Landroid/window/DesktopExperienceFlags;->ENABLE_AUTO_RESTART_ON_DISPLAY_MOVE:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {p1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->shouldRestartOnDisplayMove()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 109
    iget-object p0, p0, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->restartProcessIfVisible()V

    :cond_27
    :goto_27
    return-void
.end method

.method public onProcessRestarted()V
    .registers 2

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->mDisplayChangedWithoutRestart:Z

    return-void
.end method

.method public shouldRestartOnDisplayMove()Z
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getDisplayOverrides()Lcom/android/server/wm/AppCompatDisplayOverrides;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatDisplayOverrides;->shouldRestartOnDisplayMove()Z

    move-result p0

    return p0
.end method
