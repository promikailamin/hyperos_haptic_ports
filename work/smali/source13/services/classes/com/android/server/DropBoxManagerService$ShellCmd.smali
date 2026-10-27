.class Lcom/android/server/DropBoxManagerService$ShellCmd;
.super Landroid/os/ShellCommand;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShellCmd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/DropBoxManagerService;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DropBoxManagerService;Lcom/android/server/DropBoxManagerService$ShellCmd-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/DropBoxManagerService$ShellCmd;-><init>(Lcom/android/server/DropBoxManagerService;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 203
    if-nez p1, :cond_7

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 206
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 208
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    const/4 v2, 0x0

    :try_start_d
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_76

    :cond_14
    goto :goto_3f

    :sswitch_15
    const-string/jumbo v3, "set-rate-limit"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    move v1, v2

    goto :goto_3f

    :sswitch_20
    const-string/jumbo v3, "remove-low-priority"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v1, 0x2

    goto :goto_3f

    :sswitch_2b
    const-string v3, "add-low-priority"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v1, 0x1

    goto :goto_3f

    :sswitch_35
    const-string/jumbo v3, "restore-defaults"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v1, 0x3

    :goto_3f
    packed-switch v1, :pswitch_data_88

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService$ShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    goto :goto_70

    .line 222
    :pswitch_47
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {v1}, Lcom/android/server/DropBoxManagerService;->-$$Nest$mrestoreDefaults(Lcom/android/server/DropBoxManagerService;)V

    .line 223
    goto :goto_6f

    .line 218
    :pswitch_4d
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "removeTag":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {v3, v1}, Lcom/android/server/DropBoxManagerService;->-$$Nest$mremoveLowPriorityTag(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V

    .line 220
    goto :goto_6f

    .line 214
    .end local v1    # "removeTag":Ljava/lang/String;
    :pswitch_57
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "addedTag":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {v3, v1}, Lcom/android/server/DropBoxManagerService;->-$$Nest$maddLowPriorityTag(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V

    .line 216
    goto :goto_6f

    .line 210
    .end local v1    # "addedTag":Ljava/lang/String;
    :pswitch_61
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$ShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 211
    .local v3, "period":J
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$ShellCmd;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {v1, v3, v4}, Lcom/android/server/DropBoxManagerService;->-$$Nest$msetLowPriorityRateLimit(Lcom/android/server/DropBoxManagerService;J)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_6e} :catch_71

    .line 212
    nop

    .line 229
    .end local v3    # "period":J
    :goto_6f
    goto :goto_75

    .line 225
    :goto_70
    return v1

    .line 227
    :catch_71
    move-exception v1

    .line 228
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 230
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_75
    return v2

    :sswitch_data_76
    .sparse-switch
        -0x54335d4f -> :sswitch_35
        -0x1f8bae57 -> :sswitch_2b
        -0x1a85055a -> :sswitch_20
        0x737302d9 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_61
        :pswitch_57
        :pswitch_4d
        :pswitch_47
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 235
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService$ShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 236
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Dropbox manager service commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    const-string v1, "  set-rate-limit PERIOD"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    const-string v1, "    Sets low priority broadcast rate limit period to PERIOD ms"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    const-string v1, "  add-low-priority TAG"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    const-string v1, "    Add TAG to dropbox low priority list"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    const-string v1, "  remove-low-priority TAG"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    const-string v1, "    Remove TAG from dropbox low priority list"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    const-string v1, "  restore-defaults"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    const-string v1, "    restore dropbox settings to defaults"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    return-void
.end method
