.class public Lcom/android/server/pdb/PersistentDataBlockService$1$1;
.super Landroid/os/ShellCommand;
.source "PersistentDataBlockService.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;


# direct methods
.method public constructor <init>(Lcom/android/server/pdb/PersistentDataBlockService$1;)V
    .registers 2

    .line 900
    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method public static hashSecretString(Ljava/lang/String;)[B
    .registers 3

    .line 964
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 965
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 967
    const-string v0, "ShellCommand"

    const-string v1, "Can\'t happen"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, 0x20

    .line 968
    new-array p0, p0, [B

    return-object p0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 8

    if-nez p1, :cond_7

    .line 904
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 907
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 908
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_14a

    goto :goto_50

    :sswitch_18
    const-string v1, "auto_deactivate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto :goto_50

    :cond_21
    const/4 v3, 0x4

    goto :goto_50

    :sswitch_23
    const-string/jumbo v1, "status"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_50

    :cond_2d
    const/4 v3, 0x3

    goto :goto_50

    :sswitch_2f
    const-string/jumbo v1, "set_secret"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    goto :goto_50

    :cond_39
    const/4 v3, 0x2

    goto :goto_50

    :sswitch_3b
    const-string v1, "activate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    goto :goto_50

    :cond_44
    move v3, v2

    goto :goto_50

    :sswitch_46
    const-string v1, "deactivate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v3, 0x0

    .line 943
    :goto_50
    const-string v1, "failed"

    const-string/jumbo v4, "succeeded"

    packed-switch v3, :pswitch_data_160

    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 925
    :pswitch_5d
    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    iget-object p1, p1, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {p1}, Lcom/android/server/pdb/PersistentDataBlockService;->automaticallyDeactivateFrpIfPossible()Z

    move-result p1

    .line 926
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Automatic deactivation "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_72

    move-object v1, v4

    .line 927
    :cond_72
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 926
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 928
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmFrpActive(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-static {p0, v0, p1}, Lcom/android/server/pdb/PersistentDataBlockService$1;->-$$Nest$mprintFrpStatus(Lcom/android/server/pdb/PersistentDataBlockService$1;Ljava/io/PrintWriter;Z)I

    move-result p0

    return p0

    .line 909
    :pswitch_8a
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmFrpActive(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-static {p0, v0, p1}, Lcom/android/server/pdb/PersistentDataBlockService$1;->-$$Nest$mprintFrpStatus(Lcom/android/server/pdb/PersistentDataBlockService$1;Ljava/io/PrintWriter;Z)I

    move-result p0

    return p0

    :pswitch_98
    const/16 p1, 0x20

    .line 932
    new-array p1, p1, [B

    .line 933
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 934
    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ac

    .line 935
    invoke-static {v1}, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->hashSecretString(Ljava/lang/String;)[B

    move-result-object p1

    .line 937
    :cond_ac
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting FRP secret to: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    move-result-object v3

    .line 938
    invoke-virtual {v3, p1}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " length: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 937
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 939
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    invoke-virtual {v1, p1}, Lcom/android/server/pdb/PersistentDataBlockService$1;->setFactoryResetProtectionSecret([B)Z

    .line 940
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmFrpActive(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-static {p0, v0, p1}, Lcom/android/server/pdb/PersistentDataBlockService$1;->-$$Nest$mprintFrpStatus(Lcom/android/server/pdb/PersistentDataBlockService$1;Ljava/io/PrintWriter;Z)I

    move-result p0

    return p0

    .line 911
    :pswitch_e4
    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    iget-object p1, p1, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {p1}, Lcom/android/server/pdb/PersistentDataBlockService;->activateFrp()V

    .line 912
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmFrpActive(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-static {p0, v0, p1}, Lcom/android/server/pdb/PersistentDataBlockService$1;->-$$Nest$mprintFrpStatus(Lcom/android/server/pdb/PersistentDataBlockService$1;Ljava/io/PrintWriter;Z)I

    move-result p0

    return p0

    .line 916
    :pswitch_f9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->hashSecretString(Ljava/lang/String;)[B

    move-result-object p1

    .line 917
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempting to deactivate with: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 919
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deactivation "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    iget-object v5, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    iget-object v5, v5, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {v5, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$mdeactivateFrp(Lcom/android/server/pdb/PersistentDataBlockService;[B)Z

    move-result p1

    if-eqz p1, :cond_132

    move-object v1, v4

    :cond_132
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 919
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 921
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService$1$1;->this$1:Lcom/android/server/pdb/PersistentDataBlockService$1;

    iget-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService$1;->this$0:Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-static {p1}, Lcom/android/server/pdb/PersistentDataBlockService;->-$$Nest$fgetmFrpActive(Lcom/android/server/pdb/PersistentDataBlockService;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-static {p0, v0, p1}, Lcom/android/server/pdb/PersistentDataBlockService$1;->-$$Nest$mprintFrpStatus(Lcom/android/server/pdb/PersistentDataBlockService$1;Ljava/io/PrintWriter;Z)I

    move-result p0

    return p0

    :sswitch_data_14a
    .sparse-switch
        -0x77042f8c -> :sswitch_46
        -0x62b42b0d -> :sswitch_3b
        -0x468ec2d3 -> :sswitch_2f
        -0x3532300e -> :sswitch_23
        0x79c03504 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_160
    .packed-switch 0x0
        :pswitch_f9
        :pswitch_e4
        :pswitch_98
        :pswitch_8a
        :pswitch_5d
    .end packed-switch
.end method

.method public onHelp()V
    .registers 2

    .line 949
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 950
    const-string v0, "Commands"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 951
    const-string/jumbo v0, "status: Print the FRP state and associated information."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 952
    const-string v0, "activate:  Put FRP into \"active\" mode."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 953
    const-string v0, "deactivate <secret>:  Deactivate with a hash of \'secret\'."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 954
    const-string v0, "auto_deactivate: Deactivate with the stored secret or the default"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 955
    const-string/jumbo v0, "set_secret <secret>:  Set the stored secret to a hash of `secret`"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
