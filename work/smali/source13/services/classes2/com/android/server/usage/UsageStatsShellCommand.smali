.class Lcom/android/server/usage/UsageStatsShellCommand;
.super Landroid/os/ShellCommand;
.source "UsageStatsShellCommand.java"


# instance fields
.field private final mService:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .registers 2
    .param p1, "usageStatsService"    # Lcom/android/server/usage/UsageStatsService;

    .line 29
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsShellCommand;->mService:Lcom/android/server/usage/UsageStatsService;

    .line 31
    return-void
.end method

.method private runClearLastUsedTimestamps()I
    .registers 7

    .line 60
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, -0x2

    .line 64
    .local v1, "userId":I
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    if-eqz v2, :cond_42

    .line 65
    const-string v2, "-u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    const-string v2, "--user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_39

    .line 68
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    const/4 v2, -0x1

    return v2

    .line 66
    :cond_39
    :goto_39
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_5

    .line 72
    :cond_42
    const/4 v2, -0x2

    if-ne v1, v2, :cond_49

    .line 73
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 76
    :cond_49
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsShellCommand;->mService:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/usage/UsageStatsService;->clearLastUsedTimestamps(Ljava/lang/String;I)V

    .line 77
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 35
    if-nez p1, :cond_8

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/usage/UsageStatsShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 38
    :cond_8
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_28

    :cond_10
    goto :goto_1a

    :pswitch_11
    const-string v1, "clear-last-used-timestamps"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x0

    :goto_1a
    packed-switch v0, :pswitch_data_2e

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 40
    :pswitch_22
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsShellCommand;->runClearLastUsedTimestamps()I

    move-result v0

    return v0

    nop

    :pswitch_data_28
    .packed-switch 0x7f4dac76
        :pswitch_11
    .end packed-switch

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_22
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 48
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 49
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "UsageStats service (usagestats) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 50
    const-string v1, "help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 53
    const-string v1, "clear-last-used-timestamps PACKAGE_NAME [-u | --user USER_ID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    const-string v1, "    Clears any existing usage data for the given package."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 56
    return-void
.end method
