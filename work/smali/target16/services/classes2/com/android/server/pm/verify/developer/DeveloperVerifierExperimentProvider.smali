.class public Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;
.super Ljava/lang/Object;
.source "DeveloperVerifierExperimentProvider.java"


# static fields
.field public static final EXPERIMENT_TIMEOUT_MILLIS:J


# instance fields
.field public final mExperiments:Landroid/util/ArrayMap;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$yPR-4qTuFVkkB7eyAIkQ0vXmGQE(Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->lambda$addExperiment$0(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0xa

    .line 38
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->EXPERIMENT_TIMEOUT_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->mExperiments:Landroid/util/ArrayMap;

    .line 42
    iput-object p1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public addExperiment(Ljava/lang/String;ILjava/util/List;)V
    .registers 10

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_21

    .line 53
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1e

    const/4 v5, 0x7

    if-gt v4, v5, :cond_1e

    .line 56
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 59
    :cond_21
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_28

    return-void

    .line 62
    :cond_28
    iget-object p3, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->mExperiments:Landroid/util/ArrayMap;

    monitor-enter p3

    .line 63
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->mExperiments:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider$ExperimentConfiguration;

    invoke-direct {v2, p2, v0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider$ExperimentConfiguration;-><init>(ILjava/util/List;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    monitor-exit p3
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_4c

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->getExperimentToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 68
    iget-object p3, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3, p2}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    .line 70
    iget-object p3, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;Ljava/lang/String;)V

    sget-wide p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->EXPERIMENT_TIMEOUT_MILLIS:J

    invoke-virtual {p3, v0, p2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void

    :catchall_4c
    move-exception p0

    .line 65
    :try_start_4d
    monitor-exit p3
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public clearExperiment(Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_32

    .line 82
    iget-object p1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->mExperiments:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 83
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->mExperiments:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 84
    :try_start_b
    iget-object v1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->mExperiments:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 85
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_2f

    const/4 v0, 0x0

    .line 87
    :goto_12
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 88
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    iget-object v2, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->getExperimentToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_2e
    return-void

    :catchall_2f
    move-exception p0

    .line 85
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p0

    .line 92
    :cond_32
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->mExperiments:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 93
    :try_start_35
    iget-object v1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->mExperiments:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_45

    .line 96
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->getExperimentToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndEqualMessages(Ljava/lang/Object;)V

    return-void

    :catchall_45
    move-exception p0

    .line 94
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public final getExperimentToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addExperiment:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasExperiments(Ljava/lang/String;)Z
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->mExperiments:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 108
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->mExperiments:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 109
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final synthetic lambda$addExperiment$0(Ljava/lang/String;)V
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->mExperiments:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 72
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->mExperiments:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public runNextExperiment(Ljava/lang/String;Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;)Z
    .registers 8

    .line 119
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->mExperiments:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 120
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->mExperiments:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider$ExperimentConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_13

    .line 122
    monitor-exit v0

    return v2

    :catchall_10
    move-exception p0

    goto/16 :goto_8c

    .line 124
    :cond_13
    iget-object v3, v1, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider$ExperimentConfiguration;->mStatus:Ljava/util/List;

    .line 125
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 126
    monitor-exit v0

    return v2

    .line 128
    :cond_1d
    iget v1, v1, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider$ExperimentConfiguration;->mVerificationPolicy:I

    .line 129
    invoke-interface {v3}, Ljava/util/List;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 130
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_10

    .line 132
    invoke-virtual {p2, v1}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->onVerificationPolicyOverridden(I)Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch v3, :pswitch_data_8e

    goto :goto_6a

    .line 165
    :pswitch_33
    invoke-virtual {p2}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->onConnectionInfeasible()V

    :goto_36
    move v2, v1

    goto :goto_6a

    .line 161
    :pswitch_38
    invoke-virtual {p2}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->onConnectionFailed()V

    goto :goto_36

    .line 157
    :pswitch_3c
    invoke-virtual {p2}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->onTimeout()V

    goto :goto_36

    .line 152
    :pswitch_40
    invoke-virtual {p2, v1}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->onVerificationIncompleteReceived(I)V

    goto :goto_36

    .line 147
    :pswitch_44
    invoke-virtual {p2, v2}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->onVerificationIncompleteReceived(I)V

    goto :goto_36

    .line 142
    :pswitch_48
    new-instance v3, Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;

    invoke-direct {v3}, Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;-><init>()V

    .line 143
    invoke-virtual {v3, v2}, Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;->setVerified(Z)Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;->build()Landroid/content/pm/verify/developer/DeveloperVerificationStatus;

    move-result-object v2

    .line 142
    invoke-virtual {p2, v2, v0}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->onVerificationCompleteReceived(Landroid/content/pm/verify/developer/DeveloperVerificationStatus;Landroid/os/PersistableBundle;)V

    goto :goto_36

    .line 137
    :pswitch_59
    new-instance v2, Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;

    invoke-direct {v2}, Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;-><init>()V

    .line 138
    invoke-virtual {v2, v1}, Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;->setVerified(Z)Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/verify/developer/DeveloperVerificationStatus$Builder;->build()Landroid/content/pm/verify/developer/DeveloperVerificationStatus;

    move-result-object v2

    .line 137
    invoke-virtual {p2, v2, v0}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->onVerificationCompleteReceived(Landroid/content/pm/verify/developer/DeveloperVerificationStatus;Landroid/os/PersistableBundle;)V

    goto :goto_36

    .line 172
    :goto_6a
    iget-object p2, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->mExperiments:Landroid/util/ArrayMap;

    monitor-enter p2

    .line 173
    :try_start_6d
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->mExperiments:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider$ExperimentConfiguration;

    if-nez v0, :cond_7b

    .line 175
    monitor-exit p2

    return v2

    :catchall_79
    move-exception p0

    goto :goto_8a

    .line 177
    :cond_7b
    iget-object v0, v0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider$ExperimentConfiguration;->mStatus:Ljava/util/List;

    .line 178
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 179
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierExperimentProvider;->mExperiments:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_88
    monitor-exit p2

    return v2

    :goto_8a
    monitor-exit p2
    :try_end_8b
    .catchall {:try_start_6d .. :try_end_8b} :catchall_79

    throw p0

    .line 130
    :goto_8c
    :try_start_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_10

    throw p0

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_59
        :pswitch_48
        :pswitch_44
        :pswitch_40
        :pswitch_3c
        :pswitch_38
        :pswitch_33
    .end packed-switch
.end method
