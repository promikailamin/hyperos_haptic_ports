.class final Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CommonOptions"
.end annotation


# instance fields
.field public background:Z

.field public description:Ljava/lang/String;

.field public force:Z

.field final synthetic this$1:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V
    .registers 7

    .line 1706
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->this$1:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1702
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->force:Z

    .line 1703
    const-string v1, "Shell command"

    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    .line 1704
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->background:Z

    .line 1708
    :goto_e
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "nextArg":Ljava/lang/String;
    if-eqz v1, :cond_57

    .line 1709
    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_58

    :cond_1e
    goto :goto_3c

    :sswitch_1f
    const-string v3, "-f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v1, v0

    goto :goto_3c

    :sswitch_29
    const-string v3, "-d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v1, 0x2

    goto :goto_3c

    :sswitch_33
    const-string v3, "-B"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move v1, v4

    :goto_3c
    packed-switch v1, :pswitch_data_66

    .line 1724
    return-void

    .line 1719
    :pswitch_40
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1720
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    .line 1721
    goto :goto_56

    .line 1715
    :pswitch_4a
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1716
    iput-boolean v4, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->background:Z

    .line 1717
    goto :goto_56

    .line 1711
    :pswitch_50
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1712
    iput-boolean v4, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->force:Z

    .line 1713
    nop

    .line 1724
    :goto_56
    goto :goto_e

    .line 1727
    :cond_57
    return-void

    :sswitch_data_58
    .sparse-switch
        0x5b5 -> :sswitch_33
        0x5d7 -> :sswitch_29
        0x5d9 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4a
        :pswitch_40
    .end packed-switch
.end method
