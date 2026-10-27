.class public Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemPackageResetHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/injector/SystemPackageResetHelper;


# direct methods
.method public static synthetic $r8$lambda$Zx70x59PQZk3MrOf_2AnvOmaJzM(Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;->lambda$onReceive$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nQjWM_LpqGA0LL_igYwAYJnsylE(Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;->lambda$onReceive$1(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/injector/SystemPackageResetHelper;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;->this$0:Lcom/android/server/location/injector/SystemPackageResetHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/location/injector/SystemPackageResetHelper;Lcom/android/server/location/injector/SystemPackageResetHelper-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;-><init>(Lcom/android/server/location/injector/SystemPackageResetHelper;)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onReceive$0(Ljava/lang/String;)V
    .registers 2

    .line 126
    iget-object p0, p0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;->this$0:Lcom/android/server/location/injector/SystemPackageResetHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/PackageResetHelper;->notifyPackageReset(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$onReceive$1(Ljava/lang/String;)V
    .registers 2

    .line 137
    iget-object p0, p0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;->this$0:Lcom/android/server/location/injector/SystemPackageResetHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/PackageResetHelper;->notifyPackageReset(Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_b3

    .line 79
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_10

    goto/16 :goto_b3

    .line 84
    :cond_10
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    goto/16 :goto_b3

    .line 89
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_b4

    :goto_24
    move v0, v3

    goto :goto_51

    :sswitch_26
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_24

    :cond_2f
    const/4 v0, 0x3

    goto :goto_51

    :sswitch_31
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_24

    :cond_3a
    const/4 v0, 0x2

    goto :goto_51

    :sswitch_3c
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto :goto_24

    :cond_45
    const/4 v0, 0x1

    goto :goto_51

    :sswitch_47
    const-string v2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_24

    :cond_50
    move v0, v4

    :goto_51
    packed-switch v0, :pswitch_data_c6

    goto :goto_b3

    .line 107
    :pswitch_55
    const-string v0, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b3

    .line 110
    array-length v0, p2

    :goto_5e
    if-ge v4, v0, :cond_b3

    aget-object v2, p2, v4

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 121
    :try_start_68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-wide/16 v2, 0x0

    .line 122
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object p2

    .line 121
    invoke-virtual {p1, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 123
    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez p1, :cond_b3

    .line 125
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v1}, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_86
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_68 .. :try_end_86} :catch_b3

    return-void

    :cond_87
    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    .line 137
    :pswitch_8a
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v1}, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 91
    :pswitch_97
    const-string p1, "android.intent.extra.PACKAGES"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b3

    .line 95
    array-length p2, p1

    :goto_a0
    if-ge v4, p2, :cond_b3

    aget-object v0, p1, v4

    .line 96
    iget-object v1, p0, Lcom/android/server/location/injector/SystemPackageResetHelper$Receiver;->this$0:Lcom/android/server/location/injector/SystemPackageResetHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/injector/PackageResetHelper;->queryResetableForPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b0

    .line 97
    invoke-virtual {p0, v3}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    return-void

    :cond_b0
    add-int/lit8 v4, v4, 0x1

    goto :goto_a0

    :catch_b3
    :cond_b3
    :goto_b3
    return-void

    :sswitch_data_b4
    .sparse-switch
        -0x3ff1ba66 -> :sswitch_47
        -0x2d2ad030 -> :sswitch_3c
        0xa480416 -> :sswitch_31
        0x1f50b9c2 -> :sswitch_26
    .end sparse-switch

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_97
        :pswitch_8a
        :pswitch_55
        :pswitch_8a
    .end packed-switch
.end method
