.class Lcom/android/server/companion/CompanionDeviceShellCommand;
.super Landroid/os/ShellCommand;
.source "CompanionDeviceShellCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CompanionDevice_ShellCommand"


# instance fields
.field private final mAssociationStore:Lcom/android/server/companion/AssociationStore;

.field private final mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

.field private final mService:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/AssociationStore;Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/companion/CompanionDeviceManagerService;
    .param p2, "associationStore"    # Lcom/android/server/companion/AssociationStore;
    .param p3, "devicePresenceMonitor"    # Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    .line 39
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 41
    iput-object p2, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 42
    iput-object p3, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    .line 43
    return-void
.end method

.method private getNextIntArgRequired()I
    .registers 2

    .line 165
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 11
    .param p1, "cmd"    # Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 50
    .local v0, "out":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_128

    :cond_e
    goto :goto_58

    :sswitch_f
    const-string/jumbo v3, "simulate-device-appeared"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v1, 0x4

    goto :goto_58

    :sswitch_1a
    const-string v3, "associate"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    move v1, v2

    goto :goto_58

    :sswitch_24
    const-string v3, "disassociate"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v1, 0x2

    goto :goto_58

    :sswitch_2e
    const-string/jumbo v3, "list"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    move v1, v4

    goto :goto_58

    :sswitch_39
    const-string/jumbo v3, "simulate-device-disappeared"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v1, 0x5

    goto :goto_58

    :sswitch_44
    const-string/jumbo v3, "remove-inactive-associations"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v1, 0x6

    goto :goto_58

    :sswitch_4f
    const-string v3, "clear-association-memory-cache"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v1, 0x3

    :goto_58
    packed-switch v1, :pswitch_data_146

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_101

    .line 105
    :pswitch_61
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 106
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/companion/CompanionDeviceShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/server/companion/CompanionDeviceShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 105
    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 108
    goto/16 :goto_100

    .line 96
    :pswitch_70
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v1

    .line 97
    .local v1, "associationId":I
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    invoke-virtual {v3, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->simulateDeviceDisappeared(I)V

    .line 98
    goto/16 :goto_100

    .line 91
    .end local v1    # "associationId":I
    :pswitch_7b
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v1

    .line 92
    .restart local v1    # "associationId":I
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceMonitor:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    invoke-virtual {v3, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->simulateDeviceAppeared(I)V

    .line 93
    goto/16 :goto_100

    .line 85
    .end local v1    # "associationId":I
    :pswitch_86
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->persistState()V

    .line 86
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->loadAssociationsFromDisk()V

    .line 88
    goto :goto_100

    .line 73
    :pswitch_91
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v1

    .line 74
    .local v1, "userId":I
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "address":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 77
    invoke-virtual {v6, v1, v3, v5}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAssociationWithCallerChecks(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    move-result-object v6

    .line 78
    .local v6, "association":Landroid/companion/AssociationInfo;
    if-eqz v6, :cond_ae

    .line 79
    iget-object v7, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/companion/CompanionDeviceManagerService;->disassociateInternal(I)V

    .line 82
    .end local v1    # "userId":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "association":Landroid/companion/AssociationInfo;
    :cond_ae
    goto :goto_100

    .line 65
    :pswitch_af
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v1

    .line 66
    .restart local v1    # "userId":I
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 67
    .restart local v3    # "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    .line 68
    .restart local v5    # "address":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v5, v3, v7}, Lcom/android/server/companion/CompanionDeviceManagerService;->legacyCreateAssociation(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .end local v1    # "userId":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "address":Ljava/lang/String;
    goto :goto_100

    .line 52
    :pswitch_c2
    invoke-direct {p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    move-result v1

    .line 53
    .restart local v1    # "userId":I
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 54
    invoke-interface {v3, v1}, Lcom/android/server/companion/AssociationStore;->getAssociationsForUser(I)Ljava/util/List;

    move-result-object v3

    .line 55
    .local v3, "associationsForUser":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ff

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/companion/AssociationInfo;

    .line 58
    .restart local v6    # "association":Landroid/companion/AssociationInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 59
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 58
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_fe
    .catchall {:try_start_6 .. :try_end_fe} :catchall_102

    .line 60
    .end local v6    # "association":Landroid/companion/AssociationInfo;
    goto :goto_d0

    .line 62
    .end local v1    # "userId":I
    .end local v3    # "associationsForUser":Ljava/util/List;, "Ljava/util/List<Landroid/companion/AssociationInfo;>;"
    :cond_ff
    nop

    .line 113
    :goto_100
    return v4

    .line 111
    :goto_101
    return v1

    .line 114
    :catchall_102
    move-exception v1

    .line 115
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error running a command: $ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CompanionDevice_ShellCommand"

    invoke-static {v4, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    return v2

    nop

    :sswitch_data_128
    .sparse-switch
        -0x7d780efe -> :sswitch_4f
        -0x6e9ef255 -> :sswitch_44
        -0xb6faf2c -> :sswitch_39
        0x32b09e -> :sswitch_2e
        0x2ebfca50 -> :sswitch_24
        0x5e900f1e -> :sswitch_1a
        0x774e28e2 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_c2
        :pswitch_af
        :pswitch_91
        :pswitch_86
        :pswitch_7b
        :pswitch_70
        :pswitch_61
    .end packed-switch
.end method

.method public onHelp()V
    .registers 4

    .line 123
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 124
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Companion Device Manager (companiondevice) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    const-string v1, "      Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    const-string v1, "  list USER_ID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    const-string v1, "      List all Associations for a user."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    const-string v1, "  associate USER_ID PACKAGE MAC_ADDRESS"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    const-string v1, "      Create a new Association."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    const-string v1, "  disassociate USER_ID PACKAGE MAC_ADDRESS"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    const-string v1, "      Remove an existing Association."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    const-string v1, "  clear-association-memory-cache"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    const-string v1, "      Clear the in-memory association cache and reload all association "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    const-string v1, "      information from persistent storage. USE FOR DEBUGGING PURPOSES ONLY."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    const-string v1, "      USE FOR DEBUGGING AND/OR TESTING PURPOSES ONLY."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    const-string v2, "  simulate-device-appeared ASSOCIATION_ID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    const-string v2, "      Make CDM act as if the given companion device has appeared."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    const-string v2, "      I.e. bind the associated companion application\'s"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    const-string v2, "      CompanionDeviceService(s) and trigger onDeviceAppeared() callback."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    const-string v2, "      The CDM will consider the devices as present for 60 seconds and then"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    const-string v2, "      will act as if device disappeared, unless \'simulate-device-disappeared\'"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    const-string v2, "      or \'simulate-device-appeared\' is called again before 60 seconds run out."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    const-string v2, "  simulate-device-disappeared ASSOCIATION_ID"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    const-string v2, "      Make CDM act as if the given companion device has disappeared."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    const-string v2, "      I.e. unbind the associated companion application\'s"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    const-string v2, "      CompanionDeviceService(s) and trigger onDeviceDisappeared() callback."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    const-string v2, "      NOTE: This will only have effect if \'simulate-device-appeared\' was"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    const-string v2, "      invoked for the same device (same ASSOCIATION_ID) no longer than"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    const-string v2, "      60 seconds ago."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    const-string v2, "  remove-inactive-associations"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    const-string v2, "      Remove self-managed associations that have not been active "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    const-string v2, "      for a long time (90 days or as configured via "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    const-string v2, "      \"debug.cdm.cdmservice.cleanup_time_window\" system property). "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    return-void
.end method
