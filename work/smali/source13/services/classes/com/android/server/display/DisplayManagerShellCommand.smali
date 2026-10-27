.class Lcom/android/server/display/DisplayManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "DisplayManagerShellCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayManagerShellCommand"


# instance fields
.field private final mService:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/display/DisplayManagerService;

    .line 35
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    .line 37
    return-void
.end method

.method private clearUserPreferredDisplayMode()I
    .registers 6

    .line 284
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "displayIdText":Ljava/lang/String;
    const/4 v1, -0x1

    .line 286
    .local v1, "displayId":I
    if-eqz v0, :cond_19

    .line 288
    :try_start_7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_b} :catch_d

    move v1, v2

    .line 292
    goto :goto_19

    .line 289
    :catch_d
    move-exception v2

    .line 290
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: invalid format of display ID"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    const/4 v3, 0x1

    return v3

    .line 294
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_19
    :goto_19
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/display/DisplayManagerService;->setUserPreferredDisplayModeInternal(ILandroid/view/Display$Mode;)V

    .line 295
    const/4 v2, 0x0

    return v2
.end method

.method private getActiveDisplayModeAtStart()I
    .registers 9

    .line 321
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "displayIdText":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 323
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no displayId specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    return v1

    .line 328
    :cond_11
    :try_start_11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_15} :catch_62

    .line 332
    .local v1, "displayId":I
    nop

    .line 334
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayManagerService;->getActiveDisplayModeAtStart(I)Landroid/view/Display$Mode;

    move-result-object v2

    .line 335
    .local v2, "mode":Landroid/view/Display$Mode;
    const/4 v3, 0x0

    if-nez v2, :cond_29

    .line 336
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Boot display mode: null"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    return v3

    .line 339
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Boot display mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 340
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 339
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    return v3

    .line 329
    .end local v1    # "displayId":I
    .end local v2    # "mode":Landroid/view/Display$Mode;
    :catch_62
    move-exception v2

    .line 330
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: invalid displayId"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    return v1
.end method

.method private getDisplays()I
    .registers 8

    .line 163
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "category":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 165
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v2

    .line 166
    .local v2, "displays":[Landroid/view/Display;
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 167
    .local v3, "out":Ljava/io/PrintWriter;
    const-string v4, "Displays:"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    array-length v5, v2

    if-ge v4, v5, :cond_3e

    .line 169
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 171
    .end local v4    # "i":I
    :cond_3e
    const/4 v4, 0x0

    return v4
.end method

.method private getMatchContentFrameRateUserPreference()I
    .registers 6

    .line 373
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 374
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 375
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Match content frame rate type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 376
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getMatchContentFrameRateUserPreference()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 375
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    const/4 v2, 0x0

    return v2
.end method

.method private getUserDisabledHdrTypes()I
    .registers 7

    .line 404
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 405
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 406
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getUserDisabledHdrTypes()[I

    move-result-object v2

    .line 407
    .local v2, "userDisabledHdrTypes":[I
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User disabled HDR types: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 408
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 407
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    const/4 v3, 0x0

    return v3
.end method

.method private getUserPreferredDisplayMode()I
    .registers 9

    .line 299
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "displayIdText":Ljava/lang/String;
    const/4 v1, -0x1

    .line 301
    .local v1, "displayId":I
    if-eqz v0, :cond_19

    .line 303
    :try_start_7
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_b} :catch_d

    move v1, v2

    .line 307
    goto :goto_19

    .line 304
    :catch_d
    move-exception v2

    .line 305
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: invalid format of display ID"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    const/4 v3, 0x1

    return v3

    .line 309
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_19
    :goto_19
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayManagerService;->getUserPreferredDisplayModeInternal(I)Landroid/view/Display$Mode;

    move-result-object v2

    .line 310
    .local v2, "mode":Landroid/view/Display$Mode;
    const/4 v3, 0x0

    if-nez v2, :cond_2c

    .line 311
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "User preferred display mode: null"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    return v3

    .line 315
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User preferred display mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 316
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 315
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    return v3
.end method

.method private resetBrightnessConfiguration()I
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->resetBrightnessConfigurations()V

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method private setAmbientColorTemperatureOverride()I
    .registers 6

    .line 217
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "cctText":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 219
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no cct specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    return v1

    .line 224
    :cond_11
    :try_start_11
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_15} :catch_1d

    .line 228
    .local v1, "cct":F
    nop

    .line 229
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayManagerService;->setAmbientColorTemperatureOverride(F)V

    .line 230
    const/4 v2, 0x0

    return v2

    .line 225
    .end local v1    # "cct":F
    :catch_1d
    move-exception v2

    .line 226
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: cct should be a number"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    return v1
.end method

.method private setAutoBrightnessLoggingEnabled(Z)I
    .registers 3
    .param p1, "enabled"    # Z

    .line 202
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService;->setAutoBrightnessLoggingEnabled(Z)V

    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method private setBrightness()I
    .registers 6

    .line 175
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "brightnessText":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 177
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no brightness specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    return v1

    .line 180
    :cond_11
    const/high16 v2, -0x40800000    # -1.0f

    .line 182
    .local v2, "brightness":F
    :try_start_13
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_17} :catch_19

    move v2, v3

    .line 184
    goto :goto_1a

    .line 183
    :catch_19
    move-exception v3

    .line 185
    :goto_1a
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_39

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_26

    goto :goto_39

    .line 190
    :cond_26
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 191
    .local v1, "context":Landroid/content/Context;
    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 192
    .local v3, "dm":Landroid/hardware/display/DisplayManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    .line 193
    return v4

    .line 186
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "dm":Landroid/hardware/display/DisplayManager;
    :cond_39
    :goto_39
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: brightness should be a number between 0 and 1"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    return v1
.end method

.method private setDisplayModeDirectorLoggingEnabled(Z)I
    .registers 3
    .param p1, "enabled"    # Z

    .line 212
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService;->setDisplayModeDirectorLoggingEnabled(Z)V

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method private setDisplayWhiteBalanceLoggingEnabled(Z)I
    .registers 3
    .param p1, "enabled"    # Z

    .line 207
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService;->setDisplayWhiteBalanceLoggingEnabled(Z)V

    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method private setDockedAndIdle()I
    .registers 4

    .line 431
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService;->setDockedAndIdleEnabled(ZI)V

    .line 432
    return v2
.end method

.method private setMatchContentFrameRateUserPreference()I
    .registers 7

    .line 345
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "matchContentFrameRatePrefText":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 347
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no matchContentFrameRatePref specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    return v1

    .line 353
    :cond_11
    :try_start_11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_15} :catch_3a

    .line 357
    .local v2, "matchContentFrameRatePreference":I
    nop

    .line 358
    if-gez v2, :cond_22

    .line 359
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: invalid value of matchContentFrameRatePreference"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    return v1

    .line 363
    :cond_22
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 364
    .local v1, "context":Landroid/content/Context;
    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 366
    .local v3, "dm":Landroid/hardware/display/DisplayManager;
    nop

    .line 367
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayManagerShellCommand;->toRefreshRateSwitchingType(I)I

    move-result v4

    .line 368
    .local v4, "refreshRateSwitchingType":I
    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManager;->setRefreshRateSwitchingType(I)V

    .line 369
    const/4 v5, 0x0

    return v5

    .line 354
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "matchContentFrameRatePreference":I
    .end local v3    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v4    # "refreshRateSwitchingType":I
    :catch_3a
    move-exception v2

    .line 355
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: invalid format of matchContentFrameRatePreference"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    return v1
.end method

.method private setUserDisabledHdrTypes()I
    .registers 11

    .line 381
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->peekRemainingArgs()[Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "userDisabledHdrTypesText":[Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 383
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no userDisabledHdrTypes specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    return v1

    .line 387
    :cond_11
    array-length v2, v0

    new-array v2, v2, [I

    .line 389
    .local v2, "userDisabledHdrTypes":[I
    const/4 v3, 0x0

    .line 390
    .local v3, "index":I
    :try_start_15
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_18
    if-ge v6, v4, :cond_28

    aget-object v7, v0, v6

    .line 391
    .local v7, "userDisabledHdrType":Ljava/lang/String;
    add-int/lit8 v8, v3, 0x1

    .end local v3    # "index":I
    .local v8, "index":I
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v2, v3
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_24} :catch_3b

    .line 390
    .end local v7    # "userDisabledHdrType":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    move v3, v8

    goto :goto_18

    .line 396
    .end local v8    # "index":I
    :cond_28
    nop

    .line 397
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 398
    .local v1, "context":Landroid/content/Context;
    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    .line 399
    .local v3, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManager;->setUserDisabledHdrTypes([I)V

    .line 400
    return v5

    .line 393
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "dm":Landroid/hardware/display/DisplayManager;
    :catch_3b
    move-exception v3

    .line 394
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: invalid format of userDisabledHdrTypes"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    return v1
.end method

.method private setUserPreferredDisplayMode()I
    .registers 13

    .line 234
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "widthText":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 236
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no width specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    return v1

    .line 240
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "heightText":Ljava/lang/String;
    if-nez v2, :cond_21

    .line 242
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no height specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    return v1

    .line 246
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 247
    .local v3, "refreshRateText":Ljava/lang/String;
    if-nez v3, :cond_31

    .line 248
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no refresh-rate specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    return v1

    .line 255
    :cond_31
    :try_start_31
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 256
    .local v4, "width":I
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 257
    .local v5, "height":I
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_3d} :catch_75

    .line 261
    .local v6, "refreshRate":F
    nop

    .line 262
    if-ltz v4, :cond_42

    if-gez v5, :cond_51

    :cond_42
    const/4 v7, 0x0

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_51

    .line 263
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    const-string v8, "Error: invalid value of resolution (width, height) and refresh rate"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    return v1

    .line 268
    :cond_51
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    .line 269
    .local v7, "displayIdText":Ljava/lang/String;
    const/4 v8, -0x1

    .line 270
    .local v8, "displayId":I
    if-eqz v7, :cond_69

    .line 272
    :try_start_58
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_58 .. :try_end_5c} :catch_5e

    move v8, v1

    .line 276
    goto :goto_69

    .line 273
    :catch_5e
    move-exception v9

    .line 274
    .local v9, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v10

    const-string v11, "Error: invalid format of display ID"

    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    return v1

    .line 278
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_69
    :goto_69
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    new-instance v9, Landroid/view/Display$Mode;

    invoke-direct {v9, v4, v5, v6}, Landroid/view/Display$Mode;-><init>(IIF)V

    invoke-virtual {v1, v8, v9}, Lcom/android/server/display/DisplayManagerService;->setUserPreferredDisplayModeInternal(ILandroid/view/Display$Mode;)V

    .line 280
    const/4 v1, 0x0

    return v1

    .line 258
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "refreshRate":F
    .end local v7    # "displayIdText":Ljava/lang/String;
    .end local v8    # "displayId":I
    :catch_75
    move-exception v4

    .line 259
    .local v4, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, "Error: invalid format of width, height or refresh rate"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    return v1
.end method

.method private showTouchCoverProtectionRect(Z)I
    .registers 3
    .param p1, "show"    # Z

    .line 446
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 447
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayManagerService;->showTouchCoverProtectionRect(Z)V

    .line 449
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private toRefreshRateSwitchingType(I)I
    .registers 4
    .param p1, "matchContentFrameRateType"    # I

    .line 415
    packed-switch p1, :pswitch_data_24

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not a valid value of matchContentFrameRate type."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayManagerShellCommand"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v0, -0x1

    return v0

    .line 421
    :pswitch_1d
    const/4 v0, 0x2

    return v0

    .line 419
    :pswitch_1f
    const/4 v0, 0x1

    return v0

    .line 417
    :pswitch_21
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1f
        :pswitch_1d
    .end packed-switch
.end method

.method private unsetDockedAndIdle()I
    .registers 3

    .line 436
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/display/DisplayManagerService;->setDockedAndIdleEnabled(ZI)V

    .line 437
    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 41
    if-nez p1, :cond_7

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 44
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 45
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_18a

    :cond_15
    goto/16 :goto_114

    :sswitch_17
    const-string v2, "dwb-logging-disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v1, 0x5

    goto/16 :goto_114

    :sswitch_22
    const-string v2, "clear-user-preferred-display-mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v1, 0xa

    goto/16 :goto_114

    :sswitch_2e
    const-string/jumbo v2, "set-user-disabled-hdr-types"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v1, 0xf

    goto/16 :goto_114

    :sswitch_3b
    const-string v2, "dmd-logging-enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v1, 0x6

    goto/16 :goto_114

    :sswitch_46
    const-string v2, "dmd-logging-disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v1, 0x7

    goto/16 :goto_114

    :sswitch_51
    const-string v2, "get-match-content-frame-rate-pref"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v1, 0xe

    goto/16 :goto_114

    :sswitch_5d
    const-string/jumbo v2, "set-brightness"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v1, v3

    goto/16 :goto_114

    :sswitch_69
    const-string/jumbo v2, "set-match-content-frame-rate-pref"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v1, 0xd

    goto/16 :goto_114

    :sswitch_76
    const-string v2, "get-active-display-mode-at-start"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v1, 0xc

    goto/16 :goto_114

    :sswitch_82
    const-string v2, "ab-logging-disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v1, 0x3

    goto/16 :goto_114

    :sswitch_8d
    const-string v2, "dwb-set-cct"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v1, 0x8

    goto/16 :goto_114

    :sswitch_99
    const-string v2, "ab-logging-enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v1, 0x2

    goto/16 :goto_114

    :sswitch_a4
    const-string v2, "dock"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v1, 0x12

    goto :goto_114

    :sswitch_af
    const-string/jumbo v2, "touch-cover-protect-show"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v1, 0x14

    goto :goto_114

    :sswitch_bb
    const-string/jumbo v2, "touch-cover-protect-hide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v1, 0x15

    goto :goto_114

    :sswitch_c7
    const-string v2, "get-user-preferred-display-mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v1, 0xb

    goto :goto_114

    :sswitch_d2
    const-string/jumbo v2, "set-user-preferred-display-mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v1, 0x9

    goto :goto_114

    :sswitch_de
    const-string v2, "dwb-logging-enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v1, 0x4

    goto :goto_114

    :sswitch_e8
    const-string/jumbo v2, "undock"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v1, 0x13

    goto :goto_114

    :sswitch_f4
    const-string v2, "get-user-disabled-hdr-types"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v1, 0x10

    goto :goto_114

    :sswitch_ff
    const-string v2, "get-displays"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/16 v1, 0x11

    goto :goto_114

    :sswitch_10a
    const-string/jumbo v2, "reset-brightness-configuration"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v1, v4

    :goto_114
    packed-switch v1, :pswitch_data_1e4

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 90
    :pswitch_11c
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerShellCommand;->showTouchCoverProtectionRect(Z)I

    move-result v1

    return v1

    .line 88
    :pswitch_121
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayManagerShellCommand;->showTouchCoverProtectionRect(Z)I

    move-result v1

    return v1

    .line 85
    :pswitch_126
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->unsetDockedAndIdle()I

    move-result v1

    return v1

    .line 83
    :pswitch_12b
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->setDockedAndIdle()I

    move-result v1

    return v1

    .line 81
    :pswitch_130
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getDisplays()I

    move-result v1

    return v1

    .line 79
    :pswitch_135
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getUserDisabledHdrTypes()I

    move-result v1

    return v1

    .line 77
    :pswitch_13a
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->setUserDisabledHdrTypes()I

    move-result v1

    return v1

    .line 75
    :pswitch_13f
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getMatchContentFrameRateUserPreference()I

    move-result v1

    return v1

    .line 73
    :pswitch_144
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->setMatchContentFrameRateUserPreference()I

    move-result v1

    return v1

    .line 71
    :pswitch_149
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getActiveDisplayModeAtStart()I

    move-result v1

    return v1

    .line 69
    :pswitch_14e
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getUserPreferredDisplayMode()I

    move-result v1

    return v1

    .line 67
    :pswitch_153
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->clearUserPreferredDisplayMode()I

    move-result v1

    return v1

    .line 65
    :pswitch_158
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->setUserPreferredDisplayMode()I

    move-result v1

    return v1

    .line 63
    :pswitch_15d
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->setAmbientColorTemperatureOverride()I

    move-result v1

    return v1

    .line 61
    :pswitch_162
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerShellCommand;->setDisplayModeDirectorLoggingEnabled(Z)I

    move-result v1

    return v1

    .line 59
    :pswitch_167
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayManagerShellCommand;->setDisplayModeDirectorLoggingEnabled(Z)I

    move-result v1

    return v1

    .line 57
    :pswitch_16c
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerShellCommand;->setDisplayWhiteBalanceLoggingEnabled(Z)I

    move-result v1

    return v1

    .line 55
    :pswitch_171
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayManagerShellCommand;->setDisplayWhiteBalanceLoggingEnabled(Z)I

    move-result v1

    return v1

    .line 53
    :pswitch_176
    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayManagerShellCommand;->setAutoBrightnessLoggingEnabled(Z)I

    move-result v1

    return v1

    .line 51
    :pswitch_17b
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayManagerShellCommand;->setAutoBrightnessLoggingEnabled(Z)I

    move-result v1

    return v1

    .line 49
    :pswitch_180
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->resetBrightnessConfiguration()I

    move-result v1

    return v1

    .line 47
    :pswitch_185
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->setBrightness()I

    move-result v1

    return v1

    :sswitch_data_18a
    .sparse-switch
        -0x59bb9cc8 -> :sswitch_10a
        -0x56ff2b78 -> :sswitch_ff
        -0x3cdc7364 -> :sswitch_f4
        -0x321bc3b4 -> :sswitch_e8
        -0x2b98d0f1 -> :sswitch_de
        -0x28f4f10f -> :sswitch_d2
        -0x23de541b -> :sswitch_c7
        -0x1c406adc -> :sswitch_bb
        -0x1c3b6d21 -> :sswitch_af
        0x2f2233 -> :sswitch_a4
        0x1cd1c6dd -> :sswitch_99
        0x327f7a8b -> :sswitch_8d
        0x40f5acce -> :sswitch_82
        0x4b6a78f7 -> :sswitch_76
        0x552bd509 -> :sswitch_69
        0x5fa7aa9c -> :sswitch_5d
        0x6f0f04fd -> :sswitch_51
        0x6fae31a8 -> :sswitch_46
        0x70e83ec3 -> :sswitch_3b
        0x72f055a8 -> :sswitch_2e
        0x7bc64a5c -> :sswitch_22
        0x7c0d4adc -> :sswitch_17
    .end sparse-switch

    :pswitch_data_1e4
    .packed-switch 0x0
        :pswitch_185
        :pswitch_180
        :pswitch_17b
        :pswitch_176
        :pswitch_171
        :pswitch_16c
        :pswitch_167
        :pswitch_162
        :pswitch_15d
        :pswitch_158
        :pswitch_153
        :pswitch_14e
        :pswitch_149
        :pswitch_144
        :pswitch_13f
        :pswitch_13a
        :pswitch_135
        :pswitch_130
        :pswitch_12b
        :pswitch_126
        :pswitch_121
        :pswitch_11c
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 99
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 100
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Display manager commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 104
    const-string v1, "  set-brightness BRIGHTNESS"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    const-string v1, "    Sets the current brightness to BRIGHTNESS (a number between 0 and 1)."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    const-string v1, "  reset-brightness-configuration"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    const-string v1, "    Reset the brightness to its default configuration."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    const-string v1, "  ab-logging-enable"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    const-string v1, "    Enable auto-brightness logging."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const-string v1, "  ab-logging-disable"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    const-string v1, "    Disable auto-brightness logging."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    const-string v1, "  dwb-logging-enable"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    const-string v1, "    Enable display white-balance logging."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    const-string v1, "  dwb-logging-disable"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    const-string v1, "    Disable display white-balance logging."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    const-string v1, "  dmd-logging-enable"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    const-string v1, "    Enable display mode director logging."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    const-string v1, "  dmd-logging-disable"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    const-string v1, "    Disable display mode director logging."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    const-string v1, "  dwb-set-cct CCT"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    const-string v1, "    Sets the ambient color temperature override to CCT (use -1 to disable)."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    const-string v1, "  set-user-preferred-display-mode WIDTH HEIGHT REFRESH-RATE DISPLAY_ID (optional)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    const-string v1, "    Sets the user preferred display mode which has fields WIDTH, HEIGHT and REFRESH-RATE. If DISPLAY_ID is passed, the mode change is applied to displaywith id = DISPLAY_ID, else mode change is applied globally."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    const-string v1, "  clear-user-preferred-display-mode DISPLAY_ID (optional)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    const-string v1, "    Clears the user preferred display mode. If DISPLAY_ID is passed, the mode is cleared for  display with id = DISPLAY_ID, else mode is cleared globally."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    const-string v1, "  get-user-preferred-display-mode DISPLAY_ID (optional)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    const-string v1, "    Returns the user preferred display mode or null if no mode is set by user.If DISPLAY_ID is passed, the mode for display with id = DISPLAY_ID is returned, else global display mode is returned."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    const-string v1, "  get-active-display-mode-at-start DISPLAY_ID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    const-string v1, "    Returns the display mode which was found at boot time of display with id = DISPLAY_ID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    const-string v1, "  set-match-content-frame-rate-pref PREFERENCE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    const-string v1, "    Sets the match content frame rate preference as PREFERENCE "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    const-string v1, "  get-match-content-frame-rate-pref"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    const-string v1, "    Returns the match content frame rate preference"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    const-string v1, "  set-user-disabled-hdr-types TYPES..."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    const-string v1, "    Sets the user disabled HDR types as TYPES"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    const-string v1, "  get-user-disabled-hdr-types"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    const-string v1, "    Returns the user disabled HDR types"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    const-string v1, "  get-displays [CATEGORY]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    const-string v1, "    Returns the current displays. Can specify string category among"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    const-string v1, "    DisplayManager.DISPLAY_CATEGORY_*; must use the actual string value."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    const-string v1, "  dock"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    const-string v1, "    Sets brightness to docked + idle screen brightness mode"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    const-string v1, "  undock"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    const-string v1, "    Sets brightness to active (normal) screen brightness mode"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 154
    const-string v1, "  touch-cover-protect-[show|hide]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    const-string v1, "    Show or hide the touch cover protection rect"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    :cond_f3
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 159
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 160
    return-void
.end method
