.class public final Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"


# instance fields
.field public description:Ljava/lang/String;

.field public isInBackground:Z

.field public isInSession:Z

.field public shouldForce:Z

.field public final synthetic this$1:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;

.field public usage:I


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V
    .registers 3

    const/16 v0, 0x41

    .line 2867
    invoke-direct {p0, p1, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;I)V
    .registers 3

    .line 2870
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->this$1:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2857
    iput-boolean p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->shouldForce:Z

    .line 2858
    iput-boolean p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->isInBackground:Z

    .line 2859
    iput-boolean p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->isInSession:Z

    .line 2860
    const-string p1, "Shell command"

    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    .line 2871
    iput p2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->usage:I

    .line 2872
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->populateFields()V

    return-void
.end method


# virtual methods
.method public final populateFields()V
    .registers 5

    .line 2877
    :goto_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->this$1:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;

    invoke-virtual {v0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_88

    .line 2878
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_8a

    goto :goto_4b

    :sswitch_15
    const-string v1, "-u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_4b

    :cond_1e
    const/4 v3, 0x4

    goto :goto_4b

    :sswitch_20
    const-string v1, "-f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_4b

    :cond_29
    const/4 v3, 0x3

    goto :goto_4b

    :sswitch_2b
    const-string v1, "-d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_4b

    :cond_34
    const/4 v3, 0x2

    goto :goto_4b

    :sswitch_36
    const-string v1, "-S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_4b

    :cond_3f
    move v3, v2

    goto :goto_4b

    :sswitch_41
    const-string v1, "-B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto :goto_4b

    :cond_4a
    const/4 v3, 0x0

    :goto_4b
    packed-switch v3, :pswitch_data_a0

    goto :goto_88

    .line 2896
    :pswitch_4f
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->this$1:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2897
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->this$1:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->usage:I

    goto :goto_0

    .line 2880
    :pswitch_61
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->this$1:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2881
    iput-boolean v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->shouldForce:Z

    goto :goto_0

    .line 2892
    :pswitch_69
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->this$1:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2893
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->this$1:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    goto :goto_0

    .line 2884
    :pswitch_77
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->this$1:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2885
    iput-boolean v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->isInSession:Z

    goto :goto_0

    .line 2888
    :pswitch_7f
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->this$1:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2889
    iput-boolean v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->isInBackground:Z

    goto/16 :goto_0

    :cond_88
    :goto_88
    return-void

    nop

    :sswitch_data_8a
    .sparse-switch
        0x5b5 -> :sswitch_41
        0x5c6 -> :sswitch_36
        0x5d7 -> :sswitch_2b
        0x5d9 -> :sswitch_20
        0x5e8 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_77
        :pswitch_69
        :pswitch_61
        :pswitch_4f
    .end packed-switch
.end method
