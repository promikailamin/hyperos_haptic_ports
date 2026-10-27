.class public Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;
.super Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface$Stub;
.source "DeveloperVerifierController.java"


# instance fields
.field public final mCallback:Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;

.field public final synthetic this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;)V
    .registers 3

    .line 580
    iput-object p1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-direct {p0}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface$Stub;-><init>()V

    .line 581
    iput-object p2, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->mCallback:Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;

    return-void
.end method


# virtual methods
.method public extendTimeoutMillis(IJ)J
    .registers 6

    .line 599
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-static {}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface$Stub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->assertCallerIsCurrentVerifier(I)V

    .line 600
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-static {v0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->-$$Nest$fgetmVerificationStatusTrackers(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 601
    :try_start_10
    iget-object v1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-static {v1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->-$$Nest$fgetmVerificationStatusTrackers(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;)Landroid/util/SparseArray;

    move-result-object v1

    .line 602
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;

    if-eqz v1, :cond_2b

    .line 607
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->mCallback:Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->onTimeoutExtensionRequested()V

    .line 608
    invoke-virtual {v1, p2, p3}, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->extendTimeoutMillis(J)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_29
    move-exception p0

    goto :goto_47

    .line 604
    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Verification session "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist or has finished"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 609
    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_10 .. :try_end_48} :catchall_29

    throw p0
.end method

.method public getTimeoutTimeMillis(I)J
    .registers 5

    .line 585
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-static {}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface$Stub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->assertCallerIsCurrentVerifier(I)V

    .line 586
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-static {v0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->-$$Nest$fgetmVerificationStatusTrackers(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 587
    :try_start_10
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-static {p0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->-$$Nest$fgetmVerificationStatusTrackers(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;)Landroid/util/SparseArray;

    move-result-object p0

    .line 588
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;

    if-eqz p0, :cond_26

    .line 593
    invoke-virtual {p0}, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;->getTimeoutTime()J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_24
    move-exception p0

    goto :goto_42

    .line 590
    :cond_26
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verification session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist or has finished"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 594
    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_10 .. :try_end_43} :catchall_24

    throw p0
.end method

.method public reportVerificationBypassed(II)V
    .registers 5

    .line 669
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-static {}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface$Stub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->assertCallerIsCurrentVerifier(I)V

    .line 671
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-static {v0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->-$$Nest$fgetmVerificationStatusTrackers(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 672
    :try_start_10
    iget-object v1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-static {v1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->-$$Nest$fgetmVerificationStatusTrackers(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;

    if-eqz v1, :cond_4d

    .line 677
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_4b

    if-lez p2, :cond_2c

    .line 682
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->mCallback:Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->onVerificationBypassedReceived(I)V

    .line 684
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-static {p0, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->-$$Nest$mremoveStatusTracker(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;I)V

    return-void

    .line 679
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verification session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reported invalid bypass_reason code "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_4b
    move-exception p0

    goto :goto_69

    .line 674
    :cond_4d
    :try_start_4d
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verification session "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist or has finished"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 677
    :goto_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_4d .. :try_end_6a} :catchall_4b

    throw p0
.end method

.method public reportVerificationComplete(ILandroid/content/pm/verify/developer/DeveloperVerificationStatus;Landroid/os/PersistableBundle;)V
    .registers 6

    .line 653
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-static {}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface$Stub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->assertCallerIsCurrentVerifier(I)V

    .line 655
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-static {v0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->-$$Nest$fgetmVerificationStatusTrackers(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 656
    :try_start_10
    iget-object v1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-static {v1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->-$$Nest$fgetmVerificationStatusTrackers(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;

    if-eqz v1, :cond_2c

    .line 661
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_2a

    .line 662
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->mCallback:Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->onVerificationCompleteReceived(Landroid/content/pm/verify/developer/DeveloperVerificationStatus;Landroid/os/PersistableBundle;)V

    .line 664
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-static {p0, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->-$$Nest$mremoveStatusTracker(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;I)V

    return-void

    :catchall_2a
    move-exception p0

    goto :goto_48

    .line 658
    :cond_2c
    :try_start_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Verification session "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist or has finished"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 661
    :goto_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_2c .. :try_end_49} :catchall_2a

    throw p0
.end method

.method public reportVerificationIncomplete(II)V
    .registers 5

    .line 630
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-static {}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface$Stub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->assertCallerIsCurrentVerifier(I)V

    if-ltz p2, :cond_4f

    const/4 v0, 0x1

    if-gt p2, v0, :cond_4f

    .line 637
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-static {v0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->-$$Nest$fgetmVerificationStatusTrackers(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 638
    :try_start_15
    iget-object v1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-static {v1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->-$$Nest$fgetmVerificationStatusTrackers(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;

    if-eqz v1, :cond_31

    .line 643
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_2f

    .line 644
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->mCallback:Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->onVerificationIncompleteReceived(I)V

    .line 646
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-static {p0, p1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->-$$Nest$mremoveStatusTracker(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;I)V

    return-void

    :catchall_2f
    move-exception p0

    goto :goto_4d

    .line 640
    :cond_31
    :try_start_31
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verification session "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist or has finished"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 643
    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_31 .. :try_end_4e} :catchall_2f

    throw p0

    .line 633
    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verification session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reported invalid incomplete_reason code "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVerificationPolicy(II)Z
    .registers 5

    .line 615
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-static {}, Landroid/content/pm/verify/developer/IDeveloperVerificationSessionInterface$Stub;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->assertCallerIsCurrentVerifier(I)V

    .line 616
    iget-object v0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-static {v0}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->-$$Nest$fgetmVerificationStatusTrackers(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 617
    :try_start_10
    iget-object v1, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->this$0:Lcom/android/server/pm/verify/developer/DeveloperVerifierController;

    invoke-static {v1}, Lcom/android/server/pm/verify/developer/DeveloperVerifierController;->-$$Nest$fgetmVerificationStatusTrackers(Lcom/android/server/pm/verify/developer/DeveloperVerifierController;)Landroid/util/SparseArray;

    move-result-object v1

    .line 618
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/developer/DeveloperVerificationRequestStatusTracker;

    if-eqz v1, :cond_28

    .line 623
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_26

    .line 624
    iget-object p0, p0, Lcom/android/server/pm/verify/developer/DeveloperVerifierController$DeveloperVerificationSessionInterface;->mCallback:Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageInstallerSession$DeveloperVerifierCallback;->onVerificationPolicyOverridden(I)Z

    move-result p0

    return p0

    :catchall_26
    move-exception p0

    goto :goto_44

    .line 620
    :cond_28
    :try_start_28
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verification session "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist or has finished"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 623
    :goto_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_28 .. :try_end_45} :catchall_26

    throw p0
.end method
