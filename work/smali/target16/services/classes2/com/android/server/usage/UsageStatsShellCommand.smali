.class public Lcom/android/server/usage/UsageStatsShellCommand;
.super Landroid/os/ShellCommand;
.source "UsageStatsShellCommand.java"


# instance fields
.field public final mService:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsShellCommand;->mService:Lcom/android/server/usage/UsageStatsService;

    return-void
.end method


# virtual methods
.method public final deletePackageData()I
    .registers 4

    .line 77
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsShellCommand;->getUserId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    return v2

    .line 83
    :cond_c
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsShellCommand;->mService:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usage/UsageStatsService;->deletePackageData(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getUserId()I
    .registers 4

    const/4 v0, -0x2

    move v1, v0

    .line 90
    :goto_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 91
    const-string v1, "-u"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_33

    .line 94
    :cond_19
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 92
    :cond_33
    :goto_33
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_3c
    if-ne v1, v0, :cond_43

    .line 99
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    return p0

    :cond_43
    return v1
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 3

    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 38
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string v0, "delete-package-data"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "clear-last-used-timestamps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 44
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 40
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsShellCommand;->runClearLastUsedTimestamps()I

    move-result p0

    return p0

    .line 42
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsShellCommand;->deletePackageData()I

    move-result p0

    return p0
.end method

.method public onHelp()V
    .registers 2

    .line 50
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 51
    const-string v0, "UsageStats service (usagestats) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    const-string v0, "help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 55
    const-string v0, "clear-last-used-timestamps PACKAGE_NAME [-u | --user USER_ID]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    const-string v0, "    Clears the last used timestamps for the given package."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 58
    const-string v0, "delete-package-data PACKAGE_NAME [-u | --user USER_ID]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    const-string v0, "    Deletes all the usage stats for the given package."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final runClearLastUsedTimestamps()I
    .registers 4

    .line 65
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsShellCommand;->getUserId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    return v2

    .line 71
    :cond_c
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsShellCommand;->mService:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usage/UsageStatsService;->clearLastUsedTimestamps(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return p0
.end method
