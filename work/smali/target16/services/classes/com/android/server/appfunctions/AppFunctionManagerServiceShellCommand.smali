.class public Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "AppFunctionManagerServiceShellCommand.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mService:Landroid/app/appfunctions/IAppFunctionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/appfunctions/IAppFunctionManager;)V
    .registers 4

    .line 71
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 72
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/app/appfunctions/IAppFunctionManager;

    iput-object p2, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    return-void
.end method

.method public static getCallingPackage()Ljava/lang/String;
    .registers 2

    .line 672
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_11

    .line 674
    const-string v0, "com.android.shell"

    return-object v0

    .line 675
    :cond_11
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Only allow shell or root"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_19
    const-string/jumbo v0, "root"

    return-object v0
.end method


# virtual methods
.method public final accessCheckFlagsEnabled()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public final clearAdditionalAgents()I
    .registers 2

    .line 512
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->setAdditionalAgents(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public final determineEnabledState(Ljava/lang/String;)I
    .registers 6

    .line 359
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch p0, :sswitch_data_38

    :goto_e
    move p0, v3

    goto :goto_30

    :sswitch_10
    const-string p0, "disable"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_e

    :cond_19
    move p0, v0

    goto :goto_30

    :sswitch_1b
    const-string p0, "default"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_e

    :cond_24
    move p0, v1

    goto :goto_30

    :sswitch_26
    const-string p0, "enable"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto :goto_e

    :cond_2f
    move p0, v2

    :goto_30
    packed-switch p0, :pswitch_data_46

    return v3

    :pswitch_34
    return v0

    :pswitch_35
    return v2

    :pswitch_36
    return v1

    nop

    :sswitch_data_38
    .sparse-switch
        -0x4d6ada7d -> :sswitch_26
        0x5c13d641 -> :sswitch_1b
        0x639e22e8 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_36
        :pswitch_35
        :pswitch_34
    .end packed-switch
.end method

.method public final listValidAgents()I
    .registers 4

    .line 634
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 635
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 638
    :goto_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 639
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 640
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_8

    .line 642
    :cond_1f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 647
    :cond_35
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    invoke-interface {p0, v1}, Landroid/app/appfunctions/IAppFunctionManager;->getValidAgents(I)Ljava/util/List;

    move-result-object p0

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Valid agents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final listValidTargets()I
    .registers 4

    .line 653
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 654
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 657
    :goto_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 658
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 659
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_8

    .line 661
    :cond_1f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 666
    :cond_35
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    invoke-interface {p0, v1}, Landroid/app/appfunctions/IAppFunctionManager;->getValidTargets(I)Ljava/util/List;

    move-result-object p0

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Valid targets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 189
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_8
    const/4 v0, -0x1

    .line 193
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_d8

    goto/16 :goto_ba

    :sswitch_12
    const-string/jumbo v1, "list-valid-targets"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 216
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->accessCheckFlagsEnabled()Z

    move-result p1

    if-nez p1, :cond_22

    return v0

    .line 219
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->listValidTargets()I

    move-result p0

    return p0

    :catch_27
    move-exception p1

    goto/16 :goto_bf

    .line 193
    :sswitch_2a
    const-string/jumbo v1, "set-enabled"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 199
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->runSetAppFunctionEnabled()I

    move-result p0

    return p0

    .line 193
    :sswitch_38
    const-string/jumbo v1, "revoke-app-function-access"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 206
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->accessCheckFlagsEnabled()Z

    move-result p1

    if-nez p1, :cond_48

    return v0

    .line 209
    :cond_48
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->runRevokeAppFunctionAccess()I

    move-result p0

    return p0

    .line 193
    :sswitch_4d
    const-string v1, "clear-additional-allowlisted-agents"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 226
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->accessCheckFlagsEnabled()Z

    move-result p1

    if-nez p1, :cond_5c

    return v0

    .line 229
    :cond_5c
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->clearAdditionalAgents()I

    move-result p0

    return p0

    .line 193
    :sswitch_61
    const-string v1, "execute-app-function"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 197
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->runExecuteAppFunction()I

    move-result p0

    return p0

    .line 193
    :sswitch_6e
    const-string v1, "grant-app-function-access"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 201
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->accessCheckFlagsEnabled()Z

    move-result p1

    if-nez p1, :cond_7d

    return v0

    .line 204
    :cond_7d
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->runGrantAppFunctionAccess()I

    move-result p0

    return p0

    .line 193
    :sswitch_82
    const-string/jumbo v1, "set-additional-allowlisted-agents"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 221
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->accessCheckFlagsEnabled()Z

    move-result p1

    if-nez p1, :cond_92

    return v0

    .line 224
    :cond_92
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->setAdditionalAgents()I

    move-result p0

    return p0

    .line 193
    :sswitch_97
    const-string/jumbo v1, "list-valid-agents"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 211
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->accessCheckFlagsEnabled()Z

    move-result p1

    if-nez p1, :cond_a7

    return v0

    .line 214
    :cond_a7
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->listValidAgents()I

    move-result p0

    return p0

    .line 193
    :sswitch_ac
    const-string/jumbo v1, "list-app-functions"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 195
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->runListAppFunctions()I

    move-result p0

    return p0

    .line 231
    :cond_ba
    :goto_ba
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_be} :catch_27

    return p0

    .line 234
    :goto_bf
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :sswitch_data_d8
    .sparse-switch
        -0x72e55c00 -> :sswitch_ac
        -0x6f03d632 -> :sswitch_97
        -0x5f25d950 -> :sswitch_82
        -0x56edf4e4 -> :sswitch_6e
        -0x4c93faa4 -> :sswitch_61
        0x3b4335b -> :sswitch_4d
        0x21ad7f86 -> :sswitch_38
        0x555ca8d6 -> :sswitch_2a
        0x72162d42 -> :sswitch_12
    .end sparse-switch
.end method

.method public onHelp()V
    .registers 5

    .line 78
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 79
    const-string v1, "AppFunctionManagerService commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    const-string v1, "    Prints this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 83
    const-string v1, "  list-app-functions [--user <USER_ID>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string v1, "    Lists all app functions for a specified user in JSON."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    const-string v1, "    --user <USER_ID> (optional): The user ID to list functions for. Defaults to the current user."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 89
    const-string v1, "  execute-app-function --package <PACKAGE_NAME> --function <FUNCTION_ID> --parameters <PARAMETERS_JSON> [--user <USER_ID>][--timeout-duration <SECONDS>] [--brief-yaml]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string v1, "    Executes an app function for the given package with the provided parameters  and returns the result as a JSON string"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    const-string v1, "    --package <PACKAGE_NAME>: The target package name."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    const-string v2, "    --function <FUNCTION_ID>: The ID of the app function to execute."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string v2, "    --parameters <PARAMETERS_JSON>: JSON string containing the parameters for the function."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    const-string v2, "    --user <USER_ID> (optional): The user ID to execute the function under. Defaults to the current user."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    const-string v2, "    --timeout-duration <SECONDS> (optional): The timeout for the function execution in seconds. Defaults to 30 seconds."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    const-string v2, "    --brief-yaml (optional): Prints a concise yaml output."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 111
    const-string v2, "  set-enabled --package <PACKAGE_NAME> --function <FUNCTION_ID> --state <enable|disable> [--user <USER_ID>]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    const-string v2, "    Enables or disables an app function for the specified package."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    const-string v1, "    --function <FUNCTION_ID>: The ID of the app function."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    const-string v1, "    --state <enable|disable|default>: The desired enabled state."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    const-string v1, "    --user <USER_ID> (optional): The user ID under which to set the function state. Defaults to the current user."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 124
    invoke-virtual {p0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->accessCheckFlagsEnabled()Z

    move-result p0

    if-eqz p0, :cond_ef

    .line 126
    const-string p0, "  grant-app-function-access --agent-package <AGENT_PACKAGE_NAME> --target-package <TARGET_PACKAGE_NAME> [--agent-user <USER_ID>] [--target-user <USER_ID>]"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    const-string p0, "    Grants an agent package access to an app\'s functions."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    const-string p0, "    --agent-package <AGENT_PACKAGE_NAME>: The agent package to grant access."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    const-string p0, "    --target-package <TARGET_PACKAGE_NAME>: The target package."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    const-string v1, "    --agent-user <USER_ID> (optional): The user ID for the agent package. Defaults to the current user."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    const-string v2, "    --target-user <USER_ID> (optional): The user ID for the target package. Defaults to the current user."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 143
    const-string v3, "  revoke-app-function-access --agent-package <AGENT_PACKAGE_NAME> --target-package <TARGET_PACKAGE_NAME> [--agent-user <USER_ID>] [--target-user <USER_ID>]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    const-string v3, "    Revokes an agent package\'s access to an app\'s functions."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    const-string v3, "    --agent-package <AGENT_PACKAGE_NAME>: The agent package to revoke access from."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 161
    const-string p0, "  list-valid-agents [--user <USER_ID>]"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    const-string p0, "    Lists all valid agents."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    const-string p0, "    --user <USER_ID> (optional): The user ID to list valid agents for. Defaults to the current user."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 169
    const-string p0, "  list-valid-targets [--user <USER_ID>]"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    const-string p0, "    Lists all valid targets."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    const-string p0, "    --user <USER_ID> (optional): The user ID to list valid targets for. Defaults to the current user."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 175
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 176
    const-string p0, "  set-additional-allowlisted-agents <PACKAGE_NAME_1> <PACKAGE_NAME_2> ..."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    const-string p0, "    Sets the agents that are allowlisted, in addition to the device allowlist. Value is a space-separated list of package names. Will override any agents set by previous calls to this command."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    const-string p0, "  clear-additional-allowlisted-agents"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    const-string p0, "    Clears any agents set by set-additional-allowlisted-agents"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_ef
    return-void
.end method

.method public final runExecuteAppFunction()I
    .registers 23

    .line 372
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 376
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v4, 0x1e

    const/4 v2, 0x0

    move-object v6, v1

    move-object v7, v6

    move v8, v2

    move-wide v9, v4

    .line 381
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, -0x1

    if-eqz v11, :cond_eb

    .line 382
    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_15c

    :goto_22
    move v14, v13

    goto :goto_65

    :sswitch_24
    const-string v14, "--function"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2d

    goto :goto_22

    :cond_2d
    const/4 v14, 0x5

    goto :goto_65

    :sswitch_2f
    const-string v14, "--user"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_38

    goto :goto_22

    :cond_38
    const/4 v14, 0x4

    goto :goto_65

    :sswitch_3a
    const-string v14, "--brief-yaml"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_43

    goto :goto_22

    :cond_43
    const/4 v14, 0x3

    goto :goto_65

    :sswitch_45
    const-string v14, "--package"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4e

    goto :goto_22

    :cond_4e
    const/4 v14, 0x2

    goto :goto_65

    :sswitch_50
    const-string v14, "--timeout-duration"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_59

    goto :goto_22

    :cond_59
    move v14, v12

    goto :goto_65

    :sswitch_5b
    const-string v14, "--parameters"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_64

    goto :goto_22

    :cond_64
    move v14, v2

    :goto_65
    packed-switch v14, :pswitch_data_176

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v13

    .line 387
    :pswitch_7d
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    goto :goto_10

    .line 394
    :pswitch_82
    :try_start_82
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0
    :try_end_8a
    .catch Ljava/lang/NumberFormatException; {:try_start_82 .. :try_end_8a} :catch_8b

    goto :goto_10

    .line 396
    :catch_8b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid user ID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ". Using current user."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_10

    :pswitch_aa
    move v8, v12

    goto/16 :goto_10

    .line 384
    :pswitch_ad
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_10

    .line 401
    :pswitch_b3
    :try_start_b3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_bb
    .catch Ljava/lang/NumberFormatException; {:try_start_b3 .. :try_end_bb} :catch_bd

    goto/16 :goto_10

    .line 403
    :catch_bd
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid timeout duration: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ". Using default of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "s."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 403
    invoke-virtual {v3, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 390
    :pswitch_e5
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_10

    :cond_eb
    if-nez v1, :cond_f3

    .line 421
    const-string v0, "Error: --package must be specified."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v13

    :cond_f3
    if-nez v6, :cond_fb

    .line 425
    const-string v0, "Error: --function must be specified."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v13

    :cond_fb
    if-nez v7, :cond_103

    .line 429
    const-string v0, "Error: --parameters must be specified."

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v13

    .line 433
    :cond_103
    invoke-static {v7}, Lcom/android/server/appfunctions/AppSearchDataJsonConverter;->convertJsonToGenericDocument(Ljava/lang/String;)Landroid/app/appsearch/GenericDocument;

    move-result-object v4

    .line 435
    new-instance v14, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;

    new-instance v5, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;

    invoke-direct {v5, v1, v6}, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-virtual {v5, v4}, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->setParameters(Landroid/app/appsearch/GenericDocument;)Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;

    move-result-object v1

    .line 439
    invoke-virtual {v1}, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->build()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v15

    .line 440
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v16

    .line 441
    invoke-static {}, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->getCallingPackage()Ljava/lang/String;

    move-result-object v17

    .line 442
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-direct/range {v14 .. v21}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;-><init>(Landroid/app/appfunctions/ExecuteAppFunctionRequest;Landroid/os/UserHandle;Ljava/lang/String;JJ)V

    .line 445
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 446
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 448
    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$2;

    move-object/from16 v1, p0

    move v2, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$2;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;ZLjava/io/PrintWriter;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    .line 488
    iget-object v1, v1, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    invoke-interface {v1, v14, v0}, Landroid/app/appfunctions/IAppFunctionManager;->executeAppFunction(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;Landroid/app/appfunctions/IExecuteAppFunctionCallback;)Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 490
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v9, v10, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_154

    .line 492
    const-string v1, "Timed out"

    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    invoke-interface {v0}, Landroid/os/ICancellationSignal;->cancel()V

    .line 494
    invoke-virtual {v4, v13}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 496
    :cond_154
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 498
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0

    :sswitch_data_15c
    .sparse-switch
        -0x5e3ac076 -> :sswitch_5b
        -0x412839e0 -> :sswitch_50
        0x22819aa6 -> :sswitch_45
        0x3bf5edba -> :sswitch_3a
        0x4f7b216b -> :sswitch_2f
        0x533fd978 -> :sswitch_24
    .end sparse-switch

    :pswitch_data_176
    .packed-switch 0x0
        :pswitch_e5
        :pswitch_b3
        :pswitch_ad
        :pswitch_aa
        :pswitch_82
        :pswitch_7d
    .end packed-switch
.end method

.method public final runGrantAppFunctionAccess()I
    .registers 12

    .line 529
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 532
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 533
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x0

    move v6, v1

    move v8, v2

    move-object v5, v3

    move-object v7, v5

    .line 536
    :goto_11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_87

    .line 537
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_ae

    :goto_23
    move v2, v3

    goto :goto_4f

    :sswitch_25
    const-string v2, "--agent-user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    goto :goto_23

    :cond_2e
    const/4 v2, 0x3

    goto :goto_4f

    :sswitch_30
    const-string v2, "--target-package"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    goto :goto_23

    :cond_39
    const/4 v2, 0x2

    goto :goto_4f

    :sswitch_3b
    const-string v2, "--agent-package"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    goto :goto_23

    :cond_44
    const/4 v2, 0x1

    goto :goto_4f

    :sswitch_46
    const-string v4, "--target-user"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    goto :goto_23

    :cond_4f
    :goto_4f
    packed-switch v2, :pswitch_data_c0

    .line 551
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 545
    :pswitch_67
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    move v6, v1

    goto :goto_11

    .line 542
    :pswitch_71
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_11

    .line 539
    :pswitch_77
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_11

    .line 548
    :pswitch_7d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    move v8, v1

    goto :goto_11

    :cond_87
    if-nez v5, :cond_8f

    .line 557
    const-string p0, "Error: --agent-package must be specified."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_8f
    if-nez v7, :cond_97

    .line 561
    const-string p0, "Error: --target-package must be specified."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 565
    :cond_97
    iget-object v4, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    const/4 v9, 0x6

    const/4 v10, 0x2

    .line 566
    invoke-interface/range {v4 .. v10}, Landroid/app/appfunctions/IAppFunctionManager;->updateAccessFlags(Ljava/lang/String;ILjava/lang/String;III)Z

    move-result p0

    if-nez p0, :cond_a7

    .line 574
    const-string p0, "Error: Failed to grant the app function access."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 577
    :cond_a7
    const-string p0, "Access granted successfully."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    nop

    :sswitch_data_ae
    .sparse-switch
        -0x37bddb19 -> :sswitch_46
        -0x110d5c22 -> :sswitch_3b
        0x21f015aa -> :sswitch_30
        0x3d316333 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_77
        :pswitch_71
        :pswitch_67
    .end packed-switch
.end method

.method public final runListAppFunctions()I
    .registers 10

    .line 240
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 241
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 244
    :goto_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 245
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    const-string v3, "--user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 254
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 248
    :cond_2f
    :try_start_2f
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_37} :catch_38

    goto :goto_8

    .line 250
    :catch_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid user ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Using current user."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 259
    :cond_56
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    .line 260
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v1, 0x1

    .line 263
    :try_start_66
    invoke-static {p0, v1}, Lcom/android/server/appfunctions/AppFunctionDumpHelper;->queryAppFunctionsStateForUser(Landroid/content/Context;Z)Ljava/util/Map;

    move-result-object p0

    .line 265
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 266
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_77
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 267
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 268
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_92
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/appsearch/SearchResult;

    .line 269
    invoke-static {v8}, Lcom/android/server/appfunctions/AppSearchDataJsonConverter;->searchResultToJsonObject(Landroid/app/appsearch/SearchResult;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_92

    :catchall_a6
    move-exception p0

    goto :goto_c1

    .line 271
    :cond_a8
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_77

    :cond_b2
    const/4 p0, 0x2

    .line 273
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_ba
    .catchall {:try_start_66 .. :try_end_ba} :catchall_a6

    .line 275
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 277
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return v2

    .line 275
    :goto_c1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 276
    throw p0
.end method

.method public final runRevokeAppFunctionAccess()I
    .registers 12

    .line 582
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 585
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 586
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x0

    move v6, v1

    move v8, v2

    move-object v5, v3

    move-object v7, v5

    .line 589
    :goto_11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_87

    .line 590
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_ae

    :goto_23
    move v2, v3

    goto :goto_4f

    :sswitch_25
    const-string v2, "--agent-user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    goto :goto_23

    :cond_2e
    const/4 v2, 0x3

    goto :goto_4f

    :sswitch_30
    const-string v2, "--target-package"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    goto :goto_23

    :cond_39
    const/4 v2, 0x2

    goto :goto_4f

    :sswitch_3b
    const-string v2, "--agent-package"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    goto :goto_23

    :cond_44
    const/4 v2, 0x1

    goto :goto_4f

    :sswitch_46
    const-string v4, "--target-user"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    goto :goto_23

    :cond_4f
    :goto_4f
    packed-switch v2, :pswitch_data_c0

    .line 604
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 598
    :pswitch_67
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    move v6, v1

    goto :goto_11

    .line 595
    :pswitch_71
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_11

    .line 592
    :pswitch_77
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_11

    .line 601
    :pswitch_7d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    move v8, v1

    goto :goto_11

    :cond_87
    if-nez v5, :cond_8f

    .line 610
    const-string p0, "Error: --agent-package must be specified."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_8f
    if-nez v7, :cond_97

    .line 614
    const-string p0, "Error: --target-package must be specified."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 617
    :cond_97
    iget-object v4, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    const/4 v9, 0x6

    const/4 v10, 0x4

    .line 618
    invoke-interface/range {v4 .. v10}, Landroid/app/appfunctions/IAppFunctionManager;->updateAccessFlags(Ljava/lang/String;ILjava/lang/String;III)Z

    move-result p0

    if-nez p0, :cond_a7

    .line 626
    const-string p0, "Error: Failed to revoke the app function access."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 629
    :cond_a7
    const-string p0, "Access revoked successfully."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    nop

    :sswitch_data_ae
    .sparse-switch
        -0x37bddb19 -> :sswitch_46
        -0x110d5c22 -> :sswitch_3b
        0x21f015aa -> :sswitch_30
        0x3d316333 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_77
        :pswitch_71
        :pswitch_67
    .end packed-switch
.end method

.method public final runSetAppFunctionEnabled()I
    .registers 12

    .line 283
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 287
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v5, v2

    move-object v6, v5

    move v8, v3

    .line 290
    :goto_d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_a1

    .line 291
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_e0

    :goto_1f
    move v4, v3

    goto :goto_4a

    :sswitch_21
    const-string v4, "--function"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    goto :goto_1f

    :cond_2a
    const/4 v4, 0x3

    goto :goto_4a

    :sswitch_2c
    const-string v4, "--user"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    goto :goto_1f

    :cond_35
    const/4 v4, 0x2

    goto :goto_4a

    :sswitch_37
    const-string v7, "--package"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4a

    goto :goto_1f

    :sswitch_40
    const-string v4, "--state"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    goto :goto_1f

    :cond_49
    move v4, v10

    :cond_4a
    :goto_4a
    packed-switch v4, :pswitch_data_f2

    .line 309
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 296
    :pswitch_62
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_d

    .line 303
    :pswitch_68
    :try_start_68
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_68 .. :try_end_70} :catch_71

    goto :goto_d

    .line 305
    :catch_71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid user ID: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Using current user."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 293
    :pswitch_90
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto/16 :goto_d

    .line 299
    :pswitch_97
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->determineEnabledState(Ljava/lang/String;)I

    move-result v8

    goto/16 :goto_d

    :cond_a1
    if-nez v5, :cond_a9

    .line 315
    const-string p0, "Error: --package must be specified."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_a9
    if-nez v6, :cond_b1

    .line 319
    const-string p0, "Error: --function must be specified."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :cond_b1
    if-ne v8, v3, :cond_b9

    .line 323
    const-string p0, "Error: --state must be specified. The accepted values are: `enable`, `disable`, `default`."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    .line 329
    :cond_b9
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 331
    new-instance v9, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$1;

    invoke-direct {v9, p0, v0, v2}, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand$1;-><init>(Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V

    .line 346
    iget-object v4, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->mService:Landroid/app/appfunctions/IAppFunctionManager;

    .line 347
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 346
    invoke-interface/range {v4 .. v9}, Landroid/app/appfunctions/IAppFunctionManager;->setAppFunctionEnabled(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ILandroid/app/appfunctions/IAppFunctionEnabledCallback;)V

    const-wide/16 v3, 0x5

    .line 349
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-nez p0, :cond_db

    .line 351
    const-string p0, "Timed out"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    :cond_db
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return v10

    nop

    :sswitch_data_e0
    .sparse-switch
        -0x6032bd0f -> :sswitch_40
        0x22819aa6 -> :sswitch_37
        0x4f7b216b -> :sswitch_2c
        0x533fd978 -> :sswitch_21
    .end sparse-switch

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_97
        :pswitch_90
        :pswitch_68
        :pswitch_62
    .end packed-switch
.end method

.method public final setAdditionalAgents()I
    .registers 3

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 503
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    :goto_c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 506
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 508
    :cond_16
    invoke-virtual {p0, v0}, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->setAdditionalAgents(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public final setAdditionalAgents(Ljava/util/List;)I
    .registers 5

    .line 516
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 518
    :try_start_4
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerServiceShellCommand;->mContext:Landroid/content/Context;

    .line 519
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "app_function_additional_agent_allowlist"

    .line 521
    invoke-static {p1}, Lcom/android/server/appfunctions/SignedPackageParser;->serializePackagesOnly(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 518
    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_18

    .line 523
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 524
    throw p0
.end method
