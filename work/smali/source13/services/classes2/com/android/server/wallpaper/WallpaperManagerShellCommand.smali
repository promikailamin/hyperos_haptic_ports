.class public Lcom/android/server/wallpaper/WallpaperManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "WallpaperManagerShellCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperManagerShellCommand"


# instance fields
.field private final mService:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 33
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->mService:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 35
    return-void
.end method

.method private getWallpaperDimAmount()I
    .registers 5

    .line 97
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->mService:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDimAmount()F

    move-result v0

    .line 98
    .local v0, "dimAmount":F
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The current wallpaper dim amount is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const/4 v1, 0x0

    return v1
.end method

.method private setDimmingWithUid()I
    .registers 6

    .line 107
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 108
    .local v0, "mockUid":I
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 109
    .local v1, "mockDimAmount":F
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->mService:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperDimAmountForUid(IF)V

    .line 110
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dimming the wallpaper for UID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    const/4 v2, 0x0

    return v2
.end method

.method private setWallpaperDimAmount()I
    .registers 5

    .line 82
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 84
    .local v0, "dimAmount":F
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->mService:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperDimAmount(F)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    .line 87
    goto :goto_16

    .line 85
    :catch_e
    move-exception v1

    .line 86
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WallpaperManagerShellCommand"

    const-string v3, "Can\'t set wallpaper dim amount"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_16
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dimming the wallpaper to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 6
    .param p1, "cmd"    # Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    if-nez p1, :cond_7

    .line 40
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->onHelp()V

    .line 41
    return v0

    .line 43
    :cond_7
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_60

    :cond_10
    goto :goto_43

    :sswitch_11
    const-string v0, "get-dim-amount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    goto :goto_44

    :sswitch_1b
    const-string v0, "help"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x4

    goto :goto_44

    :sswitch_25
    const-string v0, "-h"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x3

    goto :goto_44

    :sswitch_2f
    const-string v2, "dim-with-uid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_44

    :sswitch_38
    const-string/jumbo v0, "set-dim-amount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v3

    goto :goto_44

    :goto_43
    move v0, v1

    :goto_44
    packed-switch v0, :pswitch_data_76

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 52
    :pswitch_4c
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->onHelp()V

    .line 53
    return v3

    .line 49
    :pswitch_50
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->getWallpaperDimAmount()I

    move-result v0

    return v0

    .line 47
    :pswitch_55
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->setDimmingWithUid()I

    move-result v0

    return v0

    .line 45
    :pswitch_5a
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->setWallpaperDimAmount()I

    move-result v0

    return v0

    nop

    :sswitch_data_60
    .sparse-switch
        -0x5725f478 -> :sswitch_38
        -0x11a55192 -> :sswitch_2f
        0x5db -> :sswitch_25
        0x30cf41 -> :sswitch_1b
        0x12749814 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_55
        :pswitch_50
        :pswitch_4c
        :pswitch_4c
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 61
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 62
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Wallpaper manager commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 66
    const-string v1, "  set-dim-amount DIMMING"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    const-string v1, "    Sets the current dimming value to DIMMING (a number between 0 and 1)."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 69
    const-string v1, "  dim-with-uid UID DIMMING"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    const-string v1, "    Sets the wallpaper dim amount to DIMMING as if an app with uid, UID, called it."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 73
    const-string v1, "  get-dim-amount"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    const-string v1, "    Get the current wallpaper dim amount."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    return-void
.end method
